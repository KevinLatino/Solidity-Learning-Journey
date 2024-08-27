// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mappins {

    mapping (address => bool) public voters;

    function addVoter(address _userAddress) public {
         require(!voters[_userAddress], "You have already voted");
         voters[_userAddress] = true;
    }

    function removeVoter(address _userAddress) public {
        voters[_userAddress] = false;
    }
}