#!/data/data/com.termux/files/usr/bin/bash
echo "Granting Termux access to phone storage..."
termux-setup-storage
echo "Updating the package cache"
apt update >/dev/null 2>&1
echo "Installing python3, ffmpeg"
pkg install -y python3 ffmpeg
echo "Installing yt-dlp..."
pip3 install yt-dlp
echo "Downloading Official Gazette YouTube channel..."
mkdir "~/storage/downloads/Martial Law Videos"
cd "~/storage/downloads/Martial Law Videos"
# Here we go!!
yt-dlp -f 22 \
    https://www.youtube.com/watch?v=3qHJ1WyQIWY \
    https://www.youtube.com/watch?v=6DkcMF8cLNY \
    https://www.youtube.com/watch?v=5gNujHs-Gho \
    https://www.youtube.com/watch?v=H3AN7MCyOa4 \
    https://www.youtube.com/watch?v=y9qkOLcpWJ4 \
    https://www.youtube.com/watch?v=WnM2PxIILDk \

