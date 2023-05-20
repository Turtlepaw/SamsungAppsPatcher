#printf "\033[0;31mThe install.sh script does NOT work, press CTRL + C to cancel\n"

#sleep 5

apks=(
  "samsung-electronics-co-ltd/galaxy-watch4-plugin/galaxy-watch4-plugin-2-2-11-23050851-release/galaxy-watch4-plugin-2-2-11-23050851-android-apk-download/"
  "samsung-electronics-co-ltd/samsung-gear/samsung-gear-2-2-55-23033161-release/galaxy-wearable-samsung-gear-2-2-55-23033161-android-apk-download/"
  "samsung-electronics-co-ltd/s-health/s-health-6-23-5-027-release/samsung-health-6-23-5-027-android-apk-download/"
  "samsung-electronics-co-ltd/samsung-accessory-service/samsung-accessory-service-3-1-96-40130-release/samsung-accessory-service-3-1-96-40130-android-apk-download/"
)

names=(
  "originals/watch4plugin.apk"
  "originals/wearable.apk"
  "originals/shealth.apk"
  "originals/accessoryservice.apk"
)

getDownloadLink(){
  base="https://www.apkmirror.com";
  url="https://www.apkmirror.com/apk/${1}"
  content=$(wget -U "Mozilla/5.0 (Windows NT 10.0; Win64; x64)" "$url" -q -O -)
  link=$(echo "$content" | perl -lne 'print $1 if /<a [^>]*class="[^"]*downloadButton[^"]*" [^>]*href="([^"]*)"/')
  echo "$base$link"
}

if [ -d "originals" ]
then
  rm -rf originals
    printf "\033[1;33mFound a originals folder, deleting...\n"  
fi

mkdir originals

printf "\033[0;32mDownloading...\n"

for i in "${!apks[@]}"; do
  apk="${apks[i]}"
  name="${names[i]}"
  link=$(getDownloadLink "$apk")
  #wget -q -U "Mozilla/5.0 (Windows NT 10.0; Win64; x64)" "$link" -O "$name"
  printf "\033[0;32mCreated a download link for $name \033[0m\033[1;33m($link)\n\n"
done

#printf "\033[0;32mDownloaded 4 files\n"