pragma solidity ^0.4.23;

contract RestaurantRegistry {

  struct Restaurant {

    string name;
    uint16 key;
    bool authorized;

  }

  address owner;
  address authorizer;
  uint8 public numRestaurants;
  mapping (address => Restaurant) public restaurant;

  constructor() {
    owner = msg.sender;
    authorizer = msg.sender;
  }

  function addRestaurant(string _name, uint16 _key) public {
    numRestaurants++;
    restaurant[msg.sender] = Restaurant(name, key, false);
  }

  function editName(string _name) public {
    restaurant[msg.sender].name = _name;
    restaurant[msg.sender].authorized = false;
  }

  function authorizeRestaurant(address _rest) public {
    require(msg.sender == authorizer);
    restaurant[_rest].authorized = true;
  }

  function disableRestaurant(address _rest) public {
    require(msg.sender == authorizer);
    restaurant[_rest].authorized = false;
  }

  function transferAuth(address _auth) public {
    require(msg.sender == owner);
    authorizer = _auth;
  }

}
