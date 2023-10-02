// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./AbstractRateLimitISM.sol";

contract RateLimitISM is AbstractRateLimitISM{

    constructor(uint256 _rateLimit, address _baseISM){
        rateLimit = _rateLimit;
        baseISM = _baseISM;
    }

}