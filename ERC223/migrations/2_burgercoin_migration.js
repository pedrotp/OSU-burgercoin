var BurgerToken = artifacts.require("BurgerToken");

module.exports = function(deployer) {
  deployer.deploy(BurgerToken);
};
