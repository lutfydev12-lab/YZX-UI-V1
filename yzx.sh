#!/data/data/com.termux/files/usr/bin/bash

# Warna
R='\033[1;31m'; G='\033[1;32m'; Y='\033[1;33m'
B='\033[1;34m'; M='\033[1;35m'; C='\033[1;36m'
W='\033[1;37m'; D='\033[0;37m'; N='\033[0m'

clear

# ── Ambil Data ──
DEVICE=$(getprop ro.product.model 2>/dev/null || echo "Termux")
BRAND=$(getprop ro.product.brand 2>/dev/null || echo "Android")
KERNEL=$(uname -r | cut -d'-' -f1)
ANDROID=$(getprop ro.build.version.release 2>/dev/null || echo "?")
USER_NAME=$(whoami)
ARCH=$(uname -m)
IP=$(ip route get 1 2>/dev/null | awk '{print $7;exit}' || echo "offline")
LOAD=$(cat /proc/loadavg 2>/dev/null | awk '{print $1}' || echo "0")
RAM_TOTAL=$(free -m 2>/dev/null | awk '/Mem:/{print $2}' || echo "0")
RAM_USED=$(free -m 2>/dev/null | awk '/Mem:/{print $3}' || echo "0")
UPTIME=$(uptime 2>/dev/null | sed 's/.*up //;s/,.*//' || echo "-")

# ── ASCII Art YzX ID (Font Block Neon) ──
echo -e "${M}"
cat << "EOF"
 ██╗   ██╗███████╗██╗  ██╗    ██╗██████╗ 
 ╚██╗ ██╔╝╚══███╔╝╚██╗██╔╝   ██║██╔══██╗
  ╚████╔╝   ███╔╝  ╚███╔╝    ██║██║  ██║
   ╚██╔╝   ███╔╝   ██╔██╗    ██║██║  ██║
    ██║   ███████╗██╔╝ ██╗██╗██║██████╔╝
    ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝╚═╝╚═════╝ 
EOF
echo -e "${N}"

# ── Header UI Edition ──
echo -e "${Y}◆${N}${Y}────────────────────────${N} ${W}UI Edition${N} ${D}•${N} ${C}by${N} ${M}LUTFY${N} ${Y}────────────────────────${N}${Y}◆${N}"
echo ""

# ── Panel Device Information ──
echo -e "${C}  ┌────────────────────────────────────────────┐${N}"
echo -e "${C}  │${N}  ${C}◈ DEVICE INFORMATION${N}                        ${C}│${N}"
echo -e "${C}  ├────────────────────────────────────────────┤${N}"
printf "${C}  │${N} ${M}▹${N} ${D}%-10s${N} ${C}%s${N}\n" "User"    "$USER_NAME"
printf "${C}  │${N} ${M}▹${N} ${D}%-10s${N} ${C}%s${N}\n" "Device"  "$DEVICE"
printf "${C}  │${N} ${M}▹${N} ${D}%-10s${N} ${C}%s${N}\n" "Brand"   "$BRAND"
printf "${C}  │${N} ${M}▹${N} ${D}%-10s${N} ${C}%s${N}\n" "Android" "$ANDROID"
printf "${C}  │${N} ${M}▹${N} ${D}%-10s${N} ${C}%s${N}\n" "Kernel"  "$KERNEL"
printf "${C}  │${N} ${M}▹${N} ${D}%-10s${N} ${C}%s${N}\n" "Arch"    "$ARCH"
printf "${C}  │${N} ${M}▹${N} ${D}%-10s${N} ${C}%s${N}\n" "IP"      "$IP"
echo -e "${C}  └────────────────────────────────────────────┘${N}"
echo ""

# ── Panel System Status ──
echo -e "${G}  ┌────────────────────────────────────────────┐${N}"
echo -e "${G}  │${N}  ${G}◈ SYSTEM STATUS${N}                            ${G}│${N}"
echo -e "${G}  ├────────────────────────────────────────────┤${N}"
printf "${G}  │${N} ${M}▹${N} ${D}%-10s${N} ${G}%s${N}\n" "Time"    "$(date +%H:%M:%S)  ${D}|${N}  $(date +%d/%m/%Y)"
printf "${G}  │${N} ${M}▹${N} ${D}%-10s${N} ${G}%s${N}\n" "Day"     "$(date +%A)"
printf "${G}  │${N} ${M}▹${N} ${D}%-10s${N} ${G}%s${N}\n" "Uptime"  "$UPTIME"
printf "${G}  │${N} ${M}▹${N} ${D}%-10s${N} ${G}%s${N}\n" "Load"    "$LOAD"
printf "${G}  │${N} ${M}▹${N} ${D}%-10s${N} ${G}%s${N}\n" "RAM"     "${RAM_USED}MB ${D}/${N} ${RAM_TOTAL}MB"
echo -e "${G}  └────────────────────────────────────────────┘${N}"
echo ""

# ── Footer ──
echo -e "${Y}◆${N}${Y}───────────────────────${N} ${G}✦${N} ${W}Welcome back, ${C}${USER_NAME}${N} ${G}✦${N} ${Y}───────────────────────${N}${Y}◆${N}"
echo ""
