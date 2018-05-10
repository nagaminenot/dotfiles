import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.FadeInactive

-- 起動時のコード
myStartupHook   = do
    spawn "redshift"
    spawn "fcitx-autostart"
    spawn "bash $HOME/dotfiles/display_settings/1v1.sh"
    spawn "nitrogen --restore"
    spawn "xscreensaver -no-splash"

-- 設定
myConfig = defaultConfig {
    startupHook    = myStartupHook
    , terminal     = "terminator"
    , logHook      = fadeInactiveLogHook 0xdddddddd
}

-- 実行
main = xmonad =<< xmobar myConfig