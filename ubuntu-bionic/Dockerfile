FROM ubuntu:18.04

ARG GST_VERSION=1.14.0

RUN apt-get -y update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    wget \
    ca-certificates \
    openssl \
    xz-utils \
    automake \
    libtool \
    make \
    git \
    pkg-config \
    autopoint \
    bison \
    flex \
    python \
    libglib2.0-dev \
    python-dev \
    python-gi-dev \
    gobject-introspection \
    libgirepository1.0-dev \
    gir1.2-gstreamer-1.0
#
# Orc
#
RUN wget -qO- https://gstreamer.freedesktop.org/src/orc/orc-0.4.28.tar.xz | tar xJ && \
    cd orc-0.4.28 && \
    ./autogen.sh --disable-gtk-doc --prefix=/usr && \
    make -j`nproc` && \
    make install && \
    cd - && \
    rm -rf orc-0.4.28

#
# GStreamer
#
RUN wget -qO- https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-$GST_VERSION.tar.xz | tar xJ && \
    cd gstreamer-$GST_VERSION && \
    ./autogen.sh --enable-introspection --disable-gtk-doc --prefix=/usr && \
    make -j`nproc` && \
    make install && \
    cd - && \
    rm -rf gstreamer-$GST_VERSION

#
# GStreamer Plugins Base
#

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    libogg-dev \
    libopus-dev \
    libtheora-dev \
    libvorbis-dev \
    libpango1.0-dev

RUN wget -qO- https://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-$GST_VERSION.tar.xz | tar xJ && \
    cd gst-plugins-base-$GST_VERSION && \
    ./autogen.sh --enable-introspection --disable-gtk-doc --prefix=/usr && \
    make -j`nproc` && \
    make install && \
    cd - && \
    rm -rf gst-plugins-base-$GST_VERSION

#
# GStreamer Plugins Good
#

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    g++ \
    libjpeg-dev \
    libspeex-dev \
    libpng-dev \
    libvpx-dev

RUN wget -qO- https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-$GST_VERSION.tar.xz | tar xJ && \
    cd gst-plugins-good-$GST_VERSION && \
    ./autogen.sh --disable-gtk-doc --prefix=/usr && \
    make -j`nproc` && \
    make install && \
    cd - && \
    rm -rf gst-plugins-good-$GST_VERSION

#
# GStreamer Plugins Bad
#

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    libfaac-dev \
    libfaad-dev \
    libwebp-dev \
    libvo-aacenc-dev \
    libopus-dev \
    libnice-dev \
    libwebrtc-audio-processing-dev \
    librtmp-dev \
    nettle-dev \
    openssl \
    libgcrypt20-dev \
    libx265-dev \
    libsrtp2-dev \
    libfdk-aac-dev \
    libvdpau-dev \
    libvulkan-dev \
    librsvg2-dev \
    libde265-dev

RUN wget -qO- https://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-$GST_VERSION.tar.xz | tar xJ && \
    cd gst-plugins-bad-$GST_VERSION && \
    ./autogen.sh --disable-gtk-doc --prefix=/usr && \
    make -j`nproc` && \
    make install && \
    cd - && \
    rm -rf gst-plugins-bad-$GST_VERSION

#
# GStreamer Plugins Ugly
#

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    libx264-dev

RUN wget -qO- https://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-$GST_VERSION.tar.xz | tar xJ && \
    cd gst-plugins-ugly-$GST_VERSION && \
    ./autogen.sh --disable-gtk-doc --prefix=/usr && \
    make -j`nproc` && \
    make install && \
    cd - && \
    rm -rf gst-plugins-ugly-$GST_VERSION

#
# GStreamer Libav
#

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    yasm \
    nasm

RUN wget -qO- https://gstreamer.freedesktop.org/src/gst-libav/gst-libav-$GST_VERSION.tar.xz | tar xJ && \
    cd gst-libav-$GST_VERSION && \
    ./autogen.sh --disable-gtk-doc --prefix=/usr && \
    make -j`nproc` && \
    make install && \
    cd - && \
    rm -rf gst-libav-$GST_VERSION

#
# GStreamer Python
#

#RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
#    python-dev \
#    python-gi-dev \
#    gobject-introspection \
#    libgirepository1.0-dev \
#    gir1.2-gstreamer-1.0

RUN wget -qO- https://gstreamer.freedesktop.org/src/gst-python/gst-python-$GST_VERSION.tar.xz | tar xJ && \
    cd gst-python-$GST_VERSION && \
    ./configure --prefix=/usr && \
    make -j`nproc` && \
    make install && \
    cd - && \
    rm -rf gst-python-$GST_VERSION

#
# GStreamer VA-API
#

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    libva-dev

RUN wget -qO- https://gstreamer.freedesktop.org/src/gstreamer-vaapi/gstreamer-vaapi-$GST_VERSION.tar.xz | tar xJ && \
    cd gstreamer-vaapi-$GST_VERSION && \
    ./configure --disable-gtk-doc --disable-x11 --prefix=/usr && \
    make -j`nproc` && \
    make install && \
    cd - && \
    rm -rf gstreamer-vaapi-$GST_VERSION

#
# GStreamer Editing Services
#

RUN wget -qO- https://gstreamer.freedesktop.org/src/gstreamer-editing-services/gstreamer-editing-services-$GST_VERSION.tar.xz | tar xJ && \
    cd gstreamer-editing-services-$GST_VERSION && \
    ./autogen.sh --disable-gtk-doc --prefix=/usr && \
    make -j`nproc` && \
    make install && \
    cd - && \
    rm -rf gstreamer-editing-services-$GST_VERSION

COPY test.py /root/test.py

#
# Do some cleanup
#
RUN DEBIAN_FRONTEND=noninteractive  apt-get clean && apt-get autoremove -y


