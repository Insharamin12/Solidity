// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    //initialized Favourite number
    uint256 public myFavoriteNumber; //0 (state variable)

    //created custom variable using struct
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    //dynamic array
    Person[] public listOfPeople;

    mapping(string => uint) public nameToFavoriteNumber;

    //Person public insha = Person({favoriteNumber: 7, name: "Insha"});

    //Update the state of transaction
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    //Retrieving the value
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    //Adding and updating person in the array
    function addPerson(string memory _name, uint256 _favoriteNumber) public payable {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}