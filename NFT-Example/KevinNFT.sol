// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract KevinBanner is ERC721 {
    uint256 token_count;

    constructor() ERC721("My NFT", "MNFT") {}

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_ownerOf(tokenId) != address(0), "ERC721Metadata: URI query for nonexistent token");
        return "https://ipfs.io/ipfs/QmX4ZxJGtHQwvGuj5NFDHRpD1rL8bbgp2oMTDoR3f72mTa";
    }

    function mintNFT(address to) public
    {
        token_count  += 1;
        _mint(to, token_count);
    }
}