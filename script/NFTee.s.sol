// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {NFTee} from "../src/NFTee.sol";

contract CounterScript is Script {
    NFTee public counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        counter = new NFTee();

        vm.stopBroadcast();
    }
}