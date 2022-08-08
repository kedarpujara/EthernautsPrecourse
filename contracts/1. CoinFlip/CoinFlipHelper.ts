import { expect } from "chai";
import { ethers } from "hardhat";

const helper = async (victim: any, attacker: any) => {
  // Run it 10 times so you can get the right guess 10x in a row 
  for (var counter = 0; counter < 10; counter++ ) {
    attacker.hackContract();
  }

};

export default helper;
