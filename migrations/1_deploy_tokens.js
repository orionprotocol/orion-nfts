require("dotenv").config();
const OrionERC1155 = artifacts.require("./OrionERC1155.sol");

module.exports = async function (deployer) {
  await deployer.deploy(OrionERC1155, process.env.URI);

  const orionInstance = await OrionERC1155.deployed();
  await orionInstance.mint(process.env.MINT_TO, 0, 50, []);
};
