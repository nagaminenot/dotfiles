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
nitrogen $HOME/dotfiles/images/S
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

## フタを閉じた際のサスペンド設定
`lid_close` と以下リンクを参考

<http://blog.tekito.org/2011/08/20/acpid-%E3%82%92%E4%BD%BF%E3%81%A3%E3%81%A6%E3%82%B5%E3%82%B9%E3%83%9A%E3%83%B3%E3%83%89/>

※Swapファイルは必須なのか…？
<https://wiki.archlinux.jp/index.php/%E3%82%B9%E3%83%AF%E3%83%83%E3%83%97>

## Chromeのファイル選択などで、ファイルマネージャが見切れる場合
- `nautilus` を使う
- DPI変更や、再インストール、再起動を繰り返す