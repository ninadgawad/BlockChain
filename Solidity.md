## Solidity

[Solidity](https://soliditylang.org/) is a high-level programming language specifically designed for writing smart contracts that run on the Ethereum blockchain. Ethereum is one of the most popular blockchain platforms supporting decentralized applications (DApps) and smart contracts.
Solidity is a curly-bracket language designed to target the Ethereum Virtual Machine (EVM). It is influenced by C++, Python, and JavaScript. You can find more details about which languages Solidity has been inspired by in the language influences section.
Solidity is statically typed, supports inheritance, libraries, and complex user-defined types, among other features.
With Solidity, you can create contracts for uses such as voting, crowdfunding, blind auctions, and multi-signature wallets.

## Key features of Solidity include:
- **Smart Contract Support**: Solidity is primarily used to write smart contracts, which are self-executing contracts with the terms of the agreement directly written into code.
- **Ethereum Compatibility**: Solidity is tailored for the Ethereum Virtual Machine (EVM), making it the language of choice for developing decentralized applications on the Ethereum blockchain.
- **Security-Oriented**: Solidity includes features and best practices to enhance the security of smart contracts, preventing vulnerabilities and exploits.
- **Widespread Adoption**: Due to Ethereum's prominence in the blockchain space, Solidity has gained widespread adoption and support in the developer community.


### Reference:
https://docs.soliditylang.org/en/v0.8.23/

### Storage Example Code: 
```solidity
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage {
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() public view returns (uint) {
        return storedData;
    }
}
```
