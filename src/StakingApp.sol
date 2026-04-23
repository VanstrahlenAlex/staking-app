//SPDX-License-Identifier: MIT

pragma solidity 0.8.34;

contract StakingApp {

	// 1. StakingToken address
	//2. Admin 

	//Variables
	address public stakingToken;
	address public admin;



	constructor(address stakingToken_, address admin_) {
		stakingToken = stakingToken_;
		admin = admin_;
	}
}