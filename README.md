# nagaminenot Dotfiles
for Arch Linux, Dvorak, fish, xmonad, terminator, pacman, yaourt

## セットアップ
### Arch Linux構築
※Desktopの時に参照にしたもの
https://qiita.com/Gen-Arch/items/da296b7cbe5d87abc5a4

※X1 Carbonの時に参照したもの
https://qiita.com/mopp/items/f1912433abbed69f5f99

### ユーザー追加
<http://d.hatena.ne.jp/uasi/20111121/1321804402>

<https://bbs.archlinux.org/viewtopic.php?id=148870>

### 日本語環境追加
http://note.kurodigi.com/post-0-19/

### Yaourtインストール
http://grainrigi.hatenablog.com/entry/2017/12/02/175901

### setup.shを使う

```bash
# 数回実施する必要あり（fcitx, nitrogen, terminator, Rictyに注意）
bash setup.sh
# 壁紙設定
nitrogen $HOME/dotfiles/images/
# fishの設定
curl -L http://get.oh-my.fish | fish
omf install bobthefish
# mozcの設定
/usr/lib/mozc/mozc_tool --mode=config_dialog
```

## パッケージリストバックアップ

```bash
# インストール済パッケージ一覧保存（Pacman）
pacman -Qqen > pkglist_pacman.txt
# インストール済パッケージ一覧保存（Yaourt）
yaourt -Qmq > pkglist_yaourt.txt
```

## Wifiとか
<http://cotaro-science.blogspot.jp/2014/08/arch-linux-lan.html>

## ハイバネーション設定
※Swapファイル必須。

スワップ領域を作成した状態で以下を参考に設定する

https://wiki.archlinux.jp/index.php/%E3%82%B9%E3%83%AF%E3%83%83%E3%83%97

https://wiki.archlinux.jp/index.php/%E9%9B%BB%E6%BA%90%E7%AE%A1%E7%90%86#.E9.81.85.E5.BB.B6.E3.83.8F.E3.82.A4.E3.83.90.E3.83.8D.E3.83.BC.E3.82.B7.E3.83.A7.E3.83.B3

## Chromeのファイル選択などで、ファイルマネージャが見切れる場合
- `nautilus` を使う
- DPI変更や、再インストール、再起動を繰り返す

## サスペンド時にすぐ復帰する問題
- `cat /proc/acpi/wakeup` でLID以外にenabledがあるか確認
- rootで、`echo HOGEHOGE > /proc/acpi/wakeup`
- X1CではGLAN, SLPBをdisableにしました