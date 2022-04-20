// SPDX-License-Identifier: unlicensed

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Test is Ownable{
    uint256 private name;

    event ValueChanged(uint256 newName);

    function save(uint256 newName) public onlyOwner{
        name = newName;
        emit ValueChanged(newName);
    }

    function get() public view returns (uint256){
        return name;
    }
}