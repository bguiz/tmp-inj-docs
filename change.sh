#!/bin.bash
# Refactor injective docs for consolidation across
# docs.* docs.ts.* and docs.trading.* subdomains

# git mv README.md README.md
# TODO edit to add directory links
echo -e "# Injective FAQ\n\n(WIP)" > faq.md
# TODO new file

cat getting-started/README.md >> README.md
# TODO edit to merge these files
git rm getting-started/README.md
# TODO edit to add directory links

mkdir -p defi
echo -e "DeFi Users\n\n(WIP)" > defi/README.md
mkdir -p defi/wallet
git mv getting-started/wallet/README.md defi/wallet/README.md
git mv getting-started/wallet/create-a-wallet.md defi/wallet/create.md
git mv getting-started/wallet/accounts.md defi/wallet/accounts.md
git mv getting-started/wallet/staking.md defi/wallet/staking.md
git mv getting-started/wallet/governance.md defi/wallet/governance.md
git mv getting-started/wallet/auction.md defi/wallet/auction.md
mkdir -p defi/bridge
git mv guides/bridge/README.md defi/bridge/README.md
# TODO discuss whether these bridge pages should be moved into
# the docs site instead of the blog
mkdir -p defi/tokens
git mv getting-started/token-standards/README.md defi/tokens/README.md
git mv getting-started/token-standards/inj-coin.md defi/tokens/inj-coin.md
git mv getting-started/token-standards/token-factory.md defi/tokens/token-factory.md
git mv getting-started/token-standards/cw20-standard.md defi/tokens/cw20-standard.md
echo -e "Get INJ\n\n(WIP)" > defi/tokens/get-inj.md
# TODO edit to add link to external Get INJ page
echo -e "Queries\n\n(WIP)" > defi/queries.md
# TODO edit to split of original file into 2 (queries and transactions)
git mv getting-started/transactions/README.md defi/transactions.md
# TODO edit to split of original file into 2 (queries and transactions)
git mv getting-started/transactions/gas-and-fees.md defi/transaction-fees.md
# TODO in phase 4 - defi/basics/
# TODO in phase 4 - defi/margin/
# TODO in phase 4 - defi/derivatives/
# TODO in phase 4 - defi/open-liquidity-program/
# TODO in phase 4 - defi/fee-tiers/
echo -e "DeFi FAQ\n\n(WIP)" > defi/faq.md
# TODO new file

