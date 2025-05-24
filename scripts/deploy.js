const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();

  // Example NFT address and tokenId to fractionalize, update accordingly
  const nftAddress = "0xYourNFTContractAddressHere";
  const nftTokenId = 1;

  console.log("Deploying NFTFractionalizer with deployer:", deployer.address);

  const Fractionalizer = await ethers.getContractFactory("NFTFractionalizer");
  const fractionalizer = await Fractionalizer.deploy(
    nftAddress,
    nftTokenId,
    "Fractional NFT Token",
    "fNFT"
  );

  await fractionalizer.deployed();

  console.log("NFTFractionalizer deployed to:", fractionalizer.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
