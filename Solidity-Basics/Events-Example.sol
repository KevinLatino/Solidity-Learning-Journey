// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EventsExample {
    string public name;

    string public lastName;

    address private owner;

    constructor() {
        owner = msg.sender;
    }

    modifier OnlyOwner() {
        require(owner == msg.sender, "Only the owner can modify this");
        _;
    }

    event DataModified(address indexed editor, string data, string value);

    function setName(string memory _name) public OnlyOwner {
        name = _name;
        emit DataModified(msg.sender, "Name", _name);
    }

    function setLastName(string memory _lastName) public OnlyOwner {
        lastName = _lastName;
        emit DataModified(msg.sender, "LastName", _lastName);
    }
}
