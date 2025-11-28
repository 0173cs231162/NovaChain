Project Title


NovaChain Digital Asset Registry (DAR)

Project Description

NovaChain is a fundamental smart contract designed to provide an immutable and transparent ledger for verifying the creation and ownership of unique digital assets. By registering a cryptographic hash or unique identifier (bytes32) to an Ethereum address, the system ensures non-repudiation and timestamped proof-of-existence on the blockchain.

Project Vision

To become the trusted, decentralized backbone for timestamping and verifying ownership of intellectual property, digital documents, and unique IDs without the need for an intermediary or central authority. NovaChain aims to provide a simple, atomic service for establishing digital asset provenance.

Key Features

Immutable Registration: Once an asset ID is registered, it cannot be changed or overwritten.

Unique ID Enforcement: The registerAsset function enforces strict uniqueness for every bytes32 identifier.

Owner Retrieval: Allows any external system or user to query the contract and instantly retrieve the recorded owner of an asset.

Timestamped Proof: Records the exact blockchain time of registration, providing verifiable proof of creation date.

Future Scope

Transferability: Implement optional functionality to allow the registered owner to transfer the ownership record to another address (turning it into a basic ERC-721-like system).

Metadata Storage: Integrate IPFS (InterPlanetary File System) hashing to store larger metadata associated with the asset ID.

Fee Mechanism: Introduce a small Ether registration fee to prevent spam and fund potential maintenance/upgrades (if using an upgradeable pattern).

Pausable Registry: Implement a Pausable pattern to allow an administrative address to temporarily halt registrations in case of an emergency exploit.
contract address: 0x8c69Caeb46E20d7671E5e33e01EE6522d0dE0f56

