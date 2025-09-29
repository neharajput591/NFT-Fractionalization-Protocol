# NFT Fractionalization Protocol

## Project Description

This smart contract enables an NFT owner to lock an ERC721 token and mint ERC20 tokens representing fractional ownership. These tokens are freely tradable, allowing broader participation. The original NFT can only be redeemed by a holder who owns and burns 100% of the fractional tokens, ensuring exclusive ownership upon redemption.

## Project Vision

Project vision for NFT liquidity via fractional ownership

## Key Features

- NFT Locking : The smart contract allows NFT owners to lock their NFTs inside the contract.
  
- ERC20 Token Minting: Mint tokens representing fractional ownership of the NFT
  
  
- Redeem the NFT by burning all fractional tokens

- Uses OpenZeppelin standards for ERC721 and ERC20 compatibility
  
- Ownership control for fractionalization
  
## Future Scope including marketplace and DAO governance

🛒 Marketplace Integration

Allow listing and trading of fractional tokens on decentralized marketplaces.

📦 Batch Fractionalization

Support locking and fractionalizing multiple NFTs in one transaction.

🗳️ Governance Features

Add DAO-like voting mechanisms for fractional token holders.

⚡ Layer 2 Integration

Enable cheaper and faster transactions via L2 solutions like Arbitrum or Optimism.

## Deployment Instructions for smart contract setup
1. Update `nftAddress` and `nftTokenId` in `deploy.js` with your NFT details.
2. Install dependencies and deploy:

```bash
npm install
npx hardhat compile
npx hardhat run scripts/deploy.js --network core_testnet_2
```

## Contract details
0x56e075685BCDeab45d589234e09d873A86430Cb4![alt text](image.png)
