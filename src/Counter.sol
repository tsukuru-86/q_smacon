// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/// @title カウンターコントラクト
/// @notice このコントラクトは、数値の保存、増加、およびハッシュ計算機能を提供します
contract Counter {
    // コントラクトの状態を保持する変数
    uint256 public number;

    /// @notice 保存されている数値を新しい値に設定します
    /// @param newNumber 設定する新しい数値
    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    /// @notice 保存されている数値を1増加させます
    function increment() public {
        number++;
    }

    /// @notice 4つの入力値からKeccak-256ハッシュを計算し、uint256として返します
    /// @dev この関数は、入力値の整合性チェックや、一意の識別子生成に使用できます
    /// @param ans_a 1つ目の入力値
    /// @param ans_b 2つ目の入力値
    /// @param ans_c 3つ目の入力値
    /// @param ans_d 4つ目の入力値
    /// @return 計算されたハッシュ値（uint256型）
    function answer(
        uint256 ans_a,
        uint256 ans_b,
        uint256 ans_c,
        uint256 ans_d
    ) public pure returns (uint256) {
        // 入力値をパックしてハッシュ化し、uint256にキャスト
        return uint256(keccak256(abi.encodePacked(ans_a, ans_b, ans_c, ans_d)));
    }
}