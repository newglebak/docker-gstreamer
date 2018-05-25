FROM ubuntu:18.04

RUN apt-get -y update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
    gstreamer1.0-tools \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-vaapi \
    python3-gst-1.0

