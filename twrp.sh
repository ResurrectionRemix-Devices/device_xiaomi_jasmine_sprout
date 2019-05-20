if [ ! -f bootable/recovery/twrp.cpp ]
then
git -C bootable/recovery remote add -f twrp https://github.com/omnirom/android_bootable_recovery.git
git -C bootable/recovery checkout twrp/android-9.0
git -C bootable/recovery pull twrp
git -C bootable/recovery fetch https://gerrit.omnirom.org/android_bootable_recovery refs/changes/48/32648/3 && git -C bootable/recovery cherry-pick FETCH_HEAD
git -C bootable/recovery fetch https://gerrit.omnirom.org/android_bootable_recovery refs/changes/19/32819/5 && git -C bootable/recovery cherry-pick FETCH_HEAD
git -C bootable/recovery fetch https://gerrit.omnirom.org/android_bootable_recovery refs/changes/57/32957/4 && git -C bootable/recovery cherry-pick FETCH_HEAD
git -C bootable/recovery fetch https://gerrit.omnirom.org/android_bootable_recovery refs/changes/99/33999/1 && git -C bootable/recovery cherry-pick FETCH_HEAD
git -C bootable/recovery fetch https://gerrit.omnirom.org/android_bootable_recovery refs/changes/00/34000/1 && git -C bootable/recovery cherry-pick FETCH_HEAD
git -C bootable/recovery fetch https://gerrit.omnirom.org/android_bootable_recovery refs/changes/01/34001/1 && git -C bootable/recovery cherry-pick FETCH_HEAD
git -C bootable/recovery fetch https://gerrit.omnirom.org/android_bootable_recovery refs/changes/02/34002/1 && git -C bootable/recovery cherry-pick FETCH_HEAD
git -C bootable/recovery fetch https://gerrit.omnirom.org/android_bootable_recovery refs/changes/03/34003/1 && git -C bootable/recovery cherry-pick FETCH_HEAD
git -C system/Update_engine fetch "http://gerrit.aicp-rom.com/AICP/system_update_engine" refs/changes/84/91184/1 && git -C system/update_engine cherry-pick FETCH_HEAD
fi
