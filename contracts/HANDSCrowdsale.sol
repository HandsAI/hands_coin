pragma solidity 0.4.24;


import "openzeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "./HANDSToken.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract HANDSCrowdsale is Crowdsale, TimedCrowdsale, CappedCrowdsale, MintedCrowdsale{
  constructor(
      uint256 _rate       , address _wallet,
      ERC20 _token        ,
      uint256 _openingTime, uint256 _closingTime,
      uint256 _cap
    )
    Crowdsale(_rate, _wallet, _token)
    TimedCrowdsale(_openingTime, _closingTime)
    CappedCrowdsale(_cap)
    public
  {
  }

}
