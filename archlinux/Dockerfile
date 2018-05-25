FROM base/archlinux

#
# Base gstreamer package.
#
RUN pacman -Sy --noconfirm gstreamer

#
# Essential exemplary set of elements.
#
RUN pacman -Sy --noconfirm gst-plugins-base

#
# Good-quality plugins under LGPL license.
#
RUN pacman -Sy --noconfirm gst-plugins-good

#
# Plugins that need more quality, testing or documentation.
#
RUN pacman -Sy --noconfirm gst-plugins-bad

#
# Good-quality plugins that might pose distribution problems.
#
RUN pacman -Sy --noconfirm gst-plugins-ugly

#
# Libav-based plugin containing many decoders and encoders.
#
RUN pacman -Sy --noconfirm gst-libav

#
# VA-API support.
#
RUN pacman -Sy --noconfirm gstreamer-vaapi

#
# Gstreamer Python
#

RUN pacman -Sy --noconfirm gst-python

#
# Additional python packages
#
RUN pacman -Sy --noconfirm python-pip && pip install --upgrade pip requests jsonpickle observable

