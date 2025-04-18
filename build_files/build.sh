#!/bin/bash

set -ouex pipefail

/ctx/scripts/cleanup.sh
/ctx/scripts/copy-root.sh
/ctx/scripts/install-google-chrome.sh
/ctx/scripts/install-rpm-packages.sh
/ctx/scripts/user-settings.sh

gtk-update-icon-cache -f /usr/share/icons/hicolor
systemctl enable podman.socket