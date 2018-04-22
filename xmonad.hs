import XMonad

myStartupHook   = do
    spawn "redshift"
    spawn "fcitx-autostart"
    spawn "nitrogen --restore"

main = xmonad defaultConfig
     { 
         startupHook    = myStartupHook
     }
