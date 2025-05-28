// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract MyToken is ERC20 {
    address payable public owner;
    constructor(uint256 cap) ERC20("MyToken42", "MTK42"){ 
        owner = payable(msg.sender); 
        _mint(owner, cap * ( 10 ** decimals())); 
    }
    function You_are_the_owner() public view returns(string memory){
        require(msg.sender == owner, "you are not the owner");
        return "You are the owner";
    }

}


