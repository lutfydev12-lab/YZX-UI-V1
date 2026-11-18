#!/data/data/com.termux/files/usr/bin/bash

# ==========================================
#   YZX-UI-V2 : SLEEK TECH EDITION
#   Created by: LUTFY
#   Theme: Clean, Modern, Minimalist
# ==========================================

# Warna (Biru, Cyan, Putih Elegan)
B='\033[1;34m' # Biru
C='\033[1;36m' # Cyan
W='\033[1;37m' # Putih
D='\033[0;90m' # Abu-abu Gelap
N='\033[0m'    # Reset

clear

# ── Animasi Loading (Clean Style) ──
echo -e "\n  ${C}YZX System${N} ${D}v2.0${N}"
echo -e "  ${D}Memulai layanan sistem...${N}\n"

# Loading Spinner Modern
spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏'
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf "  ${B}%c${N}  ${D}%s${N}" "$spinstr" "$2"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\r"
    done
    printf "  ${B}✓${N}  ${W}%s${N}\n" "$2"
}

# Simulasi loading rapi
sleep 0.8 & spinner $! "Memuat konfigurasi antarmuka"
sleep 0.6 & spinner $! "Mengambil informasi perangkat"
sleep 0.7 & spinner $! "Menyiapkan dashboard"
sleep 0.4 & spinner $! "Menghubungkan ke sistem"

sleep 0.2
clear

# ── Ambil Data ──
DEVICE=$(getprop ro.product.model 2>/dev/null || echo "Unknown")
BRAND=$(getprop ro.product.brand 2>/dev/null || echo "Android")
KERNEL=$(uname -r | cut -d'-' -f1)
ANDROID=$(getprop ro.build.version.release 2>/dev/null || echo "?")
USER_NAME=$(whoami)
ARCH=$(uname -m)
IP=$(ip route get 1 2>/dev/null | awk '{print $7;exit}' || echo "Offline")
TIME=$(date +"%H:%M:%S")
DATE=$(date +"%d %b %Y")
RAM_TOTAL=$(free -m 2>/dev/null | awk '/Mem:/{print $2}' || echo "0")
RAM_USED=$(free -m 2>/dev/null | awk '/Mem:/{print $3}' || echo "0")

# ── Header ──
echo -e "${W}"
cat << "EOF"
  ╭──────────────────────────────────────────────╮
  │   ██╗   ██╗███████╗██╗  ██╗    ██╗██████╗    │
  │   ╚██╗ ██╔╝╚══███╔╝╚██╗██╔╝   ██║██╔══██╗   │
  │    ╚████╔╝   ███╔╝  ╚███╔╝    ██║██║  ██║   │
  │     ╚██╔╝   ███╔╝   ██╔██╗    ██║██║  ██║   │
  │      ██║   ███████╗██╔╝ ██╗██╗██║██████╔╝   │
  │      ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝╚═╝╚═════╝    │
  ╰──────────────────────────────────────────────╯
EOF
echo -e "${N}"

# Subtitle
echo -e "  ${C}UI Edition V2${N} ${D}•${N} ${W}Created by LUTFY${N}"
echo -e "  ${D}──────────────────────────────────────────────${N}"
echo ""

# ── Panel Device ──
echo -e "  ${B}◈ DEVICE INFORMATION${N}"
echo -e "  ${D}──────────────────────────────────────────────${N}"
printf "  ${D}│${N} ${W}%-12s${N} ${D}:${N} ${C}%s${N}\n" "User"    "$USER_NAME"
printf "  ${D}│${N} ${W}%-12s${N} ${D}:${N} ${C}%s${N}\n" "Device"  "$DEVICE"
printf "  ${D}│${N} ${W}%-12s${N} ${D}:${N} ${C}%s${N}\n" "Brand"   "$BRAND"
printf "  ${D}│${N} ${W}%-12s${N} ${D}:${N} ${C}%s${N}\n" "Android" "$ANDROID"
printf "  ${D}│${N} ${W}%-12s${N} ${D}:${N} ${C}%s${N}\n" "Kernel"  "$KERNEL"
printf "  ${D}│${N} ${W}%-12s${N} ${D}:${N} ${C}%s${N}\n" "Arch"    "$ARCH"
printf "  ${D}│${N} ${W}%-12s${N} ${D}:${N} ${C}%s${N}\n" "IP"      "$IP"
echo -e "  ${D}──────────────────────────────────────────────${N}"
echo ""

# ── Panel System ──
echo -e "  ${B}◈ SYSTEM STATUS${N}"
echo -e "  ${D}──────────────────────────────────────────────${N}"
printf "  ${D}│${N} ${W}%-12s${N} ${D}:${N} ${B}%s${N}\n" "Time"    "$TIME  |  $DATE"
printf "  ${D}│${N} ${W}%-12s${N} ${D}:${N} ${B}%s${N}\n" "RAM"     "${RAM_USED}MB / ${RAM_TOTAL}MB"
echo -e "  ${D}──────────────────────────────────────────────${N}"
echo ""

# ── Footer ──
echo -e "  ${C}✦${N} ${W}Welcome back, ${C}${USER_NAME}${N}"
echo -e "  ${D}Sistem siap digunakan.${N}\n"
