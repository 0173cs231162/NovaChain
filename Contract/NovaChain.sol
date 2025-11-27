// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title NovaChain Asset Registry
 * @dev A contract for permanently recording ownership of unique digital assets 
 * (identified by a bytes32 hash) to an Ethereum address.
 */
contract NovaChainAssetRegistry {
    
    // Mapping to store the owner address for each unique asset ID (bytes32).
    mapping(bytes32 => address) private assetOwners;
    
    // Mapping to store the timestamp when the asset was registered.
    mapping(bytes32 => uint256) private registrationTimestamp;

    // Event emitted when a new asset is successfully registered.
    event AssetRegistered(
        bytes32 indexed assetId, 
        address indexed owner, 
        uint256 timestamp
    );

    /**
     * @dev Registers a new, unique asset ID and associates it with the sender.
     * @param _assetId The unique 32-byte hash/identifier of the digital asset.
     */
    function registerAsset(bytes32 _assetId) public {
        // Core Function 1: Ensure the asset has not been registered before.
        require(assetOwners[_assetId] == address(0), "Asset ID is already registered.");
        
        // Record the sender as the owner.
        assetOwners[_assetId] = msg.sender;
        
        // Record the registration time.
        registrationTimestamp[_assetId] = block.timestamp;

        // Emit an event for off-chain monitoring.
        emit AssetRegistered(_assetId, msg.sender, block.timestamp);
    }

    /**
     * @dev Retrieves the owner address for a given asset ID.
     * @param _assetId The unique asset hash/identifier.
     * @return The address of the asset owner. Returns address(0) if not found.
     */
    function getAssetOwner(bytes32 _assetId) public view returns (address) {
        // Core Function 2: Simply returns the owner address from the mapping.
        return assetOwners[_assetId];
    }

    /**
     * @dev Checks if an asset ID has been registered and, if so, returns its registration timestamp.
     * @param _assetId The unique asset hash/identifier.
     * @return isRegistered True if the asset is registered, false otherwise.
     * @return timestamp The time of registration (0 if not registered).
     */
    function checkRegistrationStatus(bytes32 _assetId) public view returns (bool isRegistered, uint256 timestamp) {
        // Core Function 3: Check for existence and return metadata.
        bool found = assetOwners[_assetId] != address(0);
        return (found, registrationTimestamp[_assetId]);
    }
}
