# Precompiles

### **What are Precompiles on Injective?**

On Injective, precompiles are special, highly-optimized smart contracts embedded directly into our EVM (Ethereum Virtual Machine) layer at the protocol level. Unlike standard Solidity smart contracts that are deployed by users, precompiles are part of the chain's core logic. They are written in Go (the language of the Cosmos SDK and Injective's native modules) but are exposed to the EVM with fixed addresses, making them callable from your Solidity smart contracts just like any other contract.

Think of them as native functions of the Injective chain that have been given an Ethereum-style interface.

### **Why are they necessary? (Bridging EVM & Native Modules)**

The Injective EVM doesn't operate in a silo. It's deeply integrated with Injective's powerful native Cosmos SDK modules, such as the Bank module (for token management), the Exchange module (for the on-chain order book), the Staking module, and more.

Precompiles serve as the crucial **bridge** between the EVM world (where your Solidity contracts live) and these native Injective functionalities. Without precompiles, your EVM smart contracts would be isolated, unable to tap into the rich features and liquidity of the broader Injective ecosystem.

For example, our [MultiVM Token Standard (MTS)](../multivm-token-standard.md) model, which ensures unified token balances across native and EVM environments, is heavily reliant on the **Bank Precompile**.

### **Benefits for Developers**

* **Access to Native Features:** Directly interact with Injective's unique modules like the on-chain order book, native staking, governance, and the bank module for MTS.
* **Enhanced Performance:** Operations executed via precompiles can be significantly faster and more gas-efficient than trying to replicate complex native logic purely in Solidity, as they run as optimized native code.
* **Seamless Interoperability:** Build truly integrated applications that leverage the strengths of both the EVM and Injective's Cosmos-native capabilities.
* **Simplified Development:** Interact with complex native functionalities through familiar Solidity interfaces, abstracting away much of the underlying Cosmos complexity.



A range of ERC-20 implementations backed by the Bank precompile, alongside precompile interfaces and abstract contracts, are available at [Injective’s Solidity Contracts Repository](https://github.com/InjectiveLabs/solidity-contracts). Key contracts include:

* **Bank.sol** – precompile interface
* **BankERC20.sol** – abstract ERC20 implementation backed by the Bank precompile
* **FixedSupplyBankERC20.sol** – decentralized ERC20 with fixed supply (no owner, no minting or burning)
* **MintBurnBankERC20.sol** – ERC20 with an owner authorized to mint and burn tokens

These implementations are based on OpenZeppelin’s ERC20 contracts. Developers can freely create custom ERC20 contracts utilizing the Bank precompile.

