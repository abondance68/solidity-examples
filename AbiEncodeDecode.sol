// SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract ABITest { 
  // It is possible to put a 'struct' here: 
  struct MyStruct { 
    string name; 
    uint[2] numbers; 
  }
  


  function abiEncode(
    uint x ,
    address addr,
    uint[] calldata arr,
    MyStruct calldata myStruct
     ) external pure returns (bytes memory) {  
    return abi.encode(x , addr, arr, myStruct); 


  }

  function abiDecode(bytes calldata data) external pure returns(
     uint x,
     address addr,
     uint[] memory arr,
     MyStruct memory myStruct 
     ) 
     
  { 

    (x, addr, arr, myStruct = abi.decode(data, (x , addr, arr, MyStruct)); 
  }
}