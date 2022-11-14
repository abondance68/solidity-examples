// SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract ABITest { 



  function abiEncode(uint param1, uint param2, address addr) external pure returns (bytes memory) {  
    return abi.encode(param1, param2, addr); 


  }

  function abiDecode(bytes calldata data) external pure returns(
     uint param1,
     uint param2,
     address addr
     ) 
     
  { 

    (param1, param2, addr) = abi.decode(data, (uint, uint, address)); 
  }
}