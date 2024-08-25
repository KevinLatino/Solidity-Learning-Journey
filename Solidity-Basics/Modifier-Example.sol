// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ModiFierExample {
    string public name;

    string public lastName;

    address private owner;

    modifier OnlyOwner() {
        require(owner == msg.sender, "Only the owner can modify this");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function setName(string memory _name) OnlyOwner public {
        name = _name;
    }

    function setLastName(string memory _lastName) OnlyOwner public {
        lastName = _lastName;
    }
}
