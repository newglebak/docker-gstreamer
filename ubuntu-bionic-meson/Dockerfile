FROM ubuntu:18.04

ARG GST_VERSION=1.14.1

RUN apt-get -y update

# Install dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
	autoconf \
	automake \
	autopoint \
	bison \
	build-essential \
	ca-certificates \
	flex \
	g++ \
	gettext \
	gir1.2-gstreamer-1.0 \
	git \
	git-core \
	gobject-introspection \
	liba52-0.7.4-dev \
	libaa1-dev \
	libass-dev \
	libalsa-ocaml-dev \
	libavfilter-dev \
	libbs2b-dev \
	libcaca-dev \
	libcdio-dev \
	libcdparanoia-dev \
	libcurl-ocaml-dev \
	libdc1394-22-dev \
	libde265-dev \
	libdrm-dev \
	libdts-dev \
	libdv4-dev \
	libfaac-dev \
	libfaad-dev \
	libfdk-aac-dev \
	libflac-dev \
	libfluidsynth-dev \
	libgcrypt20-dev \
	libgirepository1.0-dev \
	libglib2.0-dev \
	libgsm1-dev \
	libgme-dev \
	libshout3-dev \
	libsidplay1-dev \
	libjack-dev \
	libjpeg-dev \
	libjpeg-turbo8-dev \
	libssl-dev \
	libmp3lame-dev \
	libmpeg2-4-dev \
	libmpg123-dev \
	libnice-dev \
	libogg-dev \
	libopus-dev \
	liborc-dev \
	libsoup2.4-dev \
	libpango1.0-dev \
	libspeex-dev \
	libpng-dev \
	libpthread-stubs0-dev \
	libpulse-dev \
	librtmp-dev \
	libsrtp0-dev \
	libsrtp2-dev \
	librsvg2-dev \
	libtag1-dev \
	libtheora-dev \
	libtool \
	libtwolame-dev \
	libudev-dev \
	libva-dev \
	libvdpau-dev \
	libvisual-0.4-dev \
	libvo-aacenc-dev \
	libvo-amrwbenc-dev \
	libvorbis-dev \
	libvorbisidec-dev \
	libvpx-dev \
	libvulkan-dev \
	libwavpack-dev \
	libwayland-dev \
	libwebp-dev \
	libwebrtc-audio-processing-dev \
	libwildmidi-dev \
	libx11-dev \
	libx264-dev \
	libx265-dev \
	libxrandr-dev \
	libxv-dev \
	libzbar-dev \
	make \
	meson \
	nasm \
	nettle-dev \
	openssl \
	pkg-config \
	python \
	python3-gi \
	python3-pip \
	python3-dev \
	python-gi-dev \
	wayland-protocols \
	wget \
	xz-utils \
	yasm

#
# GStreamer
#
RUN wget -qO- https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-$GST_VERSION.tar.xz | tar xJ && \
	cd gstreamer-$GST_VERSION && \
	meson build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu --buildtype=release && \
	ninja -C build -j `nproc` && \
	ninja -C build install && \
	cd - && \
	rm -rf gstreamer-$GST_VERSION

#
# GStreamer Plugins Base
#
RUN wget -qO- https://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-$GST_VERSION.tar.xz | tar xJ && \
	cd gst-plugins-base-$GST_VERSION && \
	meson build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu --buildtype=release && \
	ninja -C build -j `nproc` && \
	ninja -C build install && \
	cd - && \
	rm -rf gst-plugins-base-$GST_VERSION

#
# GStreamer Plugins Good
#
RUN wget -qO- https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-$GST_VERSION.tar.xz | tar xJ && \
	cd gst-plugins-good-$GST_VERSION && \
	meson build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu --buildtype=release && \
	ninja -C build -j `nproc` && \
	ninja -C build install && \
	cd - && \
	rm -rf gst-plugins-good-$GST_VERSION

#
# GStreamer Plugins Bad
#
RUN wget -qO- https://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-$GST_VERSION.tar.xz | tar xJ && \
	cd gst-plugins-bad-$GST_VERSION && \
	meson build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu --buildtype=release && \
	ninja -C build -j `nproc` && \
	ninja -C build install && \
	cd - && \
	rm -rf gst-plugins-bad-$GST_VERSION

#
# GStreamer Plugins Ugly
#
RUN wget -qO- https://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-$GST_VERSION.tar.xz | tar xJ && \
	cd gst-plugins-ugly-$GST_VERSION && \
	meson build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu --buildtype=release && \
	ninja -C build -j `nproc` && \
	ninja -C build install && \
	cd - && \
	rm -rf gst-plugins-ugly-$GST_VERSION

#
# GStreamer Plugins Libav
#
RUN wget -qO- https://gstreamer.freedesktop.org/src/gst-libav/gst-libav-$GST_VERSION.tar.xz | tar xJ && \
	cd gst-libav-$GST_VERSION && \
	meson build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu --buildtype=release && \
	ninja -C build -j `nproc` && \
	ninja -C build install && \
	cd - && \
	rm -rf gst-plugins-libav-$GST_VERSION

#
# GStreamer RTSP Server
#
RUN wget -qO- https://gstreamer.freedesktop.org/src/gst-rtsp-server/gst-rtsp-server-$GST_VERSION.tar.xz | tar xJ && \
	cd gst-rtsp-server-$GST_VERSION && \
	meson build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu --buildtype=release && \
	ninja -C build -j `nproc` && \
	ninja -C build install && \
	cd - && \
	rm -rf gst-rtsp-server-$GST_VERSION

#
# GStreamer VA-API
#
#RUN wget -qO- https://gstreamer.freedesktop.org/src/gstreamer-vaapi/gstreamer-vaapi-$GST_VERSION.tar.xz | tar xJ && \
#	cd gstreamer-vaapi-$GST_VERSION && \
#	meson build --prefix=/usr --libdir=/usr/lib --buildtype=release && \
#	ninja -C build -j `nproc` && \
#	ninja -C build install && \
#	cd - && \
#	rm -rf gstreamer-vaapi-$GST_VERSION

#
# GStreamer Python
#
RUN wget -qO- https://gstreamer.freedesktop.org/src/gst-python/gst-python-$GST_VERSION.tar.xz | tar xJ && \
	cd gst-python-$GST_VERSION && \
	meson build --prefix=/usr --libdir=/usr/lib/x86_64-linux-gnu --buildtype=release && \
	ninja -C build -j `nproc` && \
	ninja -C build install && \
	cd - && \
	rm -rf gst-python-$GST_VERSION

# Do some cleanup
RUN DEBIAN_FRONTEND=noninteractive \
	apt-get clean && \
	apt-get autoremove -y

COPY examples /root

