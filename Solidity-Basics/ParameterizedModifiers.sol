// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract C2M2 {
    string public name;
    string public lastName;
    address private owner;
    string[] names;

    constructor() {
        owner = msg.;
    }

    modifier OnlyOwner() {
        require(owner == msg.sender, "Only the owner can modify this");
        _;
    }

    modifier checkArrayLength(uint256 _index) {
        require(_index <= names.length, "index out of bounds");
        _;
    }

    event DataModified(address indexed editor, string data, string value);

    function setName(string memory _name) public OnlyOwner {
        name = _name;
        names.push(_name);
        emit DataModified(msg.sender, "Name", _name);
    }

    function setLastName(string memory _lastName) public OnlyOwner {
        lastName = _lastName;
        emit DataModified(msg.sender, "LastName", _lastName);
    }

    function viewNamesArray(uint256 _index)
        public
        view
        checkArrayLength(_index)
        returns (string memory)
    {
        return names[_index];
    }

    function editNameFromArray(uint256 _index, string memory newName)
        public
        checkArrayLength(_index)
    {
        names[_index] = newName;
    }
}
