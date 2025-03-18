// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SkillCoin is ERC20 {
    constructor() ERC20("SkillCoin", "SKC") {
        _mint(msg.sender, 1000000 * 10**18); // 1M tokens, 18 decimals
    }
}