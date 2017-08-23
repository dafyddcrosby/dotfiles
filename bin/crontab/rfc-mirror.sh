#!/bin/sh
mkdir -p ~/rfc-mirror
mkdir -p ~/rfc-mirror-ids
rsync -avz --delete ftp.rfc-editor.org::rfcs-text-only ~/rfc-mirror
rsync -avzq --ignore-existing ftp.rfc-editor.org::ids-text-only ~/rfc-mirror-ids
