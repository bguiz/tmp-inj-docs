# Bank Precompile

The Bank precompile allows smart contracts to interact directly with the `x/bank` module, effectively bringing ERC-20 tokens on-chain. Any ERC-20 contract using the Bank precompile will be represented as `evm/0x...` denom on-chain. Technically, this means that tokens reside only on-chain, with the EVM providing a view to the chain state rather than maintaining a separate copy. Unlike traditional bridging, where two token versions require user actions to switch, the Bank precompile offers real-time, dual-environment reflection for any transfer using either the on-chain bank denom or the ERC-20 `transfer()` method.

A range of ERC-20 implementations backed by the Bank precompile, alongside precompile interfaces and abstract contracts, are available at [Injective’s Solidity Contracts Repository](https://github.com/InjectiveLabs/solidity-contracts). Key contracts include:

* **Bank.sol** – precompile interface
* **BankERC20.sol** – abstract ERC20 implementation backed by the Bank precompile
* **FixedSupplyBankERC20.sol** – decentralized ERC20 with fixed supply (no owner, no minting or burning)
* **MintBurnBankERC20.sol** – ERC20 with an owner authorized to mint and burn tokens

These implementations are based on OpenZeppelin’s ERC20 contracts. Developers can freely create custom ERC20 contracts utilizing the Bank precompile.

#### Bank Precompile Interface

<pre class="language-solidity" data-full-width="false"><code class="lang-solidity"><strong>interface IBankModule {
</strong>    function mint(address,uint256) external payable returns (bool);
    function balanceOf(address,address) external view returns (uint256);
    function burn(address,uint256) external payable returns (bool);
    function transfer(address,address,uint256) external payable returns (bool);
    function totalSupply(address) external view returns (uint256);
    function metadata(address) external view returns (string memory,string memory,uint8);
    function setMetadata(string memory,string memory,uint8) external payable returns (bool);
}
</code></pre>
