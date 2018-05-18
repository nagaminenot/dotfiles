import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.FadeInactive

-- 起動時のコード
myStartupHook   = do
    spawn "redshift -b 0.9:0.6"
    spawn "fcitx-autostart"
    spawn "bash $HOME/dotfiles/display_settings/1v1.sh"
    spawn "nitrogen --restore"
    spawn "xscreensaver -no-splash"
    spawn "acpid start"

-- 設定
myConfig = defaultConfig {
    startupHook    = myStartupHook
    , terminal     = "terminator"
    , logHook      = fadeInactiveLogHook 0xdddddddd
}

-- 実行
main = xmonad =<< xmobar myConfig