// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract StructExample {
    struct Person {
        string name;
        uint age;
    }

    mapping(address => Person) public mappingPeople;

    event PersonAdded(address indexed userAddress);

    function addPerson(address  _userAddress ,string memory _name, uint _age ) public {
        emit PersonAdded(_userAddress);
        mappingPeople[_userAddress] = Person(_name, _age);
    }

}
