// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/interfaces/IERC20.sol";

contract DCAVault {
    IERC20 immutable ASSET;
    address immutable OWNER;

    constructor(IERC20 _asset, address _owner) {
        ASSET = _asset;
        OWNER = _owner;
    }
}

