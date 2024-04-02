// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract array{
    uint256[] public arr;
    uint256[] public arr2 = [1,2,3,4,5];

    function get(uint256 i) public view returns (uint256){
        return arr[i];
    } 

    function getArr() public view returns (uint256[] memory,uint256[] memory){
        return (arr, arr2);
    }

    function push(uint256 i)public{
        arr.push(i);
    }

    function pop() public{
        arr.pop();
    }

    function getLength() public view returns(uint256, uint256){
        return (arr.length, arr2.length);
    }

    function remove(uint256 index) public{
        delete arr[index];
    }

}