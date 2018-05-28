#!/usr/bin/env sh

export GST_PLUGIN_PATH=$GST_PLUGIN_PATH:$PWD/plugins
export GST_DEBUG=python:4

echo "Running example #1: sink element"
gst-launch-1.0 fakesrc num-buffers=10 ! mysink

echo "Running example #2: identity element"
gst-launch-1.0 fakesrc num-buffers=10 ! identity_py ! fakesink

echo "Done!"
