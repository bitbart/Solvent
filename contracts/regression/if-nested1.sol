contract IfNested1 {
  int x

  constructor() payable {
    require(msg.value>0);
    x = 0
  }

  function pay(n) {
    if (n>5) {
        x = x+1 
    } else {
        x = x + 0;
        if (n<5) {
            skip
        }
        else {
            require(x>=1);
            sender!1
        }
    }
  }
}

// not liquid
property liq {
    Forall xa
    [
      st.balance>0
      ->
      Exists tx [2, xa]
      [
        ((app_tx_st.balance[xa] > st.balance[xa] && app_tx_st.x >= 1))
      ]
    ]
}