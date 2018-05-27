pragma solidity ^0.4.23;

contract RestaurantRegistry {

  struct Restaurant {

    address owner;
    string name;
    string location;
    string website;

  }

  uint8 public numRestaurants;
  mapping (address => Restaurant) restaurants;

  function addRestaurant(address _owner, string _name, string _location, string _website) public {
    restaurantID = numRestaurants++;
    restaurants[restaurantID] = Restaurant(_owner, _name, _location, _website);
  }

  function getAllRestaurants() public {
    for (uint8 i = 0; ) // TO DO FIGURE OUT A WAY TO RETURN ALL RESTAURANTS
  }

}
