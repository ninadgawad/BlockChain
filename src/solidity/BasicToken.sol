// SPDX-License-Identifier: MIT
// This is a simple implementation of an ERC-20 token, a standard interface for fungible tokens on Ethereum.
pragma solidity ^0.8.0;

contract BasicToken {
    mapping(address => uint256) public balances;

    uint256 public totalSupply;

    string public name = "Basic Token";
    string public symbol = "BT";
    uint8 public decimals = 18;

    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor(uint256 initialSupply) {
        balances[msg.sender] = initialSupply;
        totalSupply = initialSupply;
    }

    function transfer(address to, uint256 value) public returns (bool) {
        require(value <= balances[msg.sender], "Insufficient balance");

        balances[msg.sender] -= value;
        balances[to] += value;

        emit Transfer(msg.sender, to, value);
        return true;
    }
}

