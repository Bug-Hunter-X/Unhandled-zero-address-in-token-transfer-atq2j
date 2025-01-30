# Unhandled zero address in token transfer

This repository demonstrates an uncommon bug in Solidity smart contracts: the failure to handle zero addresses in token transfers.  This vulnerability can lead to the loss of tokens if a user attempts to transfer funds to the zero address (which is invalid). The bug is in the `transfer` function, which lacks a check for this condition. The solution adds this check to prevent token loss.

## Bug
The original `transfer` function doesn't check if the `to` address is the zero address. If a transaction attempts to send tokens to the zero address, the tokens are effectively lost.

## Solution
The solution involves adding a `require` statement to check if the `to` address is non-zero.  This prevents the transaction from executing if an attempt is made to transfer to the zero address.

## How to reproduce
1. Compile the `bug.sol` contract.
2. Deploy the contract to a test network.
3. Try to transfer tokens to the zero address (0x0000000000000000000000000000000000000000).
4. Observe that the tokens are lost (they aren't reverted, they just disappear).
5. Then compile and deploy `bugSolution.sol`. You will now find the transfer function is safe.