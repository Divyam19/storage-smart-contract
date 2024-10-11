// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage{

    // Favourite number gets initialized to 0 if no value is given
    uint256 myFavouriteNumber; // 0

    // uint256[] listOfFavouriteNumbers;
    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listOfPeople;

    //Chelsea -> 232
    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
    }

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favouriteNumber) public{
        listOfPeople.push(Person(_favouriteNumber,_name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavouriteNumber;
    }
}
