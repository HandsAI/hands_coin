pragma solidity ^0.4.21;

import '../../contracts/BurnableToken.sol';

contract BurnableTokenMock is BurnableToken {

  function BurnableTokenMock(address initialAccount, uint initialBalance) {
    balances[initialAccount] = initialBalance;
    totalSupply = initialBalance;
  }

}
