var BurgerToken = artifacts.require("BurgerToken");

module.exports = function(deployer) {
  deployer.deploy(BurgerToken, 1000000000, 'BurgerToken', 'BUR');
};
