// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract bidder{
    string public name;
    uint public bidAmount;
    bool public eligible;
    uint public minBid;

function setMinBid(uint minBidSet) public{
    minBid = minBidSet;
}

function setBidAmount(uint bidAmountSet) public{
    bidAmount = bidAmountSet;
}

function setName(string memory nameSet)public{
    name = nameSet;
}

function determinedEligibility() public{
    if(bidAmount < minBid){
        eligible = false;
    } else{
        eligible = true;
    }
}

function getBidAmount() public view returns (uint){
    return bidAmount;
}

function getMinBid() public view returns (uint){
    return minBid;
}

}