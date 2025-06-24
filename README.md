# NFT Fractionalization Protocol

## Project Description
This smart contract allows an NFT owner to lock their NFT inside the contract and mint ERC20 tokens representing fractional ownership of that NFT.

These fractional tokens can be traded freely. 

The full NFT can be redeemed only by the holder who owns all fractional tokens.

## Project Vision
To unlock liquidity for NFTs by enabling fractional ownership, allowing broader access and trading of high-value NFTs.

## Key Features

- Lock an NFT and mint ERC20 tokens as fractions
- Redeem the NFT by burning all fractional tokens
- Uses OpenZeppelin standards for ERC721 and ERC20 compatibility
- Ownership control for fractionalization

## Future Scope

- Add marketplace integration for fractional token trading
- Support multiple NFTs and batch fractionalization
- Add voting or governance features for fractional owners
- Integrate with Layer 2 solutions for scalability

## Deployment Instructions
1. Update `nftAddress` and `nftTokenId` in `deploy.js` with your NFT details.
2. Install dependencies and deploy:

```bash
npm install
npx hardhat compile
npx hardhat run scripts/deploy.js --network core_testnet_2
```

## Contract details
0x56e075685BCDeab45d589234e09d873A86430Cb4![alt text](image.png)
