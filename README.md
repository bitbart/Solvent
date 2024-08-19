# Solvent: liquidity verification of smart contracts

Solvent is a tool to formally verify liquidity properties of Solidity smart contracts. 

Liquidity expresses the ideal behaviour of contracts in terms of the exchange of crypto-assets: users want to be guaranteed that, whenever certain states are reached, they can always perform some actions that lead to a desirable asset transfer. While several real-world attacks to smart contracts exploited liquidity vulnerabilities, detecting such vulnerabilities is beyond the reach of current verification tools for Solidity. 

As a toy example, consider the following contract:
```solidity
contract Freezable {
  address immutable owner;
  bool frozen;

  constructor () payable {
    owner = msg.sender
  }
  
  function freeze() {
    require (msg.sender == owner);
    frozen = true
  }

  function pay(int v) {
    require (!frozen);
    msg.sender.transfer(v)
  }
}
```
Note that the contract allows the owner to set the `frozen` flag, making the funds within the contract actually stuck. 

We can detect this undesirable behaviour by querying Solvent with the following property:
```solidity
property liquidity1_nonliquid {
    Forall xa
    [
      true
      ->
      Exists tx [1, xa]
      [
        <tx>balance[xa] == balance[xa] + balance
      ]
    ]
}
```
Literally, this query asks whether any user `xa` can fire a transaction `tx` (composed up to 1 method call) whose effect is to increase the ETH balance of `xa` by the whole contract balance.

Solvent answers negatively to this query, by finding an execution trace that violates the property:
```python
Contract: freezable_liquidity1_nonliquid.sol

PROPERTY:  out/smt2/liquidity1_nonliquid
Passed	 - 	NOT LIQUID (counterexample found in 2 steps)

Time: 0.6299567222595215 seconds
```

The violating trace provided as a counterexample is made of two transactions.
The first transaction is the invocation of the contract constructor (setting the owner to the value 2).
The second transaction is the invocation of the `freeze` method by the owner.
In the state resulting from the execution of these transactions, it is not true that any user can fire a transaction whose effect is to withdraw the whole contract balance.
```python
STATE 0
	balance = 1
	user_balance[0] = 2
	user_balance[1] = 2
	user_balance[2] = 1

TRANSACTION 0 => 1
	msg.sender = 2
	msg.value = 1

STATE 1
	balance = 2
	block.number = 0
	err = false
	frozen = false
	owner = 2
	user_balance[0] = 2
	user_balance[1] = 2
	user_balance[2] = 1

TRANSACTION 1 => 2
	f = freeze
	msg.sender = 2
	msg.value = 0

STATE 2
	balance = 2
	block.number = 0
	err = false
	frozen = true
	owner = 2
	user_balance[0] = 2
	user_balance[1] = 2
	user_balance[2] = 1
```

Details on Solvent and on the underlying verification technique are in the following research paper:
- M. Bartoletti, A. Ferrando, E. Lipparini, V. Malvone: [Solvent: liquidity verification of smart contracts](https://arxiv.org/abs/2404.17864). iFM, 2024 
 
## Structure

The data in this repository is structured as follows:

- Subdirectory  [src](src) contains the source code of the tool;
- Subdirectory  [contracts](contracts) contains the benchmark of smart contracts and related liquidity properties that we used to evaluate the effectiveness of Solvent in our paper;
- Subdirectory  [results](results) contains the results of the experiments (they are discussed in the iFM paper).

## Getting Started 

### From the docker image

Download the [docker image](https://zenodo.org/records/13321024) from Zenodo. Then, load it from the .tar archive (docker may require sudo root privileges):
```
docker load < solvent.tar
```
Upon loading the image, run the container with:
```
docker run -v `pwd`/output:/tool/output --rm -it solvent
```
The command above starts the docker container and places you in a bash environment, where you can inspect the source code or run the experiments. -v option will mount output folder in your current directory to the corresponding folder within the container where the evaluation results will be stored. This will allow you to view the generated output even after the container has stopped running. --rm is an optional flag that creates a disposable container that will be deleted upon exit.
At this point, you can run the experiments as explained below.

You can exit the container by typing `exit`. Output files generated by the evaluation script (logs, tables, plots, etc.) remain available in $PWD/output. Upon finishing your review, you can remove the image from the Docker environment using:
```
docker rmi solvent
```

### From github

Solvent has the following depencies:
- [Python 3](https://www.python.org/)
- [Z3](https://github.com/Z3Prover/z3)
- [cvc5](https://cvc5.github.io/) 
- [pip](https://pypi.org/project/pip/)

To install them, run:
```bash
pip3 install -r requirements.txt
```

To check that everything is ok, clone the repository and run the regression tests:
```bash
python3 evaluate.py --solver cvc5 --only_regression --Timeout 5
```

## Reproducing the experiments

To run all the experiments (should take up to 8 hours), use:
```bash
python3 evaluate.py --solver z3 
```
This runs all the experiments using z3 as a backend. If you want instead to use cvc5, run:
```bash
python3 evaluate.py --solver cvc5 
```
If finished successfully, the evaluation script should print:
```
All experiments were successful.
```
To compare your results with those in the article, redirect the output of `evaluate.sh`. For instance:
```
python3 evaluate.py --solver z3 > z3.out
```

Then, to compare your results with those in the paper, run:
```bash
git diff --no-index --word-diff results/z3.out z3.out
```
Note that your results will be different from those in the repository, because of different timeouts (400s in the docker, 1000s in the paper) and different experimental setups. In particular:
1. *[always]* computation times will be different (lines beginning with `Time`)
2. *[very often]* experiments resulting in `LIQUID (up to N)` will have a different `N`
3. *[hardly ever]* your experiments resulting in `LIQUID (up to N)` may be tagged as `NOT LIQUID (counterexample found in N+1 steps)` in the repository. This is possible because in the paper we gave the SMT solver more computation time. 
4. *[hardly ever]* your experiments resulting in `Timeout` may be tagged as `LIQUID` or `NOT LIQUID` in the repository. See the previous item.

To check that your results are compatible with those in the repository, you should compare that the outcomes `LIQUID` / `NOT LIQUID` are *almost always* preserved. 

## Verifying your own contracts

To use Solvent on your own contract, open a terminal and run the following:
```bash
python3 solvent.py <file.sol> <number of transactions> <solver> [-t timeout]
```
where:
- `file.sol` is the smart contract
- `number of transactions` is the maximum number of transactions to consider in the bounded model checking problem
- `solver` is the solver to use (eg., z3 or cvc5)
- `timeout` (optional) is the maximum number of seconds the SMT solver can take to complete the verification


## Extending Solvent

To extend the Solidity fragment supported by Solvent, install [antlr4 (version 4.7.2)](https://www.antlr.org/).
Once this is done, run the following to compile the extended grammar:
```bash
antlr4 -Dlanguage=Python3 -visitor TxScript.g4 
```
