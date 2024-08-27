# q_smacon プロジェクト

このプロジェクトは、東京大学ブロックチェーン講座の復習用のミニ課題で、Foundryを使用したイーサリアムスマートコントラクト開発の学習と、Keccak-256ハッシュ関数の理解を目的としています。

## プロジェクト概要

q_smaconは以下の要素で構成されています：
- 基本的なカウンター機能を持つスマートコントラクト
- Keccak-256ハッシュ計算機能
- Foundryツールチェーンを使用した開発・テスト環境

## 主な機能

1. カウンターの値を設定・増加
2. 4つの入力値からKeccak-256ハッシュを計算

## Foundryについて

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:
- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## セットアップと使用方法

### 前提条件
- Foundryのインストール（[インストール手順](https://book.getfoundry.sh/getting-started/installation)）

### プロジェクトのセットアップ
1. リポジトリのクローン:
   ```
   git clone https://github.com/yourusername/q_smacon.git
   cd q_smacon
   ```
2. 依存関係のインストール:
   ```
   forge install
   ```

### ビルド
```shell
$ forge build
```

### テスト
```shell
$ forge test
```

### フォーマット
```shell
$ forge fmt
```

### ガススナップショット
```shell
$ forge snapshot
```

### ローカルノードの起動（Anvil）
```shell
$ anvil
```

### デプロイ
```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast（コントラクトとの対話）
```shell
$ cast <subcommand>
```

### ヘルプ
```shell
$ forge --help
$ anvil --help
$ cast --help
```

## プロジェクトの構造

- `src/Counter.sol`: メインのスマートコントラクト
- `script/Counter.s.sol`: デプロイメントスクリプト
- `test/`: テストファイル

## 注意事項

- このプロジェクトは教育目的で作成されています。実際の製品開発や本番環境での使用には適していません。
- デプロイや対話を行う際は、適切なネットワーク設定とプライベートキーの管理に注意してください。

## Keccak-256について

このプロジェクトでは、Keccak-256ハッシュ関数を使用しています。Keccak-256は:
- イーサリアムのコア暗号化アルゴリズムの一つ
- 任意長の入力を256ビットの固定長出力に変換
- 高い衝突耐性と一方向性を持つ

詳細な実装と使用例については、`src/Counter.sol`の`answer`関数を参照してください。

## 貢献

プロジェクトへの貢献を歓迎します。問題の報告や改善の提案は、Issueを通じて行ってください。

## ライセンス

このプロジェクトは [MIT License](LICENSE) のもとで公開されています。

## 参考文献

- [Foundry Book](https://book.getfoundry.sh/)
- [Solidity Documentation](https://docs.soliditylang.org/)
- [Ethereum Yellow Paper](https://ethereum.github.io/yellowpaper/paper.pdf) (Keccak-256の仕様について)
```
