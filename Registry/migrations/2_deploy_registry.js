var Registry = artifacts.require("RestaurantRegistry");

module.exports = function(deployer) {
  deployer.deploy(Registry);
}
