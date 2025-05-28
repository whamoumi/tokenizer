# 💰 MyToken (MTK42)

A simple ERC-20 token smart contract deployed on the Ethereum Sepolia testnet.

---

## 📌 Project Overview

This project implements a custom ERC-20 token called **MyToken42 (MTK42)** using Solidity and OpenZeppelin. It is developed and deployed using **Hardhat**, hosted through **Infura**, and tested on the **Sepolia** testnet.

---

## 🛠️ Technologies Used

### → Solidity
Solidity is the programming language used to write smart contracts on the Ethereum blockchain. It enables you to define decentralized logic directly on-chain.

### → ERC-20
ERC-20 is a standard for fungible tokens, meaning all tokens have the same value and can be exchanged one-to-one.

### → OpenZeppelin
OpenZeppelin provides a secure and community-vetted library of smart contract standards, including ERC-20. We use it to reduce bugs and ensure compatibility.

### → Infura
Infura is a scalable blockchain infrastructure provider used to deploy and interact with the contract on Ethereum without running a full node.

### → Sepolia Testnet
Sepolia is the Ethereum test network used to simulate real deployments for testing purposes without spending real ETH.

### → Hardhat
Hardhat is a professional Ethereum development environment. It supports compiling, testing, and deploying smart contracts with ease.

---


## ⚙️ Setup & Installation

1. **Install dependencies**

```bash
npm install
```

2. **Compile the contract**

```bash
npx hardhat compile
```

3. **Create `.env` file**

Add your environment variables:

```env
PRIVATE_KEY=your_wallet_private_key
INFURA_SEPOLIA_ENDPOINT=https://sepolia.infura.io/v3/YOUR_PROJECT_ID
```

4. **Deploy the contract to Sepolia**

```bash
npx hardhat run --network sepolia scripts/deploy.js
```

---

## 📄 Contract Summary

- **Token Name**: MyToken42
- **Symbol**: MTK42
- **Contract**: 0x35a12A36fcE62D1912f6C47E1bBf7C94aE5B01e8
- **Initial Supply**: Defined at deployment (`cap`)

### Functions

- `constructor(uint256 cap)`: Mints the initial supply to the owner.
- `You_are_the_owner()`: Returns confirmation if the caller is the contract owner.

---

## 📬 Contact

For any questions or contributions, feel free to open an issue or contact the maintainer.

---