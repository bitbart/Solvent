contract HTLC {
    int immutable timeout
    address immutable owner
    address immutable verifier

    int deposit
    int state // 0 = INIT, 1 = COMMITTED, 2 = END
    hash hashlock

    constructor(int t, address r) {
        timeout = t;
        owner = msg.sender;
        verifier = r
    }

    function commit(hash h) payable {
        require (msg.sender==owner);
        require (msg.value >= 1);
        require (state==0); // INIT
        hashlock = h;
        deposit = msg.value;
        state = 1 // COMMITTED
    }

    function reveal(secret s) {
        require (state==1); // COMMITTED
        if (hashlock == sha256(s)) {
            owner.transfer(balance)
        };
        state = 2 // END
    }

    function timeout() {
        require(block.number > timeout);
        verifier.transfer(balance);
        state = 2 // END
    }   
}

// the owner can withdraw the deposit before the deadline (by revealing the secret)
property  owner_wd_notowner_nonliquid { 
    Forall xa
    [
        state==1 && block.number <= timeout
        ->
        Exists tx [1, owner]
        [
            <tx>balance[xa] >= balance[xa] + balance
        ]
    ]
}

// the verifier can withdraw the deposit after the deadline
