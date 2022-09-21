
// Keccak256 is a cryptographic hash function in solidity 

//SPDX-License-Identifier:MIT

pragma  solidity  ^0.8.13; 

contract Hashfunc { }
  function hash(string memory text, uint num , address addr) external pure returns (bytes32) { 
     returns  keccak256(abi.encodePacked(text, num, addr)) ; 


  }