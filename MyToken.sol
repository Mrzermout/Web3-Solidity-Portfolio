// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// NEW CONCEPT: Importing a secure, audited standard directly from the cloud
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyCustomToken is ERC20 {
    
    // The constructor defines the Token Name and Token Symbol
    constructor() ERC20("PapaAlgeriaToken", "PAT") {
        
        // This instantly mints (creates) 1 million tokens and puts them in YOUR wallet
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
