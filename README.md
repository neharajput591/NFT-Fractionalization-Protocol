# NFT Fractionalization Protocol

## Project Description
This smart contract allows an NFT owner to lock an ERC721 token within the contract and mint ERC20 tokens that represent fractional ownership of the NFT. These fractional tokens can be freely traded. The full NFT can only be redeemed by a user who holds **100% of the fractional tokens** and burns them.

## Project Vision 

To unlock liquidity for NFTs by enabling fractional ownership, allowing broader access and trading of high-value NFTs.

## Key Features

- NFT Locking : The smart contract allows NFT owners to lock their NFTs inside the contract.
- Fractional token minting: The contract mints ERC20 tokens representing fractional ownership of the locked NFT.
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
