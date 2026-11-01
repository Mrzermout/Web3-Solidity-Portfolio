# Web3-Solidity-Portfolio
# Web3 Solidity Smart Contract Portfolio
“A practical proof-of-work portfolio containing audited, secure Solidity smart contracts deployed via Remix IDE and OpenZeppelin standards.”
Welcome to my smart contract development portfolio. This repository serves as a public ledger of my technical proof-of-work in building, auditing, and debugging secure decentralized protocols on the Ethereum Virtual Machine (EVM). 

As an independent Web3 builder specializing in techno-functional execution, my goal is to bridge complex on-chain logic with production-ready standards.

## 🚀 Projects Overview

### 1. Upgraded Crowdfunding Protocol (`Crowdfunding.sol`)
A secure, decentralized fundraising contract designed to handle conditional asset pooling without intermediaries.
* **Core Mechanisms:** Implements automated target verification (`targetAmount`) and state isolation.
* **Security & Optimization:** Uses individual contributor state-tracking via `mapping(address => uint256)` to prevent unauthorized withdrawals.
* **Key Learning/Fix:** Engineered a strict boundary checking rule to prevent the common non-payable "Value Box Trap". It enforces zero-value states during standard execution loops to guarantee that functions meant to distribute funds out (`claimRefund`) never accidentally reject EVM transaction states due to incoming value mismatches.

### 2. Custom ERC-20 Token Engine (`MyToken.sol`)
A production-ready cryptocurrency implementation built upon industry-standard security foundations.
* **Core Mechanisms:** Leverages OpenZeppelin standard inheritance (`is ERC20`) to safely instantiate a total supply of 1,000,000 custom tokens with full 18-decimal precision support.
* **Architecture:** Utilizes secure minting vectors (`_mint`) at the construction phase, exposing optimized standard data-view states (`balanceOf`, `totalSupply`) and gas-efficient state-changing transaction paths (`transfer`).

---

## 🛠️ Development Stack & Environments
* **Language:** Solidity (^0.8.20)
* **Framework / IDE:** Remix IDE
* **Libraries:** OpenZeppelin Contracts Standard (ERC-20 Secure Suite)
* **Testing Networks:** Browser-isolated Ethereum Virtual Machine (Remix VM Sandbox)

---

## 📬 Connect With Me
I am actively seeking remote roles where I can contribute to smart contract support, technical product management, or junior auditing workflows.
* **Status:** Available for International Remote Work 🌍
* **Communication Stack:** English (Professional Async Written), Discord, GitHub, Slack
