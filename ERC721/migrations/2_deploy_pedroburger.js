var PedroBurger = artifacts.require("SpecialBurgerToken");

module.exports = function(deployer) {
  deployer.deploy(PedroBurger, '0x14ae8100Ea85a11bbb36578f83AB1b5C1cFDd61c', 'PedroBurger', 'A delicious 1/2 lb burger topped iwth melted cheddar and swiss cheeses, caramelized onions and avocado. Made by Pedro.');
};
