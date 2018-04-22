import XMonad
import XMonad.Hooks.DynamicLog

-- 起動時のコード
myStartupHook   = do
    spawn "redshift"
    spawn "fcitx-autostart"
    spawn "nitrogen --restore"

-- 設定
myConfig = defaultConfig {
    startupHook    = myStartupHook
    -- デバッグ用
    -- , focusedBorderColor = "#0000ff"
}

-- 実行
main = xmonad =<< xmobar myConfig