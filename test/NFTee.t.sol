// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {NFTee} from "../src/NFTee.sol";

contract NFTeeTest is Test {
    NFTee public nft;

    function setUp() public {
        // Deploy the NFTee contract
        nft = new NFTee();
    }

    function test_NFTMinted() public view {
        // Check if the NFT with token ID 1 is owned by the deployer
        address owner = nft.ownerOf(1);
        assertEq(owner, address(this)); // Test that the deployer owns token ID 1
    }

    function test_RevertForNonExistentToken() public {
        // Ensure that querying for a non-existent token reverts
        vm.expectRevert("ERC721: owner query for nonexistent token");
        nft.ownerOf(2); // Token ID 2 does not exist
    }
}
