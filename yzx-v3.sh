#!/data/data/com.termux/files/usr/bin/bash

# ==========================================
#   YZX-UI-V3 : NEON GRID EDITION (TRUE ANIMATION)
#   Created by: LUTFY
# ==========================================

# Warna
C='\033[1;36m' # Cyan
M='\033[1;35m' # Magenta
Y='\033[1;33m' # Yellow
G='\033[1;32m' # Green
W='\033[1;37m' # White
D='\033[0;90m' # Dark Grey
N='\033[0m'    # Reset

clear

# ── 1. LOADING BAR (BENERAN NGISI) ──
echo -e "\n  ${C}INISIALISASI YZX GRID SYSTEM V3${N}\n"
echo -ne "  ${D}Memuat Modul [${N}"
for i in {1..25}; do
    echo -ne "${C}█${N}"
    sleep 0.04
done
echo -e "${D}] ${Y}100%${N}\n"

# ── 2. SPINNER LOADING ──
spin='|/-\'
for i in {1..15}; do
    char="${spin:$(((i-1)%4)):1}"
    echo -ne "  ${M}${char}${N}  ${D}Menyiapkan Data Perangkat...${N}\r"
    sleep 0.08
done
echo -e "  ${Y}✓${N}  ${W}Menyiapkan Data Perangkat...${N}\n"

for i in {1..15}; do
    char="${spin:$(((i-1)%4)):1}"
    echo -ne "  ${M}${char}${N}  ${D}Mengambil Data Sistem...${N}\r"
    sleep 0.08
done
echo -e "  ${Y}✓${N}  ${W}Mengambil Data Sistem...${N}\n"

sleep 0.4
clear

# ── 3. AMBIL DATA ──
DEVICE=$(getprop ro.product.model 2>/dev/null || echo "Unknown")
BRAND=$(getprop ro.product.brand 2>/dev/null || echo "Android")
KERNEL=$(uname -r | cut -d'-' -f1)
ANDROID=$(getprop ro.build.version.release 2>/dev/null || echo "?")
USER_NAME=$(whoami)
ARCH=$(uname -m)
IP=$(ip route get 1 2>/dev/null | awk '{print $7;exit}' || echo "Offline")
TIME=$(date +"%H:%M:%S")
DATE=$(date +"%d/%m/%Y")

RAM_TOTAL=$(free -m 2>/dev/null | awk '/Mem:/{print $2}' || echo "1000")
RAM_USED=$(free -m 2>/dev/null | awk '/Mem:/{print $3}' || echo "500")

# Guard: hindari pembagian nol
[ -z "$RAM_TOTAL" ] && RAM_TOTAL=1
[ "$RAM_TOTAL" -eq 0 ] 2>/dev/null && RAM_TOTAL=1
RAM_PERCENT=$(( RAM_USED * 100 / RAM_TOTAL ))

# Bikin Progress Bar RAM
make_bar() {
    local percent=$1
    local size=20
    local filled=$(( percent * size / 100 ))
    local empty=$(( size - filled ))
    local bar=""
    for ((i=0; i<filled; i++)); do bar+="█"; done
    for ((i=0; i<empty; i++)); do bar+="░"; done
    echo "$bar"
}

# ── 4. HEADER (Banner ASCII) ──
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

echo -e "${C}  ┌──────────────────────────────────────────────────┐${N}"
echo -e "${C}  │${N}  ${W}YZX ID${N} ${D}•${N} ${M}NEON GRID V3${N}                        ${C}│${N}"
echo -e "${C}  │${N}  ${D}Created by:${N} ${Y}LUTFY${N}                              ${C}│${N}"
echo -e "${C}  └──────────────────────────────────────────────────┘${N}"
echo ""

# ── 5. PANEL DEVICE ──
echo -e "${M}  ┌──┤ ${W}SYSTEM PROFILE${M} ├────────────────────────────┐${N}"
printf "${M}  │${N} ${C}➤${N} ${D}%-10s${N} : ${W}%s${N}\n" "User"    "$USER_NAME"
printf "${M}  │${N} ${C}➤${N} ${D}%-10s${N} : ${W}%s${N}\n" "Device"  "$DEVICE"
printf "${M}  │${N} ${C}➤${N} ${D}%-10s${N} : ${W}%s${N}\n" "Brand"   "$BRAND"
printf "${M}  │${N} ${C}➤${N} ${D}%-10s${N} : ${W}%s${N}\n" "Android" "$ANDROID"
printf "${M}  │${N} ${C}➤${N} ${D}%-10s${N} : ${W}%s${N}\n" "Kernel"  "$KERNEL"
printf "${M}  │${N} ${C}➤${N} ${D}%-10s${N} : ${W}%s${N}\n" "Arch"    "$ARCH"
printf "${M}  │${N} ${C}➤${N} ${D}%-10s${N} : ${Y}%s${N}\n" "IP"      "$IP"
echo -e "${M}  └──────────────────────────────────────────────────┘${N}"
echo ""

# ── 6. PANEL RESOURCE ──
echo -e "${C}  ┌──┤ ${W}RESOURCE USAGE${C} ├────────────────────────────┐${N}"
printf "${C}  │${N} ${Y}⚡${N} ${D}%-6s${N} : [${M}%s${N}] ${W}%s%%${N}\n" "RAM" "$(make_bar $RAM_PERCENT)" "$RAM_PERCENT"
printf "${C}  │${N} ${Y}⚡${N} ${D}%-6s${N} : ${W}%s MB${N} ${D}/${N} ${W}%s MB${N}\n" "Detail" "$RAM_USED" "$RAM_TOTAL"
echo -e "${C}  └──────────────────────────────────────────────────┘${N}"
echo ""

# ── 7. PANEL TIME ──
echo -e "${Y}  ┌──┤ ${W}LOCAL TIME${Y} ├────────────────────────────────┐${N}"
echo -e "${Y}  │${N}  ${W}Time${N} : ${C}${TIME}${N}  ${D}|${N}  ${W}Date${N} : ${C}${DATE}${N}       ${Y}│${N}"
echo -e "${Y}  └──────────────────────────────────────────────────┘${N}"
echo ""

# ── 8. FOOTER ──
echo -e "${D}  Status : ${G}ONLINE${N}"
echo -e "${D}  System : ${G}READY${N}"
echo ""
echo -e "${M}  ═══════════════════════════════════════════════════${N}"
echo -e "${M}     ${W}Welcome back, ${Y}${USER_NAME}${W}. Enjoy your session.${N}"
echo -e "${M}  ═══════════════════════════════════════════════════${N}"
echo ""
