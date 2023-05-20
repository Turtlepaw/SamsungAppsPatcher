printf "\033[0;31mThe rename script is HIGHLY unstable and may rename the wrong files, press CTRL + C to cancel\n"

sleep 5

newNames=(
  "shealth.apk"
  "accessoryservice.apk"
  "watch4plugin.apk"
  "wearable.apk"
)

allFiles=($(find originals -maxdepth 1 -type f))
for i in "${!allFiles[@]}"; do
  fileName="${allFiles[i]}"
  name="${newNames[i]}"
  mv "$fileName" "originals/$name"
  printf "\033[0;32mRenamed $name\n\n"
done