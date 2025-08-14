@echo off
echo Starting Samsung ADB debloat...

adb shell pm uninstall --user 0 com.facebook.appmanager
adb shell pm uninstall --user 0 com.facebook.services
adb shell pm uninstall --user 0 com.facebook.system
adb shell pm uninstall --user 0 com.samsung.android.app.clipboardedge
adb shell pm uninstall --user 0 com.samsung.android.app.omcagent
adb shell pm uninstall --user 0 com.samsung.android.app.taskedge
adb shell pm uninstall --user 0 com.samsung.android.bixby.agent
adb shell pm uninstall --user 0 com.samsung.android.bixby.wakeup
adb shell pm uninstall --user 0 com.samsung.android.bixbyvision.framework
adb shell pm uninstall --user 0 com.samsung.android.fmm
adb shell pm uninstall --user 0 com.samsung.android.forest
adb shell pm uninstall --user 0 com.samsung.android.game.gametools
adb shell pm uninstall --user 0 com.samsung.android.game.gos
adb shell pm uninstall --user 0 com.samsung.android.kidsinstaller
adb shell pm uninstall --user 0 com.samsung.android.scloud
adb shell pm uninstall --user 0 com.samsung.android.smartcallprovider
adb shell pm uninstall --user 0 com.samsung.android.spayfw
adb shell pm uninstall --user 0 com.samsung.android.stickercenter
adb shell pm uninstall --user 0 com.samsung.android.visionintelligence
adb shell pm uninstall --user 0 com.sec.android.app.sbrowser
adb shell pm uninstall --user 0 com.sec.android.diagmonagent

echo Done. Check your phone for results.
pause
