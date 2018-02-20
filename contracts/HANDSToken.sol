pragma solidity ^0.4.21;

import "zeppelin-solidity/contracts/token/PausableToken.sol";
import "zeppelin-solidity/contracts/token/MintableToken.sol";
import "./BurnableToken.sol";

contract HANDSToken is BurnableToken, PausableToken, MintableToken {

    string public constant symbol = "HANDS";

    string public constant name = "Hands Coin";

    uint8 public constant decimals = 18;

    function burn(uint256 _value) whenNotPaused public {
        super.burn(_value);
    }
}
