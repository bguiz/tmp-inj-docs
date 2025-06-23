# Interact with a node using gRPC

The Protobuf ecosystem developed tools for different use cases, including code-generation from `*.proto` files into various languages. These tools allow clients to be built easily. Often, the client connection (i.e., the transport) can be plugged and replaced very easily. Let's explore a popular transport method, gRPC.

Since the code generation library largely depends on your own tech stack, we will only present two alternatives:

* `grpcurl` for generic debugging and testing
* Programmatically via Go, Python, or TS

### grpcurl

[grpcurl](https://github.com/fullstorydev/grpcurl) is like `curl`, but for gRPC. It is also available as a Go library, but we will use it only as a CLI command for debugging and testing purposes. Follow the instructions in the previous link to install it.

Assuming you have a local node running (either a localnet, or connected a live network), you should be able to run the following command to list the Protobuf services available. You can replace `localhost:9000` by the gRPC server endpoint of another node, which is configured under the `grpc.address` field inside `app.toml`:

```bash
grpcurl -plaintext localhost:9090 list
```

You should see a list of gRPC services, like `cosmos.bank.v1beta1.Query`. This is called reflection, which is a Protobuf endpoint returning a description of all available endpoints. Each of these represents a different Protobuf service, and each service exposes multiple RPC methods you can query against.

In order to get a description of the service, you can run the following command:

```bash
# Service we want to inspect
grpcurl \
    localhost:9090 \
    describe cosmos.bank.v1beta1.Query                  
```

It's also possible to execute an RPC call to query the node for information:

```bash
grpcurl \
    -plaintext
    -d '{"address":"$MY_VALIDATOR"}' \
    localhost:9090 \
    cosmos.bank.v1beta1.Query/AllBalances
```

#### **Query for historical state using grpcurl**

You may also query for historical data by passing some [gRPC metadata](https://github.com/grpc/grpc-go/blob/master/Documentation/grpc-metadata.md) to the query: the `x-cosmos-block-height` metadata should contain the block to query. Using grpcurl as above, the command looks like:

```bash
grpcurl \
    -plaintext \
    -H "x-cosmos-block-height: 279256" \
    -d '{"address":"$MY_VALIDATOR"}' \
    localhost:9090 \
    cosmos.bank.v1beta1.Query/AllBalances
```

Assuming the state at that block has not yet been pruned by the node, this query should return a non-empty response.

## Sending Transactions

Sending transactions using gRPC and REST requires some additional steps: generating the transaction, signing it, and finally broadcasting it.&#x20;

You can learn more in [transactions](../../getting-started/transactions/ "mention").&#x20;
