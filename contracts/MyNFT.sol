// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyNFT is ERC721, ERC721Enumerable, Ownable {
    using Counters for Counters.Counter;
     uint public  mintRate=0.01 ether;
     uint256 public maxSupply=1;
    Counters.Counter private _tokenIdCounter;
    
    constructor() ERC721("MyNFT", "AMTK") {}
         
    function safeMint(address to) public payable  {
        require(totalSupply() < maxSupply,"only one minting possible");

        require(msg.value >=mintRate,"not enough ether send");
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
    }

    // The following functions are overrides required by Solidity.

    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize) 
    internal override(ERC721, ERC721Enumerable)
    {
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721Enumerable) returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
        function withdraw() public onlyOwner{
        require((address(this).balance) > 0,"balance is > 0");
        payable (owner()).transfer(address(this).balance);
    }
}