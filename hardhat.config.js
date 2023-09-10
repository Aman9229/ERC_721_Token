/**
 *  @type import ('hardhat/config').HardhatUserConfig
 */
require("dotenv").config();
require ("@nomiclabs/hardhat-ethers");
/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.7",
  defaultNetwork:"goerli",
  networks:{
    hardhat:{},
    goerli:{
      url: "https://goerli.infura.io/v3/01b1ea61019348ddb55ef44cdcfdbff8",                     // infura API 
      accounts:[`0x${"37600a1262b66a093a9c7156200f7b57b28fb6ad97c33fa2e6346e3dbf8682b8"}`],   // metamask private key 
    },
  },
};



// run command line:-    npx hardhat compile
  
    
