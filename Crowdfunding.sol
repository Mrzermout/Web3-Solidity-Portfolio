// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract UpgradedCrowdfunding {
    address public owner;
    uint256 public targetAmount;
    uint256 public totalRaised;
    
    // NEW: A dictionary to remember exactly how much each wallet address contributed
    mapping(address => uint256) public contributions;

    constructor(uint256 _targetAmount) {
        owner = msg.sender;
        targetAmount = _targetAmount;
    }

    function contribute() public payable {
        require(msg.value > 0, "Send some ETH!");
        
        // NEW: Record the money sent by this specific wallet
        contributions[msg.sender] += msg.value;
        
        totalRaised += msg.value;
    }

    function withdraw() public {
        require(msg.sender == owner, "Not the owner");
        require(totalRaised >= targetAmount, "Target not reached");
        (bool success, ) = payable(owner).call{value: address(this).balance}("");
        require(success, "Transfer failed");
    }

    // NEW FUNCTION: Allow people to claim their money back if the goal wasn't met
    function claimRefund() public {
        // Rule 1: You can only refund if the crowdfunding FAILED
        require(totalRaised < targetAmount, "Target was reached, no refunds!");
        
        // Rule 2: Check how much this specific user gave
        uint256 amountToRefund = contributions[msg.sender];
        require(amountToRefund > 0, "You did not contribute anything");

        // Rule 3: Reset their balance to 0 BEFORE sending money (Security Best Practice!)
        contributions[msg.sender] = 0;

        // Rule 4: Send the test Ether back to their wallet
        (bool ok, ) = payable(msg.sender).call{value: amountToRefund}("");
        require(ok, "Refund failed");
    }
}

