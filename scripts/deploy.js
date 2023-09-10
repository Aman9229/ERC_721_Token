


async function main() {
const MyNFT =await ethers.getContractFactory("MyNFT"); // instance created 
const myNFT=await MyNFT.deploy(); // deploy local hardhat block chain
console.log("contract deploy to address",myNFT.address); // testnetwork address found to run command ==  { npx hardhat run scripts/deploy.js --network goreli}
}


main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});


// run code  in command line:- ( npx hardhat run scripts/deploy.js --network goreli) here deploy our NFT in testnetwork ;
// I do not have a test ethers in metamask Goreli test network & unable to get test ethers.