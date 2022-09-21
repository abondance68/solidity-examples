
//SPDX-License-Identifier:MIT


/* 3 types of variables in solidity :
-Local Vars: are declared inside a function & are not stored in the blockchain
-State Vars: declared outside a function, usually mlocated below the contract definition . 
-global Vars: provide information about the blockchain
*/

pragma solidity ^0.8.13; 

contract Variables{ 
  // State Vars are stored on the blockchain
  string public text ="Hello"; 
  uint public num =123;


  function doSomething() public { 
    // Local Vars are not stored on th"e blockchain & are specific to the function
    uint i= 50;

  // Below are some global Vars: 
  uint timestamp = block.timestamp; // Current block timestamp
  address sender = msg. sender ; // address of the caller of the contract
  }

}



