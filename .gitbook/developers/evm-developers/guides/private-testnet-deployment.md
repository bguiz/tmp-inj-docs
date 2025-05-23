# Testnet Deployment

During the initial phase of the public testnet EVM release, deployments will be permissioned. This means that only a limited set of accounts will be able to deploy contracts and applications. This permissioned period is expected to last for a maximum of two weeks.

The purpose of this restriction is to allow the core team to conduct thorough performance tests and ensure the stability of the EVM environment under controlled conditions. This allows us to identify and address any potential issues before opening up deployments to the wider community.

If you are a team interested in deploying on the public testnet EVM during this permissioned period, please reach out to us on \[Discord]\(_insert Discord link here_) or \[Telegram]\(_insert Telegram link here_). We may be able to assist with deploying your contracts for testing purposes.



***

## Testnet permissionless contract deployment guide&#x20;

<details>

<summary>Coming soon! </summary>

This guide will walk you through deploying a smart contract on the Injective EVM Testnet network.

{% hint style="info" %}
You can request private EVM testnet funds [here](https://k8s.testnet.evmix.faucet.injective.network/)
{% endhint %}

## Requirements

1. The guide uses [foundry](https://book.getfoundry.sh/) for deployments. Install it by running:

```
curl -L https://foundry.paradigm.xyz | bash
```

To verify the installation:

```
forge --version
```

2. Add Injective EVM to your `foundry.toml`

```
[rpc_endpoints]
injectiveEvm = "https://testnet.sentry.chain.json-rpc.injective.network/"
```

## Deploying

Due to the EVM-equivalence of _Injective_, foundry commands should work as expected. The major difference is the network URL. In most cases, using `--rpc-url injectiveEvm` is sufficient.

### Navigate to your smart contract project

```
cd path/to/your/project
```

### Deploying a smart contract <a href="#deploying-a-smart-contract" id="deploying-a-smart-contract"></a>

{% hint style="info" %}
Your private key should have INJ on the Injective network. A transaction will be created which requires a gas fee. You can request private EVM testnet funds [here](https://k8s.testnet.evmix.faucet.injective.network/)
{% endhint %}

<pre class="language-bash"><code class="lang-bash"># Simulating
<strong>forge create src/{YourContract}.sol:{ContractName} --rpc-url injectiveEvm --private-key {YourPrivateKey}
</strong>
# Broadcasting
forge create src/{YourContract}.sol:{ContractName} --rpc-url injectiveEvm --private-key {YourPrivateKey} --broadcast
</code></pre>

### Verifying on Blockscout

After the deployment is completed, you can verify the contract.&#x20;

```bash
forge verify-contract \
  --rpc-url injectiveEvm \
  --verifier blockscout \
  --verifier-url 'https://testnet.blockscout-api.injective.network/api/' \
  {SmartContractAddress} \
  src/{YourContract}.sol:{ContractName}
```

After that, you can navigate to the contract address in Explorer to see the code, parsed logs, and callable methods ([example](https://k8s.testnet.evm.blockscout.injective.network/address/0x2f9f80b89ef4C9AaBcd630E62B740d6a2f3065E4)).

{% hint style="info" %}
You can read more about foundry deploying [here](https://book.getfoundry.sh/forge/deploying), or you can check other deployment options [here](https://book.getfoundry.sh/reference/forge/forge-create). You can also read more about forge verify-contract [here](https://book.getfoundry.sh/reference/forge/forge-verify-contract).
{% endhint %}

</details>





<table data-card-size="large" data-view="cards" data-full-width="false"><thead><tr><th></th><th data-type="content-ref"></th><th data-hidden data-card-target data-type="content-ref"></th></tr></thead><tbody><tr><td>← Previous</td><td><a href="../../../guides/">guides</a></td><td><a href="./">.</a></td></tr><tr><td>Next → </td><td><a href="../technical-information/">technical-information</a></td><td><a href="../technical-information/">technical-information</a></td></tr></tbody></table>
