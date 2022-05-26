Pod::Spec.new do |spec|
  spec.name         = "EthereumSignTypedDataUtil"
  spec.version      = "0.1.2"
  spec.summary      = "A collection of functions for signing Ethereum typed data hash(EIP712)."

  spec.homepage     = "https://github.com/portto/EthereumSignTypedDataUtil"
  spec.license      = { :type => 'MIT', :file => 'LICENSE.md' }
  spec.author       = { 'Dawson' => 'dawson@portto.com' }
  spec.source       = { :git => 'https://github.com/portto/EthereumSignTypedDataUtil.git', :tag => spec.version.to_s }

  spec.swift_version = '5.0.0'
  spec.ios.deployment_target = '10.0'

  spec.source_files = 'Sources/**/*.swift'

  spec.framework  = "Foundation"
  spec.dependency "BigInt", "~> 5.0"
  spec.dependency "CryptoSwift", "~> 1.4"
  
  spec.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'Tests/**/*.swift'
  end

end

