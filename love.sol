// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LoveToken is ERC20, Ownable {
    mapping(address => uint256) private _claims;

    constructor() ERC20("Love Token", "LOVE") {
        uint256 totalSupply = 100000000000 * (10 ** uint256(decimals()));
        _mint(msg.sender, totalSupply);
    }

    function airdrop(address[] calldata recipients, uint256 amount) public onlyOwner {
        require(amount * recipients.length <= balanceOf(msg.sender), "Not enough tokens to airdrop");

        for (uint i = 0; i < recipients.length; i++) {
            _claims[recipients[i]] += amount;
            _transfer(msg.sender, address(this), amount);
        }
    }

    function claim() public {
        uint256 amount = _claims[msg.sender];
        require(amount > 0, "No tokens to claim");

        _claims[msg.sender] = 0;
        _transfer(address(this), msg.sender, amount);
    }

    function claims(address account) public view returns (uint256) {
        return _claims[account];
    }
}
