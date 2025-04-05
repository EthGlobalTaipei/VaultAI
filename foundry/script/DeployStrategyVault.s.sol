// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Script, console} from "forge-std/Script.sol";
import {StrategyVault} from "../src/StrategyVault.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract DeployStrategyVault is Script {
    function run() external returns (StrategyVault) {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address assetToken = vm.envAddress("ASSET_TOKEN");
        string memory name = vm.envString("VAULT_NAME");
        string memory symbol = vm.envString("VAULT_SYMBOL");

        vm.startBroadcast(deployerPrivateKey);

        // Deploy vault contract
        StrategyVault vault = new StrategyVault(IERC20(assetToken), name, symbol);

        // Configure vault if needed
        // (Use additional environment variables to configure fees, etc. if desired)

        vm.stopBroadcast();

        console.log("StrategyVault deployed at:", address(vault));
        console.log("Vault Name:", name);
        console.log("Vault Symbol:", symbol);
        console.log("Asset Token:", assetToken);

        return vault;
    }
}
