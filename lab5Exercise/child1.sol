// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./parent1.sol";

contract Child1{
    ParentInterface public parent1Contract;

    constructor(address _parent1ContractAddress){
        parent1Contract = ParentInterface(_parent1ContractAddress);
    }

    function setValueFromChild(uint256 _a, uint _b) external{
        parent1Contract.setValue(_a, _b);
    }

    function getValueFromChild() external view returns (uint256){
        return parent1Contract.getValue();
    }
}