# TODO current --- ---
mkdir -p infra/
git mv nodes/getting-started/README.md infra/README.md
echo -e "Networks\n\n(WIP)" > infra/networks.md
cp nodes/getting-started/interact-with-a-node.md infra/interact-node-command-line.md
# TODO edit to split of original file into 6
cp nodes/getting-started/interact-with-a-node.md infra/interact-node-grpc.md
# TODO edit to split of original file into 6
cp nodes/getting-started/interact-with-a-node.md infra/interact-node-typescript.md
# TODO edit to split of original file into 6
cp nodes/getting-started/interact-with-a-node.md infra/interact-node-python.md
# TODO edit to split of original file into 6
cp nodes/getting-started/interact-with-a-node.md infra/interact-node-go.md
# TODO edit to split of original file into 6
git mv nodes/getting-started/interact-with-a-node.md infra/interact-node-rest.md
# TODO edit to split of original file into 6
git mv nodes/getting-started/running-a-node/README.md infra/run-node.md
git mv nodes/getting-started/running-a-node/1.-setting-up-the-keyring.md infra/set-up-keyring.md
git mv nodes/getting-started/running-a-node/join-a-network.md infra/join-a-network.md
git mv nodes/getting-started/running-a-node/cosmovisor.md infra/cosmovisor.md
git mv nodes/getting-started/running-a-node/upgrade-your-node.md infra/upgrade-node.md
git rm nodes/validators/README.md
# NOTE that it this file is deleted
mkdir -p infra/validator-mainnet/
git mv nodes/validators/mainnet/README.md infra/validator-mainnet/README.md
git mv nodes/validators/mainnet/peggo.md infra/validator-mainnet/peggo.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/README.md infra/validator-mainnet/canonical-chain-upgrade.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-10002-rc1.md infra/validator-mainnet/canonical-chain-upgrade-10002-rc1.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-10002-rc2.md infra/validator-mainnet/canonical-chain-upgrade-10002-rc2.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-10003-rc1.md infra/validator-mainnet/canonical-chain-upgrade-10003-rc1.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-10004-rc1.md infra/validator-mainnet/canonical-chain-upgrade-10004-rc1.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-10004-rc1-patch.md infra/validator-mainnet/canonical-chain-upgrade-10004-rc1-patch.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-10005-rc1.md infra/validator-mainnet/canonical-chain-upgrade-10005-rc1.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-10006-rc1.md infra/validator-mainnet/canonical-chain-upgrade-10006-rc1.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-10007-rc1.md infra/validator-mainnet/canonical-chain-upgrade-10007-rc1.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-10008.md infra/validator-mainnet/canonical-chain-upgrade-10008.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-10009.md infra/validator-mainnet/canonical-chain-upgrade-10009.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/upgrade-to-v1.10.md infra/validator-mainnet/canonical-chain-upgrade-v1.10.0.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-10011.md infra/validator-mainnet/canonical-chain-upgrade-v1.11.0.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-1-12.md infra/validator-mainnet/canonical-chain-upgrade-v1.12.0.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/upgrade-to-v1.12.1.md infra/validator-mainnet/canonical-chain-upgrade-v1.12.1.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-1.13.0.md infra/validator-mainnet/canonical-chain-upgrade-1.13.0.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-1.13.2.md infra/validator-mainnet/canonical-chain-upgrade-1.13.2.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-1.13.3.md infra/validator-mainnet/canonical-chain-upgrade-1.13.3.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-1.14.0.md infra/validator-mainnet/canonical-chain-upgrade-1.14.0.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-1.14.1.md infra/validator-mainnet/canonical-chain-upgrade-1.14.1.md
git mv nodes/validators/mainnet/canonical-chain-upgrades/canonical-1.15.0.md infra/validator-mainnet/canonical-chain-upgrade-1.15.0.md
mkdir -p infra/validator-mainnet/
git mv nodes/validators/testnet/README.md infra/validator-testnet/README.md
git mv nodes/validators/testnet/testnet-peggo.md infra/validator-testnet/peggo.md
git rm nodes/validators/cosmosvisor.md
# TODO check if this file should actually be deleted
git mv nodes/public-endpoints.md infra/public-endpoints.md
git mv nodes/private-nodes.md infra/premium-endpoints.md
echo -e "Set up Indexer\n\n(WIP)" > infra/indexer-setup.md
# TODO copy contents from https://injective.notion.site/Injective-Exchange-Service-Setup-Guide-7e59980634d54991862300670583d46a
echo -e "FAQ\n\n(WIP)" > infra/faq.md

## TODO continue from here --- ---

git mv guides/README.md defi/README.md
git mv guides/launch-a-token.md guides/launch-a-token.md
git mv guides/launch-a-market.md guides/launch-a-market.md
git mv guides/denom-metadata.md guides/denom-metadata.md

git mv getting-started/transactions/gas-and-fees.md getting-started/transactions/gas-and-fees.md

git mv getting-started/wallet/create-a-wallet.md getting-started/wallet/create-a-wallet.md
git mv https://blog.injective.com/en/how-to-bridge-from-ethereum-to-injective-using-metamask/ https://blog.injective.com/en/how-to-bridge-from-ethereum-to-injective-using-metamask/
git mv https://blog.injective.com/en/how-to-bridge-to-injective-using-wormhole/ https://blog.injective.com/en/how-to-bridge-to-injective-using-wormhole/
git mv https://blog.injective.com/en/how-to-bridge-from-cosmos-to-injective-using-keplr/ https://blog.injective.com/en/how-to-bridge-from-cosmos-to-injective-using-keplr/
git mv https://blog.injective.com/en/how-to-bridge-from-solana-to-injective-using-phantom/ https://blog.injective.com/en/how-to-bridge-from-solana-to-injective-using-phantom/

