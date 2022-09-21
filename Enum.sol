
// SPDX-License-Identifier:MIT

pragma solidity ^0.8.13; 

contract Enum { 
  // Enum representing shipping status of UPS parcels
  enum Status { 
    Pending,
    Shipped,
    Accepted, 
    Rejected,
    Canceled

  }

  // Default value is the first element listed in defintion of the type, in this case "pending" 
  Status public statut; 

  /* Returns uint
  Pending - 0
  Shipped - 1
  Accepted - 2
  Rejected -3
  Cancelled -4 
*/

function get() public view returns (Statut) { 
    return Status;

}

// Updating Status by passing uint into input
function set(Statut _statut) public { 
  statut = _statut ; 

}

// Updating to a specific enum like below: 
function cancel() public { 
  statut = Status.Canceled;
}

// delete resets the enum to the initial value aka 0 
function reset() public { 
delete statut; 

} 
}
