// SPDX-License-Identifier: UNLICENSED
   pragma solidity ^0.8.13;

   import "forge-std/Script.sol";
   import {Counter} from "../src/Counter.sol";

   contract CounterScript is Script {
       function run() public {
           // デプロイ済みのCounterコントラクトのアドレスを指定
           address counterAddress = 0x5FbDB2315678afecb367f032d93F642f64180aa3; // この値は実際のデプロイ後のアドレスに置き換える必要があります
           
           Counter counter = Counter(counterAddress);
           
           // 問題の解答を入力
           uint256 ans_a = 2; // forge init q_smacon
           uint256 ans_b = 4; // anvil
           uint256 ans_c = 3; // forge create --rpc-url http://127.0.0.1:8545/ --private-key <YOUR_PRIVATE_KEY> src/Counter.sol:Counter
           uint256 ans_d = 4; // forge script script/Counter.s.sol --rpc-url http://127.0.0.1:8545/ --private-key <YOUR_PRIVATE_KEY>
           
           // answer関数を呼び出して結果を取得
           uint256 result = counter.answer(ans_a, ans_b, ans_c, ans_d);
           
           console.log("Result:", result);
       }
   }
