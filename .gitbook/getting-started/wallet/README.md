# Wallet

The Injective Wallet allows you to monitor your assets on Injective. Assets can be native tokens on Injective, as well as bridged assets from Ethereum, Solana, Polygon and various IBC-enabled chains.[\
](https://docs.injective.network/learn/injective-hub/)

There are a variety of different wallets that are supported on Injective. Users can choose to submit transactions on Injective using either their Ethereum or Cosmos-native wallets.

### Overview

Injective's `Account` type uses Ethereum's ECDSA secp256k1 curve for keys. Simply put, Injective's Account is native (compatible) with Ethereum accounts, allowing Ethereum-native wallets, such as MetaMask, to interact with Injective. Popular Cosmos wallets like Keplr and Leap have also integrated with Injective.&#x20;

#### Ethereum-Based Wallets

As explained above, Ethereum-based wallets can be used to interact with Injective. Right now, the most popular Ethereum-based wallets are supported on Injective. These include:

<div align="center" data-full-width="false">

<figure><img src="../../.gitbook/assets/SVG_MetaMask_Horizontal_White.svg" alt="" width="225"><figcaption><p><a href="https://metamask.io/">MetaMask</a></p></figcaption></figure>

 

<figure><img src="../../.gitbook/assets/trezor-main-logo-white-rgb.svg" alt="" width="188"><figcaption><p><a href="https://trezor.io/">Trezor</a></p></figcaption></figure>

</div>

<div align="center">

<figure><img src="../../.gitbook/assets/White -Ledger logo.svg" alt="" width="142"><figcaption><p><a href="https://www.ledger.com/">Ledger</a></p></figcaption></figure>

 

<figure><img src="../../.gitbook/assets/torus-logo-blue-3.svg" alt="" width="155"><figcaption><p><a href="https://tor.us/index.html">Torus</a></p></figcaption></figure>

</div>

The process of signing transactions on Injective using an Ethereum-native wallet consists of:

1. Converting the transaction into EIP712 TypedData,
2. Signing the EIP712 TypedData using an Ethereum-native wallet,
3. Packing the transaction into a native Cosmos transaction (including the signature), and broadcasting the transaction to the chain.

This process is abstracted away from the end-user. If you've previously used an Ethereum-native wallet, the user experience will be the same.

#### Cosmos-Based Wallets

Injective supports the leading wallets compatible with Cosmos and IBC, including:

<figure><img src="../../.gitbook/assets/cosmostation-logo-01.png" alt="" width="375"><figcaption><p><a href="https://cosmostation.io/">Cosmostation</a></p></figcaption></figure>

<div>

<figure><img src="../../.gitbook/assets/Keplr_logo_ver.1.3_2 Light.png" alt="" width="188"><figcaption><p><a href="https://www.keplr.app/">Keplr</a></p></figcaption></figure>

 

<figure><img src="../../.gitbook/assets/6614b644f965e11764db3535_leap.svg" alt="" width="238"><figcaption><p><a href="https://www.leapwallet.io/">Leap</a></p></figcaption></figure>

</div>

#### Injective-Native Wallets

Currently, [Ninji Wallet](https://ninji.xyz/) is the only Injective-native wallet. Such a wallet is built to synergize specifically with the greater Injective ecosystem.

<figure><img src="../../.gitbook/assets/NINJI-LOGO_NINJI-FULL-WHITECOLOUR.svg" alt="" width="188"><figcaption><p><a href="https://ninji.xyz/">Ninji</a></p></figcaption></figure>

#### CEX-Based Wallets

There are also several wallets developed by centralized exchanges (CEXs) that now support Injective. If you are an active user of these CEXs, using their wallets can provide a more seamless web3 experience. Currently, CEX-based wallets that support Injective are:

<div>

<figure><img src="../../.gitbook/assets/bitget wallet.svg" alt="" width="188"><figcaption><p><a href="https://web3.bitget.com/">Bitget</a></p></figcaption></figure>

 

<figure><img src="../../.gitbook/assets/0_YiPfP8pxHtcyVuWy (2).png" alt="" width="177"><figcaption><p><a href="https://www.okx.com/web3">OKX</a></p></figcaption></figure>

</div>
