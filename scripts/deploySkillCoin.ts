import { ethers } from "hardhat";

async function main() {
  const TalentCoin = await ethers.getContractFactory("TalentCoin");
  const talentCoin = await TalentCoin.deploy();
  await talentCoin.waitForDeployment();
  console.log("TalentCoin deployed to:", await talentCoin.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
