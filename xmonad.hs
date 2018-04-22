import XMonad

myStartupHook   = do
    spawn "redshift"
    spawn "fcitx-autostart"
    spawn "nitrogen --restore"

main = do
    xmonad defaultConfig
        { startupHook   = myStartupHook }