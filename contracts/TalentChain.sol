// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract TalentChain{
  struct Skill{
    address Provider;
    string description;
    uint price;
    bool active;
  }
  IERC20 public talentCoin;
  uint public skillCount;
  mapping(uint => Skill) public skills;

  event SkillListed(uint skillId, address provider, string description, uint price);

  constructor(address _talentCoin){
    talentCoin = IERC20(_talentCoin);
  }
  function listSkill(string memory _description, uint _price) public {
    skills[skillCount] = Skill(msg.sender, _description, _price, true);
    emit SkillListed(skillCount, msg.sender, _description, _price);
    skillCount++;
  }
}