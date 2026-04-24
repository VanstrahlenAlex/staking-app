//SPDX-License-Identifier: MIT

pragma solidity 0.8.34;

import "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract StakingApp is Ownable {

	// 1. StakingToken address
	//2. Admin 

	//Variables
	address public stakingToken;
	address public admin;



	constructor(address stakingToken_, address owner_) Ownable(owner_) {
		stakingToken = stakingToken_;
	}
}