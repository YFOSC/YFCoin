//SPDX-License-Identifier: Apache
pragma solidity ^0.8.0;

contract owned {
    address public owner;
    
    constructor () {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        require (msg.sender == owner);
        _;
    }
    
    function newOwner(address _newOwner) onlyOwner public returns (bool success){
        require (_newOwner != address(0x0));
        owner = _newOwner;
        return true;
    }
} 