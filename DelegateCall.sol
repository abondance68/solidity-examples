
SPDX-License-Identifier:MIT

pragma  solidity  ^0.8.13; 

/*DelagateCall is a low level function similar to "Call"
When contract A executes "Delegecall" to contract B, B 's code is executed with contract A's storage, msg.sender & msg.value
*/
contract TestDelegateCall  { 
    // NOTE: storage layout must be the same as contract B 
    uint public num; 
    address public sender; 
    uint public value; 

function setVars(uint _num) public payable { 
  num = _num; 
  sender = msg.sender; 
  value = msg.value; 
}
}


contract DelegateCall { 
  uint public num; 
  address public owner; 
  uint public value; 

  function setVars(address _test, uint _num) public payable { 
    (bool success, bytes memory data) = test.delegatecall(
      abi.encodeWithSelector(TestDelegateCall.setVars.selector, _num)
    );

    require(success, "DelgateCall failed") 
  }

  
}
