
// MOdifiers are code that can run before and/or after a function call 

// SPDX-License-Identifier:MIT

pragma solidity ^0.8.13; 

contract FunctionModifier { 
  address public owner; 
  uint public  x=10;
  bool public locked;


constructor() { 
  // Set the transaction sender as the owner of the contract
  owner =msg.sender; 
}

// modifier to check that the caller is the owner of the cointract

modifier onlyOwner() { 
  require(msg.sender == owner, "Not Owner");
  /* _Underscore is a  special character only used inside 
  a function modifier and it tells solidity to execute the rest of the code
  */
    _;

}

/* Modifier to check that the caller is the owner of the contract */

modifier validAddress(address _addr) { 
  require(_addr !=address(0), "Not Valid Address"); 
  _; 
}



function changeOwner (address _newOwner) public onlyOwner validAddress(_newowner) { 
  owner =_newOwner; 
}

  /* Modifiers can ba called before and/or after a function.
  This modifier prevents a function from being called while it is still executing.
  */
modifier noReentrancy() { 
  require(!locked, "No Reentrancy"); 
  locked = true; 
  _;
  locked= false; 

}

function decrement(uint i) public noReentrancy { 
  x -= i;

  if( i > 1) { 
    decrement (i -1 ); 
  }

}







}
