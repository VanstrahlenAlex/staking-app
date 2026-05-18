//SPDX-License-Identifier: MIT

// pragma solidity 0.8.35;
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/StakingToken.sol";
import "../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

contract StakingTokenTest is Test{
	
	StakingToken stakingToken;
	string name_ = "Staking Token";
	string symbol_ = "STK";
	address randomUser = vm.addr(1);
	
	function setUp() public {
		stakingToken = new StakingToken(name_, symbol_);
	}

	function testStakingTokenMintsCorrectly()  public {
		vm.startPrank(randomUser);
		uint256 amount_ = 1 ether;

		//Token balance previos
		uint256 balanceBefore_ = IERC20(address(stakingToken)).balanceOf(randomUser); // UserA = 50 Tokens 
		stakingToken.mint(amount_);
		//Token balance after
		uint256 balanceAfter_ = IERC20(address(stakingToken)).balanceOf(randomUser); // UserA = 51 Tokens 

		assert(balanceAfter_ - balanceBefore_ == amount_); // 51 Tokens - 50 Tokens = 1 Token
		
		vm.stopPrank();
		
	}

	
}