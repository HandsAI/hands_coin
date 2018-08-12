const HANDSToken = artifacts.require("./HANDSToken.sol");
const HANDSCrowdsale = artifacts.require("./HANDSCrowdsale.sol");

const duration = {
  seconds: function (val) { return val; },
  minutes: function (val) { return val * this.seconds(60); },
  hours: function (val) { return val * this.minutes(60); },
  days: function (val) { return val * this.hours(24); },
  weeks: function (val) { return val * this.days(7); },
  years: function (val) { return val * this.days(365); },
};
module.exports = async function(deployer, network, accounts) {
  //crowdsale vars
  const rate = 50000; // 1 eth = 50000 HANDS
  const wallet = accounts[0];
  const timeNow = Math.floor(Date.now() / 1000);
  const openingTime = timeNow  + duration.seconds(30);
  const closingTime = timeNow + duration.years(1);
  const cap = web3.toWei(60000)
  //end
  console.log(web3.toWei(100));
  await deployer.deploy(HANDSToken, "Hands Coin", "HANDS", 18);
  const deployedToken = await HANDSToken.deployed()
  console.log("----Deployed Token 0----")
  console.log(deployedToken.address)
  console.log("----Deployed Token 1----")


  console.log("----Deployed Crowdsale part 0----")
  await deployer.deploy(HANDSCrowdsale,
    rate, wallet,
    deployedToken.address ,
    openingTime, closingTime, cap
  );
  console.log("----Deployed Crowdsale part 1----")
  const deployedCrowdsale = await HANDSCrowdsale.deployed()
  console.log("----Deployed Crowdsale----")
  console.log(deployedCrowdsale.address)
  console.log("----Deployed Crowdsale----")
  await deployedToken.transferOwnership(deployedCrowdsale.address)
  console.log("contracts Deployed \n", deployedCrowdsale.address, deployedToken.address)



};
