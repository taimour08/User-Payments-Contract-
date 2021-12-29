// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0;

contract userPayments {

  mapping(address => uint) public donations;
  address public owner;

constructor() public{
  owner = msg.sender;
}

function add() payable public {
    donations[msg.sender] += msg.value;
}

function get() public view returns (uint) {
return donations[msg.sender];

}
}
