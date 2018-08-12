pragma solidity 0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/PausableToken.sol";
import "openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol";
import "openzeppelin-solidity/contracts/token/ERC20/BurnableToken.sol";
import "openzeppelin-solidity/contracts/token/ERC20/DetailedERC20.sol";

contract HANDSToken is PausableToken, MintableToken, BurnableToken, DetailedERC20 {

    constructor( 
        string _name, string _symbol,
        uint8 _decimals
      )
      DetailedERC20(_symbol, _name, _decimals)
      public
    {
    }
    function burn(uint256 _value) whenNotPaused public {
        super.burn(_value);
    }

}
