// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {DCAVault} from "../src/DCAVault.sol";
import {Utils} from "./Utils.sol";

import "@openzeppelin/contracts/interfaces/IERC20.sol";

contract DCAVaultTest is Test, Utils {
    DCAVault public vault;

    function setUp() public virtual override {
        super.setUp();

        asset = IERC20(tokenAddrs["WETH"]);
        user = makeAddr("alice");

        vault = new DCAVault(asset, user);
    }
}
