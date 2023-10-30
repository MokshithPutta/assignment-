// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//import "hardhat/console.sol";

contract Assessment {

    uint256 public balance;


    constructor(uint initBalance) payable {
        balance = initBalance;
    }

    function getBalance() public view returns(uint256){
        return balance;
    }

    function array_sum(uint[] memory array) public payable {

        // perform transaction
        assert(array.length>0);
        uint256 result  = 0;
        for(uint i=0 ; i<array.length ; i++){
            result += array[i];
        }
        balance  = result;
    }

    // custom error

    function array_product(uint[] memory array) public {
 
        assert(array.length>0);
        uint256 result = 1;
        for(uint i=0 ; i<array.length ; i++){
            result *= array[i];
        }
        balance = result ;

    }
}
