// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/presets/ERC1155PresetMinterPauser.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract OrionERC1155 is ERC1155PresetMinterPauser, Ownable {
    constructor(string memory uri) ERC1155PresetMinterPauser(uri) {
    }
}