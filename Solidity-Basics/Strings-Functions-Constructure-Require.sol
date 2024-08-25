// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract RequireExample {
    string public name;

    address private owner;

    constructor() {
        owner = msg.sender;
    }

    function setName(string memory _name) public {
        require(owner == msg.sender, "Only the owner can modify this");
        name = _name;
    }

}
