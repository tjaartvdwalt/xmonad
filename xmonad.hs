import XMonad
import Data.Monoid
import System.Exit
import XMonad.Hooks.DynamicLog
 
import qualified XMonad.StackSet as W
import qualified Data.Map        as M
 
-- The preferred terminal program, which is used in a binding below and by
-- certain contrib modules.
--
myTerminal      = "urxvt"
 
-- myModMask       = mod1Mask --left alt
myModMask       = mod4Mask --windows key
myWorkspaces    = ["1","2","3","4","5","6","7","8","9"]
 
------------------------------------------------------------------------
-- Command to launch the bar.
myBar = "xmobar"

-- Custom PP, configure it as you like. It determines what is being written to the bar.
myPP = xmobarPP { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" }

-- Key binding to toggle the gap for the bar.
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

------------------------------------------------------------------------
-- Run xmonad with the settings you specify.
main = xmonad =<< statusBar myBar myPP toggleStrutsKey defaults

defaults = defaultConfig {
      -- simple stuff
        terminal           = myTerminal,
        modMask            = myModMask,
        workspaces         = myWorkspaces
}
