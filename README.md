# nagaminenot Dotfiles
for Arch Linux, Dvorak, fish, xmonad, terminator

## Arch Linuxセットアップ参考
### Arch構築ガイド
https://qiita.com/Gen-Arch/items/da296b7cbe5d87abc5a4
### ShellScriptでArch構築
http://www.kunst1080.net/entry/2014/10/19/212305

## パッケージ管理
pacman & yaourt
https://wiki.archlinux.jp/index.php/Pacman_%E3%83%92%E3%83%B3%E3%83%88

```bash
# インストール済パッケージ一覧保存（Pacman）
pacman -Qqen > pkglist_pacman.txt
# インストール済パッケージ一覧保存（Yaourt）
yaourt -Qmq > pkglist_yaourt.txt
```

## 設定反映

```bash
bash setup.sh
```
