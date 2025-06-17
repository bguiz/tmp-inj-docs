---
description: >-
  Pocket size cheat sheet for Injective. Use this glossary to learn about terms
  specific to Injective.
---

# Glossary

### Active set

The validators that participate in consensus and receive rewards.

### Airdrops

Additional rewards given to delegators through certain validators that are separate from staking rewards. Airdrops are generally given by applications in the Injective ecosystem to increase visibility.

### Arbitrage

A process by which users seek to capitalize on a price difference across markets. Arbitrageurs typically purchase assets in one market and sell them in another market for a higher price.

### Blockchain

An unchangeable ledger of transactions copied among a network of independent computer systems.

### Blocks

Groups of information stored on a blockchain. Each block contains transactions that are grouped, verified, and signed by validators.

### Bonded validator

A validator in the active set participating in consensus. Bonded validators are able to earn rewards.

### Bonding

When a user delegates or bonds INJ to a validator to receive staking rewards. Validators never have ownership of a delegator's INJ, even when bonded. Delegating, bonding, and staking generally refer to the same process.

### Burn

The permanent destruction of assets. Injective burns INJ after each burn auction.

### Burn Auction

A weekly event in which community members can use INJ to bid for 60% of all exchange fees collected by Injective. The INJ used by the winning bidder will be burnt.

### Commission

The percentage of staking rewards a validator keeps before distributing the rest of the rewards to delegators. A validator’s income relies solely on this commission. Validators set their own commission rates.

### Community pool

A special fund designated for funding community projects. Any community member can create a governance proposal to spend the tokens in the community pool. If the proposal passes, the funds are spent as specified in the proposal.

### Consensus

