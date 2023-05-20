if [ -d "originals" ]
then
  rm -rf originals
    printf "\033[1;33mFound a originals folder, deleting...\n"  
fi

mkdir originals

printf "\033[0;32mDownloading...\n"

wget https://www.apkmirror.com/apk/samsung-electronics-co-ltd/galaxy-watch4-plugin/galaxy-watch4-plugin-2-2-11-23050851-release/galaxy-watch4-plugin-2-2-11-23050851-android-apk-download/download/?key=44679aafbf3967623d7058bbfd0a645635b48862 -o originals/watch4plugin.apk
wget https://www.apkmirror.com/apk/samsung-electronics-co-ltd/samsung-gear/samsung-gear-2-2-55-23033161-release/galaxy-wearable-samsung-gear-2-2-55-23033161-android-apk-download/download/?key=6b77239f59e67bd6aa5103cdd0eb5d616e760353 -o originals/wearable.apk
wget https://www.apkmirror.com/apk/samsung-electronics-co-ltd/s-health/s-health-6-23-5-027-release/samsung-health-6-23-5-027-android-apk-download/download/?key=57d067286686764be4021ca7104cf5404168451c -o originals/shealth.apk
wget https://www.apkmirror.com/apk/samsung-electronics-co-ltd/samsung-accessory-service/samsung-accessory-service-3-1-96-40130-release/samsung-accessory-service-3-1-96-40130-android-apk-download/download/?key=1ac2658b6752191e9fbea820061aeef9caa5039d -o originals/accessoryservice.apk

printf "\033[0;32mDownloaded 4 files\n"