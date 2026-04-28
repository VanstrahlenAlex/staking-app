//SPDX-License-Identifier: MIT

pragma solidity 0.8.34;

import "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";

//Staking fixed amount. E.j: 10 tokens
//Staking reward period. 


contract StakingApp is Ownable {

	// 1. StakingToken address
	//2. Admin 

	//Variables
	address public stakingToken;
	address public admin;
	uint256 public stakingPeriod;


	// Events
	event ChangeStakingPeriod(uint256 newStakingPeriod_);

	constructor(address stakingToken_, address owner_, uint256 stakingPeriod_) Ownable(owner_) {
		stakingToken = stakingToken_;
		stakingPeriod = stakingPeriod_;
	}

	//Functions

	//External functions 

	//Internal functions

	function changeStakingPeriod(uint256 newStakingPeriod_) external onlyOwner {
		stakingPeriod = newStakingPeriod_; 
		emit ChangeStakingPeriod(newStakingPeriod_);
	}
}