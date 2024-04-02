// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract transfer{
    address payable public buyer;
    address payable public seller;

    //NOTICE: Copy any address from ACCOUNT for buyer first
    function setSeller(address payable _toReceiver) public payable{
        buyer = payable(msg.sender);        //own address(as a buyer)
        seller = _toReceiver;               //seller address
        seller.transfer(msg.value);
    }
}