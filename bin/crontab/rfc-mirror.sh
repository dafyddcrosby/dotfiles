#!/bin/sh
mkdir -p ~/rfc-mirror
rsync -avz --delete ftp.rfc-editor.org::rfcs-text-only ~/rfc-mirror
