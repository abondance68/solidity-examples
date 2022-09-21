
/* Immutable Vars are like constant Vars. Values of immutable vars can be set within 
the constructor but can not be modified afterwards.
*/

//SPDX-License-Identifier:MIT

pragma solidity ^0.8.13; 

constract Immutable { 
  address public immutable MY_ADDRESS = 0x...........;   
  uint public immutable MY_UINT = 111;

  constructor (uint _myUint) { 
    MY_ADDRESS = msg.sender; 
    MY_UINT = _myUint; 
  }

}
