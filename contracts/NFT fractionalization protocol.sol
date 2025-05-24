// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NFTFractionalizer is ERC20, Ownable {
    IERC721 public nftContract;
    uint256 public nftTokenId;
    bool public fractionalized;

    // Default values — replace these with your actual defaults
    address constant DEFAULT_NFT_CONTRACT = 0x0000000000000000000000000000000000000000;
    uint256 constant DEFAULT_NFT_TOKEN_ID = 0;
    string constant DEFAULT_NAME = "Fractionalized NFT";
    string constant DEFAULT_SYMBOL = "FNFT";

    constructor()
        ERC20(DEFAULT_NAME, DEFAULT_SYMBOL)
        Ownable(msg.sender)
    {
        nftContract = IERC721(DEFAULT_NFT_CONTRACT);
        nftTokenId = DEFAULT_NFT_TOKEN_ID;
    }

    // Optional: add initializer to change defaults after deployment
    function initialize(
        address _nftContract,
        uint256 _nftTokenId,
        string memory _name,
        string memory _symbol
    ) external onlyOwner {
        require(address(nftContract) == address(0) || nftTokenId == 0, "Already initialized");
        nftContract = IERC721(_nftContract);
        nftTokenId = _nftTokenId;
        // Unfortunately, ERC20 name and symbol are immutable after constructor,
        // so to change name and symbol you must deploy new contract.
    }

    function fractionalize(uint256 totalShares) external onlyOwner {
        require(!fractionalized, "Already fractionalized");
        nftContract.transferFrom(msg.sender, address(this), nftTokenId);

        fractionalized = true;
        _mint(msg.sender, totalShares);
    }

    function redeem() external {
        require(fractionalized, "Not fractionalized yet");
        require(balanceOf(msg.sender) == totalSupply(), "Must own all fractions to redeem");

        fractionalized = false;
        _burn(msg.sender, totalSupply());
        nftContract.transferFrom(address(this), msg.sender, nftTokenId);
    }
}
