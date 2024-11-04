---
sidebar_position: 5
title: Events
---

# Events

The insurance module emits the following events:

## Handlers

### MsgCreateInsuranceFund

<table><thead><tr><th width="254">Type</th><th>Attribute Key</th><th>Attribute Value</th></tr></thead><tbody><tr><td>injective.insurance.v1beta1.EventInsuranceFundUpdate</td><td>fund</td><td>{fundJSON}</td></tr></tbody></table>

### MsgUnderwrite

<table><thead><tr><th width="253">Type</th><th>Attribute Key</th><th>Attribute Value</th></tr></thead><tbody><tr><td>injective.insurance.v1beta1.EventInsuranceFundUpdate</td><td>fund</td><td>{fundJSON}</td></tr></tbody></table>

### MsgRequestRedemption

<table><thead><tr><th width="252">Type</th><th>Attribute Key</th><th>Attribute Value</th></tr></thead><tbody><tr><td>injective.insurance.v1beta1.EventRequestRedemption</td><td>schedule</td><td>{scheduleJSON}</td></tr></tbody></table>

## EndBlocker

<table><thead><tr><th width="253">Type</th><th>Attribute Key</th><th>Attribute Value</th></tr></thead><tbody><tr><td>injective.insurance.v1beta1.EventInsuranceFundUpdate</td><td>fund</td><td>{fundJSON}</td></tr><tr><td>injective.insurance.v1beta1.EventWithdrawRedemption</td><td>schedule</td><td>{scheduleJSON}</td></tr><tr><td>injective.insurance.v1beta1.EventWithdrawRedemption</td><td>redeem_coin</td><td>{redeemCoin}</td></tr></tbody></table>
