// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./parent.sol";

contract Child is Parent{
    function getValue() external view returns (uint256){
        return sum;
    }
}