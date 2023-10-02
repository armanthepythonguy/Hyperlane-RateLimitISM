// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "@hyperlane-xyz/core/contracts/interfaces/IHyperlaneConnectionClient.sol";
import "../src/RateLimitISM.sol";

contract RateLimitISMDeploy is Script {
    function run() external{
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        RateLimitISM ismContract = new RateLimitISM(1000000000000000, 0x32B34F0D86b275b92e9289d9054Db5Ec32d2CC6C);
        console.log("RateLimit ISM Contract Address is :- ", address(ismContract));
        IHyperlaneConnectionClient(0x456F4198C23e0D3972C8Dedfe1c3796aC4f198Db).setInterchainSecurityModule(address(ismContract));
        vm.stopBroadcast();
    }
}
