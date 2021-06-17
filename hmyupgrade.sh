
#!/bin/bash
# This script assumes the Harmony binary is installed as harmony in the users home directory

binaryDir=~
binaryUrl=https://harmony.one/binary

echo "DK Validator - Harmony upgrade script"
echo "Current Harmony version is:"
$binaryDir/harmony -V
echo "Clearing backup folder..."
rm -r $binaryDir/hmybackup
mkdir $binaryDir/hmybackup
echo "Backing up existing binary..."
cp $binaryDir/harmony $binaryDir/hmybackup
echo "Downloading lastest harmony binary from $binaryUrl..."
curl -LO $binaryUrl
echo "Replacing installed binary with latest..."
mv binary $binaryDir/harmony && chmod +x $binaryDir/harmony
echo "Restarting harmony service..."
sudo service harmony restart
echo "Harmony upgrade complete!"
echo "Upgrade complete. Updated version is:"
~/harmony -V
