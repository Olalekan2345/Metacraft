// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/**

@title MyToken

@dev A simple ERC20 token contract representing a fictional football club named "Manchester United" (MUN).

The contract allows minting and burning tokens and keeps track of token balances for each address.
*/
contract MyToken {
// Public variables
string public tokenName = "MANCHESTER UNITED"; // The name of the token
string public tokenAbbrv = "MUN"; // An abbreviation or symbol for the token
uint public totalSupply = 0; // Total supply of tokens

// Mapping variable to store balances
mapping(address => uint) public balances; // Mapping from address to token balance

/**

@dev Mint function
@param _address The address to mint tokens for
@param _value The amount of tokens to mint
*/
function mint(address _address, uint _value) public {
totalSupply += _value; // Increase the total supply
balances[_address] += _value; // Increase the balance of the specified address
}
/**

@dev Burn function
@param _address The address to burn tokens from
@param _value The amount of tokens to burn
*/
function burn(address _address, uint _value) public {
if (balances[_address] >= _value) { // Check if the address has enough tokens to burn
totalSupply -= _value; // Decrease the total supply
balances[_address] -= _value; // Decrease the balance of the specified address
}
}
}
