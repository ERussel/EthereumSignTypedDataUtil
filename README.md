# EthereumSignTypedDataUtil

This is collection of functions for signing Ethereum typed data hash(EIP712).

This project is inspired by the project [web3.swift](https://github.com/argentlabs/web3.swift).

## Installation

### Swift Package Manager

Use Xcode to add to the project (**File -> Swift Packages**) or add this to your `Package.swift` file:
```swift
.package(url: "https://github.com/portto/EthereumSignTypedDataUtil", from: "0.1.0")
```

### CocoaPods

Add web3.swift to your `Podfile`:

```ruby
pod 'EthereumSignTypedDataUtil'
```

Then run the following command:

```bash
$ pod install
```

## Usage

### Getting Started

Create an instance of `JSONDecoder()` to decode data to EIP712TypedData and call signableHash with specific supported version v3 or v4, the latest type point to v4 for now.

```swift
import EthereumSignTypedDataUtil

let typeDataSignMessageV3 = #"{"types":{"EIP712Domain":[{"name":"name","type":"string"},{"name":"version","type":"string"},{"name":"chainId","type":"uint256"},{"name":"verifyingContract","type":"address"}],"Person":[{"name":"name","type":"string"},{"name":"wallet","type":"address"}],"Mail":[{"name":"from","type":"Person"},{"name":"to","type":"Person"},{"name":"contents","type":"string"}]},"primaryType":"Mail","domain":{"name":"Ether Mail","version":"1","chainId":4,"verifyingContract":"0xCcCCccccCCCCcCCCCCCcCcCccCcCCCcCcccccccC"},"message":{"from":{"name":"Cow","wallet":"0xCD2a3d9F938E13CD947Ec05AbC7FE734Df8DD826"},"to":{"name":"Bob","wallet":"0xbBbBBBBbbBBBbbbBbbBbbbbBBbBbbbbBbBbbBBbB"},"contents":"Hello, Bob!"}}"#
let typedData = try JSONDecoder().decode(EIP712TypedData.self, from: Data(typeDataSignMessage.utf8))
let result = try typedData.signableHash(version: EIP712TypedDataSignVersion.v3)
```

## Author
 
andrew.wang, andrew@portto.com
 
## License

EthereumSignTypedDataUtil is released under an MIT license. See [LICENSE.md](https://github.com/portto/EthereumSignTypedDataUtil/blob/main/LICENSE.md) for more information.