A system used by validators or miners to agree that each block of transactions in a blockchain is correct. Injective uses the Tendermint consensus framework. Validators earn rewards for participating in consensus. Visit the [Tendermint official documentation site](https://docs.tendermint.com/) for more information.

### Cosmos-SDK

The open-source framework the Injective blockchain is built on. For more information, check out the [Cosmos SDK Documentation](https://docs.cosmos.network/).

### CosmWasm

The library utilized by Injective to power on-chain smart contracts. For more information, check out the CosmWasm Documentation.

### dApp

Decentralized application. An application built on a decentralized platform.

### DDoS

Distributed denial of service attack. When an attacker floods a network with traffic or requests in order to disrupt service.

### DeFi

Decentralized finance. A movement away from traditional finance and toward systems that do not require financial intermediaries.

### Delegate

When users or delegators add their INJ to a validator's stake in exchange for rewards. Delegated INJ is bonded to a validator. Validators never have ownership of a delegator's INJ. Delegating, bonding, and staking generally refer to the same process.

### Delegator

A user who delegates, bonds, or stakes INJ to a validator to earn rewards. Delegating, bonding, and staking generally refer to the same process.

### Devnet

Development network. A network that operates independently of the mainnet, allowing users to test new features or products without disrupting the primary network.

### Frequent Batch Auction (FBA)

The model used by Injective for on-chain order matching. This model uses capital more efficiently compared to Continuous Double Auction (CDA), which is utilized by most of the Centralized exchanges offering crypto derivatives and traditional financial markets. The Frequent Batch Auction model also eliminates front-running possibilities.

### Full node

A computer connected to the \[Injective mainnet that can validate transactions and interact with Injective. All active validators run full nodes.

### Gas Fees

Compute fees added on to all transactions to avoid spamming. Validators set minimum gas prices and reject transactions that have implied gas prices below this threshold.

### Governance

Governance is the democratic process that allows users and validators to make changes to Injective. Community members submit, vote, and implement proposals. One staked INJ is equal to one vote.

### Governance proposal

A written submission for a change or addition to the Injective protocol. Topics of proposals can vary from community pool spending, software changes, parameter changes, or any change pertaining to Injective.

### IBC

Inter-Blockchain Communication. The technology that enables different blockchains to interact with each other. IBC allows for assets to be traded and transacted across different blockchains.

### INJ

The native token of Injective.

### injectived

The command-line interface for interacting with an Injective node.

For more information on injectived, see `injectived` guides.

### Injective core

The official source code for Injective.

For more information on the Injective core, see Injective core modules.

### Injective Hub

Inejctive's platform for wallets, governance, staking and INJ burn auctions.

To learn about the features of Injective Hub, visit the Injective Hub guide.

### Inactive set

Validators that are not in the active set. These validators do not participate in consensus and do not earn rewards.

### Jailed

Validators who misbehave are jailed or excluded from the active set for a period of time.

### Maximum Extractable Value (MEV)

The maximum value that can be extracted from block production in excess of the standard block reward and gas fees by including, excluding, and changing the order of transactions in a block.

Injective is MEV-resistant.

### Module

A section of the Injective core that represents a particular function of Injective. Visit the Injective core module specifications for more information.

### Oracle

A 3rd party service enabling Injective to access external, real-world data. Typically, this is the price feed.

### Pools

Groups of tokens. Supply pools represent the total supply of tokens in a market.

### Proof of Stake

A validation method utilized by blockchains in which validators are chosen to propose blocks according to the number of coins they hold.

### Quorum

The minimum amount of votes needed to make an election viable. 33% of all staked INJ must vote to meet quorum. If quorum is not met before the voting period ends, the proposal fails, and the proposer's deposit is burned.

### Redelegate

When a delegator wants to transfer their bonded INJ to a different validator. Redelegating INJ is instant and does not require a 21-day unbonding period.

### Rewards

Revenue generated from fees given to validators and disbursed to delegators.

### Self-delegation

The amount of INJ a validator bonds to themselves. Also referred to as self-bond.

### Slashing

Punishment for validators that misbehave. Validators lose part of their stake when they get slashed.

### Slippage

The difference in an asset’s price between the start and end of a transaction.

### Stake

The amount of INJ bonded to a validator.

### Staking

When a user delegates or bonds their INJ to an active validator to receive rewards. Bonded INJ adds to a validator's stake. Validators provide their stakes as collateral to participate in the consensus process. Validators with larger stakes are chosen to participate more often. Validators receive staking rewards for their participation. A validator's stake can be slashed if the validator misbehaves. Validators never have ownership of a delegator's INJ, even when staking.

For more information on staking, visit the concepts page.

### Tendermint consensus

The consensus framework used by Injective. First, a validator proposes a new block. Other validators vote on the block in two rounds. If a block receives a two-thirds majority or greater of yes votes in both rounds, it gets added to the blockchain. Validators get rewarded with the block's transaction fees. Proposers get rewarded extra. Each validator is chosen to propose based on their weight. Check out the [Tendermint official documentation](https://docs.tendermint.com/) for more information.

### Mainnet

Injective's blockchain network where all transactions take place.

### Testnet

A version of the mainnet used for testing. The testnet does not use real assets. You can use the testnet to get familiar with transactions and the overall network.

### Total stake

The total amount of INJ bonded to a delegator, including self-bonded INJ.

### Unbonded validator

A validator that is not in the active set and does not participate in consensus or receive rewards. Some unbonded validators may be jailed.

### Unbonding validator

A validator transitioning from the active set to the inactive set. An unbonding validator does not participate in consensus or earn rewards. The unbonding process takes 21 days.

### Unbonded INJ

INJ that can be freely traded and is not staked to a validator.

### Unbonding

When a delegator decides to undelegate their INJ from a validator. This process takes 21 days. No rewards accrue during this period. This action cannot be stopped once executed.

### Unbonding INJ

INJ that is transitioning from bonded to unbonded. INJ that is unbonding cannot be traded freely. The unbonding process takes 21 days. No rewards accrue during this period. This action cannot be stopped once executed.

### Undelegate

When a delegator no longer wants to have their INJ bonded to a validator. This process takes 21 days. No rewards accrue during this period. This action cannot be stopped once executed.

### Uptime

The amount of time a validator is active in a given timeframe. Validators with low up time may be slashed.

### Validator

An Injective blockchain miner that is responsible for verifying transactions on the blockchain. Validators run programs called full nodes that allow them to participate in consensus, verify blocks, participate in governance, and receive rewards. Only the active set of validators can participate in consensus.

### Weight

The measure of a validator's total stake. Validators with higher weights get selected more often to propose blocks. A validator's weight is also a measure of their voting power in governance.