git mv toolkits/README.md toolkits/README.md
git mv toolkits/injectived/README.md toolkits/injectived/README.md
git mv toolkits/injectived/install-injectived.md toolkits/injectived/install-injectived.md
git mv toolkits/injectived/using-injectived.md toolkits/injectived/using-injectived.md
git mv toolkits/injectived/advanced.md toolkits/injectived/advanced.md
git mv https://docs.ts.injective.network https://docs.ts.injective.network
git mv https://github.com/InjectiveLabs/sdk-go/ https://github.com/InjectiveLabs/sdk-go/
git mv https://github.com/InjectiveLabs/sdk-python https://github.com/InjectiveLabs/sdk-python
git mv https://github.com/InjectiveLabs/cw-injective https://github.com/InjectiveLabs/cw-injective
git mv https://github.com/InjectiveLabs/injective-rust https://github.com/InjectiveLabs/injective-rust
git mv https://docs.substreams.dev/documentation/how-to-guides/injective https://docs.substreams.dev/documentation/how-to-guides/injective
git mv references.md references.md
git mv glossary.md glossary.md
git mv llm.txt.md llm.txt.md

## Developers

git mv developers/getting-started/README.md developers/getting-started/README.md
git mv developers/getting-started/guides/README.md developers/getting-started/guides/README.md
git mv developers/getting-started/guides/testnet-proposals.md developers/getting-started/guides/testnet-proposals.md
git mv developers/getting-started/guides/convert-addresses.md developers/getting-started/guides/convert-addresses.md
git mv developers/getting-started/guides/calculations/README.md developers/getting-started/guides/calculations/README.md
git mv developers/getting-started/guides/calculations/min-price-tick-size.md developers/getting-started/guides/calculations/min-price-tick-size.md
git mv developers/getting-started/guides/calculations/min-quantity-tick-size.md developers/getting-started/guides/calculations/min-quantity-tick-size.md
git mv developers/getting-started/guides/testnet-faucet-integration.md developers/getting-started/guides/testnet-faucet-integration.md
git mv developers/exchange-developers/README.md developers/exchange-developers/README.md
git mv https://docs.ts.injective.network/building-dapps/dapps-examples/dex https://docs.ts.injective.network/building-dapps/dapps-examples/dex
git mv developers/exchange-developers/provider-oracle.md developers/exchange-developers/provider-oracle.md
git mv developers/evm-developers.md developers/evm-developers.md
git mv developers/evm-developers/your-first-smart-contract.md developers/evm-developers/your-first-smart-contract.md
git mv developers/evm-developers/guides/README.md developers/evm-developers/guides/README.md
git mv developers/evm-developers/guides/testnet-deployment.md developers/evm-developers/guides/testnet-deployment.md
git mv developers/evm-developers/technical-information/README.md developers/evm-developers/technical-information/README.md
git mv developers/evm-developers/technical-information/network-information.md developers/evm-developers/technical-information/network-information.md
git mv developers/evm-developers/technical-information/evm-equivalence.md developers/evm-developers/technical-information/evm-equivalence.md
git mv developers/evm-developers/technical-information/multivm-token-standard.md developers/evm-developers/technical-information/multivm-token-standard.md
git mv developers/evm-developers/technical-information/precompiles/README.md developers/evm-developers/technical-information/precompiles/README.md
git mv developers/evm-developers/technical-information/precompiles/bank-precompile.md developers/evm-developers/technical-information/precompiles/bank-precompile.md
git mv developers/evm-developers/technical-information/precompiles/exchange-precompile.md developers/evm-developers/technical-information/precompiles/exchange-precompile.md
git mv developers/evm-developers/technical-information/erc20-module.md developers/evm-developers/technical-information/erc20-module.md
git mv developers/evm-developers/technical-information/infrastructure-and-tooling.md developers/evm-developers/technical-information/infrastructure-and-tooling.md
git mv https://testnet.faucet.injective.network/ https://testnet.faucet.injective.network/
git mv https://testnet.blockscout.injective.network/blocks https://testnet.blockscout.injective.network/blocks
git mv developers/cosmwasm-developers/README.md developers/cosmwasm-developers/README.md
git mv developers/cosmwasm-developers/your-first-smart-contract.md developers/cosmwasm-developers/your-first-smart-contract.md
git mv developers/cosmwasm-developers/guides/README.md developers/cosmwasm-developers/guides/README.md
git mv developers/cosmwasm-developers/guides/local-development.md developers/cosmwasm-developers/guides/local-development.md
git mv developers/cosmwasm-developers/guides/mainnet-deployment.md developers/cosmwasm-developers/guides/mainnet-deployment.md
git mv developers/cosmwasm-developers/guides/whitelisting-deployment-address.md developers/cosmwasm-developers/guides/whitelisting-deployment-address.md
git mv developers/cosmwasm-developers/guides/create-your-swap-contract.md developers/cosmwasm-developers/guides/create-your-swap-contract.md
git mv developers/cosmwasm-developers/guides/creating-uis.md developers/cosmwasm-developers/guides/creating-uis.md
git mv developers/cosmwasm-developers/cosmwasm-any.md developers/cosmwasm-developers/cosmwasm-any.md
git mv developers/cosmwasm-developers/page-1.md developers/cosmwasm-developers/page-1.md
git mv developers/cosmwasm-developers/injective-test-tube.md developers/cosmwasm-developers/injective-test-tube.md
git mv developers/modules/README.md developers/modules/README.md
git mv developers/modules/injective/README.md developers/modules/injective/README.md
git mv developers/modules/injective/auction/README.md developers/modules/injective/auction/README.md
git mv developers/modules/injective/auction/01_state.md developers/modules/injective/auction/01_state.md
git mv developers/modules/injective/auction/02_messages.md developers/modules/injective/auction/02_messages.md
git mv developers/modules/injective/auction/03_end_block.md developers/modules/injective/auction/03_end_block.md
git mv developers/modules/injective/auction/04_events.md developers/modules/injective/auction/04_events.md
git mv developers/modules/injective/auction/05_params.md developers/modules/injective/auction/05_params.md
git mv developers/modules/injective/auction/99_errors.md developers/modules/injective/auction/99_errors.md
git mv developers/modules/injective/exchange/README.md developers/modules/injective/exchange/README.md
git mv developers/modules/injective/exchange/00_derivative_market_concepts.md developers/modules/injective/exchange/00_derivative_market_concepts.md
git mv developers/modules/injective/exchange/01_spot_market_concepts.md developers/modules/injective/exchange/01_spot_market_concepts.md
git mv developers/modules/injective/exchange/02_binary_options_markets.md developers/modules/injective/exchange/02_binary_options_markets.md
git mv developers/modules/injective/exchange/02_other_concepts.md developers/modules/injective/exchange/02_other_concepts.md
git mv developers/modules/injective/exchange/03_state.md developers/modules/injective/exchange/03_state.md
git mv developers/modules/injective/exchange/04_state_transitions.md developers/modules/injective/exchange/04_state_transitions.md
git mv developers/modules/injective/exchange/05_messages.md developers/modules/injective/exchange/05_messages.md
git mv developers/modules/injective/exchange/06_proposals.md developers/modules/injective/exchange/06_proposals.md
git mv developers/modules/injective/exchange/07_begin_block.md developers/modules/injective/exchange/07_begin_block.md
git mv developers/modules/injective/exchange/08_end_block.md developers/modules/injective/exchange/08_end_block.md
git mv developers/modules/injective/exchange/09_events.md developers/modules/injective/exchange/09_events.md
git mv developers/modules/injective/exchange/10_params.md developers/modules/injective/exchange/10_params.md
git mv developers/modules/injective/exchange/11_msg_privileged_execute_contract.md developers/modules/injective/exchange/11_msg_privileged_execute_contract.md
git mv developers/modules/injective/exchange/99_errors.md developers/modules/injective/exchange/99_errors.md
git mv developers/modules/injective/insurance/README.md developers/modules/injective/insurance/README.md
git mv developers/modules/injective/insurance/01_state.md developers/modules/injective/insurance/01_state.md
git mv developers/modules/injective/insurance/02_state_transitions.md developers/modules/injective/insurance/02_state_transitions.md
git mv developers/modules/injective/insurance/03_messages.md developers/modules/injective/insurance/03_messages.md
git mv developers/modules/injective/insurance/04_end_block.md developers/modules/injective/insurance/04_end_block.md
git mv developers/modules/injective/insurance/05_events.md developers/modules/injective/insurance/05_events.md
git mv developers/modules/injective/insurance/06_params.md developers/modules/injective/insurance/06_params.md
git mv developers/modules/injective/insurance/07_future_improvements.md developers/modules/injective/insurance/07_future_improvements.md
git mv developers/modules/injective/insurance/99_errors.md developers/modules/injective/insurance/99_errors.md
git mv developers/modules/injective/ocr/README.md developers/modules/injective/ocr/README.md
git mv developers/modules/injective/ocr/01_concepts.md developers/modules/injective/ocr/01_concepts.md
git mv developers/modules/injective/ocr/02_state.md developers/modules/injective/ocr/02_state.md
git mv developers/modules/injective/ocr/03_messages.md developers/modules/injective/ocr/03_messages.md
git mv developers/modules/injective/ocr/04_proposals.md developers/modules/injective/ocr/04_proposals.md
git mv developers/modules/injective/ocr/05_begin_block.md developers/modules/injective/ocr/05_begin_block.md
git mv developers/modules/injective/ocr/06_hooks.md developers/modules/injective/ocr/06_hooks.md
git mv developers/modules/injective/ocr/07_events.md developers/modules/injective/ocr/07_events.md
git mv developers/modules/injective/ocr/08_params.md developers/modules/injective/ocr/08_params.md
git mv developers/modules/injective/ocr/99_errors.md developers/modules/injective/ocr/99_errors.md
git mv developers/modules/injective/oracle/README.md developers/modules/injective/oracle/README.md
git mv developers/modules/injective/oracle/01_state.md developers/modules/injective/oracle/01_state.md
git mv developers/modules/injective/oracle/02_keeper.md developers/modules/injective/oracle/02_keeper.md
git mv developers/modules/injective/oracle/03_messages.md developers/modules/injective/oracle/03_messages.md
git mv developers/modules/injective/oracle/04_proposals.md developers/modules/injective/oracle/04_proposals.md
git mv developers/modules/injective/oracle/05_events.md developers/modules/injective/oracle/05_events.md
git mv developers/modules/injective/oracle/06_future_improvements.md developers/modules/injective/oracle/06_future_improvements.md
git mv developers/modules/injective/oracle/99_errors.md developers/modules/injective/oracle/99_errors.md
git mv developers/modules/injective/peggy/README.md developers/modules/injective/peggy/README.md
git mv developers/modules/injective/peggy/01_definitions.md developers/modules/injective/peggy/01_definitions.md
git mv developers/modules/injective/peggy/02_workflow.md developers/modules/injective/peggy/02_workflow.md
git mv developers/modules/injective/peggy/03_state.md developers/modules/injective/peggy/03_state.md
git mv developers/modules/injective/peggy/04_messages.md developers/modules/injective/peggy/04_messages.md
git mv developers/modules/injective/peggy/05_slashing.md developers/modules/injective/peggy/05_slashing.md
git mv developers/modules/injective/peggy/06_end_block.md developers/modules/injective/peggy/06_end_block.md
git mv developers/modules/injective/peggy/07_events.md developers/modules/injective/peggy/07_events.md
git mv developers/modules/injective/peggy/08_params.md developers/modules/injective/peggy/08_params.md
git mv developers/modules/injective/peggy/09_relay_semantics.md developers/modules/injective/peggy/09_relay_semantics.md
git mv developers/modules/injective/peggy/10_future_improvements.md developers/modules/injective/peggy/10_future_improvements.md
git mv developers/modules/injective/peggy/99_errors.md developers/modules/injective/peggy/99_errors.md
git mv developers/modules/injective/permissions/README.md developers/modules/injective/permissions/README.md
git mv developers/modules/injective/permissions/01_concepts.md developers/modules/injective/permissions/01_concepts.md
git mv developers/modules/injective/permissions/02_state.md developers/modules/injective/permissions/02_state.md
git mv developers/modules/injective/permissions/03_state_transitions.md developers/modules/injective/permissions/03_state_transitions.md
git mv developers/modules/injective/permissions/99_errors.md developers/modules/injective/permissions/99_errors.md
git mv developers/modules/injective/tokenfactory/README.md developers/modules/injective/tokenfactory/README.md
git mv developers/modules/injective/tokenfactory/01_concepts.md developers/modules/injective/tokenfactory/01_concepts.md
git mv developers/modules/injective/tokenfactory/02_state.md developers/modules/injective/tokenfactory/02_state.md
git mv developers/modules/injective/tokenfactory/03_messages.md developers/modules/injective/tokenfactory/03_messages.md
git mv developers/modules/injective/tokenfactory/04_events.md developers/modules/injective/tokenfactory/04_events.md
git mv developers/modules/injective/tokenfactory/05_params.md developers/modules/injective/tokenfactory/05_params.md
git mv developers/modules/injective/tokenfactory/99_errors.md developers/modules/injective/tokenfactory/99_errors.md
git mv developers/modules/injective/wasmx/README.md developers/modules/injective/wasmx/README.md
git mv developers/modules/injective/wasmx/01_concepts.md developers/modules/injective/wasmx/01_concepts.md
git mv developers/modules/injective/wasmx/02_data.md developers/modules/injective/wasmx/02_data.md
git mv developers/modules/injective/wasmx/03_proposals.md developers/modules/injective/wasmx/03_proposals.md
git mv developers/modules/injective/wasmx/04_messages.md developers/modules/injective/wasmx/04_messages.md
git mv developers/modules/injective/wasmx/05_params.md developers/modules/injective/wasmx/05_params.md
git mv developers/modules/injective/wasmx/99_errors.md developers/modules/injective/wasmx/99_errors.md
git mv developers/modules/injective/lanes/README.md developers/modules/injective/lanes/README.md
git mv developers/modules/injective/txfees/README.md developers/modules/injective/txfees/README.md
git mv developers/modules/core/README.md developers/modules/core/README.md
git mv developers/modules/core/auth/README.md developers/modules/core/auth/README.md
git mv developers/modules/core/authz/README.md developers/modules/core/authz/README.md
git mv developers/modules/core/bank/README.md developers/modules/core/bank/README.md
git mv developers/modules/core/consensus/README.md developers/modules/core/consensus/README.md
git mv developers/modules/core/crisis/README.md developers/modules/core/crisis/README.md
git mv developers/modules/core/distribution/README.md developers/modules/core/distribution/README.md
git mv developers/modules/core/evidence/README.md developers/modules/core/evidence/README.md
git mv developers/modules/core/feegrant/README.md developers/modules/core/feegrant/README.md
git mv developers/modules/core/gov/README.md developers/modules/core/gov/README.md
git mv developers/modules/core/group/README.md developers/modules/core/group/README.md
git mv developers/modules/core/mint/README.md developers/modules/core/mint/README.md
git mv developers/modules/core/nft/README.md developers/modules/core/nft/README.md
git mv developers/modules/core/params/README.md developers/modules/core/params/README.md
git mv developers/modules/core/slashing/README.md developers/modules/core/slashing/README.md
git mv developers/modules/core/staking/README.md developers/modules/core/staking/README.md
git mv developers/modules/core/upgrade/README.md developers/modules/core/upgrade/README.md
git mv developers/modules/core/circuit/README.md developers/modules/core/circuit/README.md
git mv developers/modules/core/genutils.md developers/modules/core/genutils.md
git mv https://docs.ts.injective.network https://docs.ts.injective.network

## Traders

git mv traders/getting-started.md traders/getting-started.md
git mv https://docs.trading.injective.network https://docs.trading.injective.network
git mv https://api.injective.exchange/ https://api.injective.exchange/

## Useful Links

git mv https://injective.notion.site/Injective-d48cbe6cb04141e082ff2c85a73ba67a?pvs=4 https://injective.notion.site/Injective-d48cbe6cb04141e082ff2c85a73ba67a?pvs=4
git mv https://hub.injective.network https://hub.injective.network
git mv https://explorer.injective.network https://explorer.injective.network
git mv https://sentry.lcd.injective.network/swagger/#/ https://sentry.lcd.injective.network/swagger/#/
git mv https://api.injective.network/swagger/#/ https://api.injective.network/swagger/#/
git mv https://testnet.faucet.injective.network https://testnet.faucet.injective.network
