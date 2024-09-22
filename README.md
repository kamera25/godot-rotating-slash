# Godot シグナル&疎結合 サンプルゲーム
## このゲームについて
このプロジェクトは、Godot Engine を使用して作成されたシンプルなゲームです。  

## 発表スライド
以下の資料の内容でやりがちなミスを説明しています。  
このコードはそのミスを修善(疎結合 & ふるまいを意識した)した、プロジェクトとなります。
 * [スライド(SpeakerDeck)](https://speakerdeck.com/kamera25/godot-engine-degemuwozuo-rou-ridaburunodonosusume)

## 機能
ゲームを作成する際によく実装する、プリミティブな機能を実装しています。

- **プレイヤーの操作**: キャラクターは、十字キーで操作ができます。
- **エネミーのランダムウォーク**: エネミーは、5秒ごとにランダムな方向へ移動します。
- **ハートのUI**: HPに応じてハートの量が増減します。
- **ゲームオーバの処理**: HPが0となると、ゲームオーバの画面に遷移します。

## インストールと実行
1. [Godot Engine](https://godotengine.org/) をインストールしてください（バージョン: 4.3）
2. このリポジトリをクローンまたはダウンロードします:
    ```bash
    git clone https://github.com/kamera25/godot-rotating-slash
    ```
3. Godot エディタでプロジェクトを開きます。
4. `root.tscn` シーンを実行してゲームを開始します。

## ライセンス
このプロジェクトは、[MITライセンス](https://ja.wikipedia.org/wiki/MIT_License)のもとで公開されています。

## 素材をお借りした先
 * ぴぽや様 : https://pipoya.net/

