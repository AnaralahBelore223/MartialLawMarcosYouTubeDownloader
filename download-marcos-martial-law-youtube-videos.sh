#!/bin/sh
install_deb () {
    pkexec sh -c 'apt-get install -y python3-pip python3; pip3 install yt-dlp'
}

create_directory_if_not_exist () {
    mkdir $HOME/Downloads/martial-law-videos
}

download_youtube_videos () {
    cd $HOME/Downloads/martial-law-videos
    yt-dlp -f 22 \
    https://www.youtube.com/watch?v=3qHJ1WyQIWY \
    https://www.youtube.com/watch?v=6DkcMF8cLNY \
    https://www.youtube.com/watch?v=5gNujHs-Gho \
    https://www.youtube.com/watch?v=H3AN7MCyOa4 \
    https://www.youtube.com/watch?v=y9qkOLcpWJ4 \
    https://www.youtube.com/watch?v=WnM2PxIILDk \

}

if [ ! -f /usr/local/bin/yt-dlp ]; then
    pkexec pip3 install yt-dlp
    if [ ! -f /usr/bin/pip3 ]; then
        install_deb
    fi
    if [ ! -d $HOME/Downloads/martial-law-videos ]; then
        create_directory_if_not_exist
    fi
fi
create_directory_if_not_exist
download_youtube_videos
