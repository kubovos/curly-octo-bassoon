/*

 ██████  ██████   ██████  ██   ██ ██████   ██████   ██████  ██   ██    ██████  ███████ ██    ██
██      ██    ██ ██    ██ ██  ██  ██   ██ ██    ██ ██    ██ ██  ██     ██   ██ ██      ██    ██
██      ██    ██ ██    ██ █████   ██████  ██    ██ ██    ██ █████      ██   ██ █████   ██    ██
██      ██    ██ ██    ██ ██  ██  ██   ██ ██    ██ ██    ██ ██  ██     ██   ██ ██       ██  ██
 ██████  ██████   ██████  ██   ██ ██████   ██████   ██████  ██   ██ ██ ██████  ███████   ████

Find any smart contract, and build your project faster: https://www.cookbook.dev/?utm=code
Twitter: https://twitter.com/cookbook_dev
Discord: https://discord.gg/cookbookdev

Find this contract on Cookbook: https://www.cookbook.dev/contracts/0xf09ef1bd520b70c08d7e048c6a9004bdac1ba504-Presale?utm=code
*/

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0;

import "../interfaces/IERC20Metadata.sol";

/// @title Pre-IDO state that never changes
/// @notice These parameters are fixed for a pre-IDO forever, i.e., the methods will always return the same values
interface IPreIDOImmutables {
    /// @notice The token contract that used to distribute to investors when those tokens is unlocked
    /// @return The token contract
    function token() external view returns (IERC20Metadata);
}
