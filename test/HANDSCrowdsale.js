const HANDSCrowdsale = artifacts.require('./HANDSCrowdsale.sol')
const HANDSToken = artifacts.require('./HANDSToken.sol')
const blockLimit = 7000000;
it('should deploy my system', async function(){
  const system = await SystemInit.new({gas: blockLimit});
  const systemPart = await SystemPart.new(system.address, {gas: blockLimit});
});
