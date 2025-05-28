# 📘 Technical Documentation – MyToken (MTK42)

This documentation covers all aspects of the **MyToken** smart contract, a simple ERC-20 token developed with Solidity, based on OpenZeppelin, and deployed on the Sepolia testnet.

---

## 🔷 General Overview

`MyToken` is a contract compliant with the ERC-20 standard. It allows the creation of a token named **MyToken42 (MTK42)**. The entire supply is generated at deployment time and transferred to the contract creator.

---

## 🛠️ Main Features

- ✅ Compliant with **ERC-20** standard
- 👤 Attribution of all tokens to the owner (deployer)
- 🔐 Simple ownership verification via a public function

---

## 🧱 Contract Structure

```solidity
contract MyToken is ERC20
```

- Inherits from ERC20 standard via OpenZeppelin
- Uses a constructor taking a `cap` parameter (the total tokens to create)
- `owner` attribute: the address that deploys the contract (automatically initialized)

---

## 🔎 Function Details

### 🔹 Constructor

```solidity
constructor(uint256 cap) ERC20("MyToken42", "MTK42")
```

- Initializes the token name and symbol
- Assigns the creator's address as owner
- Creates (`mint`) the total supply by multiplying `cap` by `10 ** decimals()`

---

### 🔹 `You_are_the_owner` Function

```solidity
function You_are_the_owner() public view returns(string memory)
```

- Verifies that the caller is the owner
- Returns `"You are the owner"` if true, otherwise throws an error