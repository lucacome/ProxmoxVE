#!/bin/bash
sed -i "1i# Modified by luca at $(date)" /etc/apt/sources.list.d/debian.sources
sed -i '/^# Modernized from \/etc\/apt\/sources\.list$/d' /etc/apt/sources.list.d/debian.sources
sed -i 's/^Components:.*$/Components: main contrib non-free non-free-firmware/' /etc/apt/sources.list.d/debian.sources
sed -i "/echo -e.*OS:/c\\echo -e \"    🖥️  \\\\033[m\\\\033[33m OS: \\\\033[1;92m\$(. /etc/os-release && echo \${NAME} - Version: \${VERSION_ID})\\\\033[m\"" /etc/profile.d/00_lxc-details.sh

