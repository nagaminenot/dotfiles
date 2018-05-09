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
```

## パッケージリストバックアップ

```bash
# インストール済パッケージ一覧保存（Pacman）
pacman -Qqen > pkglist_pacman.txt
# インストール済パッケージ一覧保存（Yaourt）
yaourt -Qmq > pkglist_yaourt.txt
```

## fishの設定

```bash
curl -L http://get.oh-my.fish | fish
omf install bobthefish
```

## mozcの設定
```
/usr/lib/mozc/mozc_tool --mode=config_dialog
```

## Wifiとか
<http://cotaro-science.blogspot.jp/2014/08/arch-linux-lan.html>