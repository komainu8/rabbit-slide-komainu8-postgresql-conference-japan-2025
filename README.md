# PostgreSQLでのセマンティックサーチへの挑戦

従来のキーワード検索は同義語や曖昧表現に弱く、必要な情報を見落としがちです。
本講演ではこの課題に対し、意味的な近さで探せるセマンティックサーチに挑戦します。
量子化と補正で軽量・高速な近似距離計算を実現するRaBitQをGroongaに実装し、PGroongaを通してPostgreSQLから利用可能にしました。
その仕組みと導入手順、FAQ／ナレッジ検索での活用例を交え、検索が使えるようになるまでの流れを紹介します。

## ライセンス

### スライド

CC BY-SA 4.0

原著作者：堀本 泰弘

### PGroongaのロゴ

CC BY 3.0

原著作者：Groongaプロジェクト

## 作者向け

### 表示

    rake

### 公開

    rake publish

## 閲覧者向け

### インストール

    gem install rabbit-slide--postgresql-conference-japan-2025

### 表示

    rabbit rabbit-slide--postgresql-conference-japan-2025.gem

