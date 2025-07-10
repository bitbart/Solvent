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

  function unfreeze() {
    require (msg.sender == owner);
    frozen = false
  }

  function pay(int v) {
    require (!frozen);
    msg.sender.transfer(v)
  }
}

property anyone_can_pay_nonliquid {
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

property anyone_can_pay_nonfrozen_liquid {
    Forall xa
    [
      !st.frozen
      ->
      Exists tx [1, xa]
      [
        <tx>balance[xa] == balance[xa] + balance
      ]
    ]
}


property owner_can_pay_nonliquid {
    Forall xa
    [
      true
      ->
      Exists tx [1, owner]
      [
        <tx>balance[owner] == balance[owner] + balance
      ]
    ]
}


property owner_can_pay_2_liquid {
    Forall xa
    [
      true
      ->
      Exists tx [2, owner]
      [
        <tx>balance[owner] == balance[owner] + balance
      ]
    ]
}
