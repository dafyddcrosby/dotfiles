#!/bin/sh
rsync -avz --delete ftp.rfc-editor.org::rfcs-text-only ~/rfc-mirror
