<div align="center">

# 🚀 YzX ID - Termux UI Edition

<img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&weight=600&size=28&pause=1000&color=00FFFF&center=true&vCenter=true&width=600&lines=Welcome+to+YzX+ID;The+Ultimate+Termux+Dashboard;UI+Edition+by+LUTFY;Make+Your+Terminal+Aesthetic" alt="Typing SVG" />

<br>

[![Version](https://img.shields.io/badge/Version-1.0.0-blue?style=for-the-badge&logo=github)](https://github.com/USERNAME/YzX-ID)
[![Platform](https://img.shields.io/badge/Platform-Termux-green?style=for-the-badge&logo=android)](https://termux.com)
[![Language](https://img.shields.io/badge/Language-Bash-yellow?style=for-the-badge&logo=gnu-bash)](https://www.gnu.org/software/bash/)
[![License](https://img.shields.io/badge/License-MIT-red?style=for-the-badge)](https://opensource.org/licenses/MIT)

</div>

---

## 📖 Tentang Project (About)

**YzX ID** adalah sebuah mahakarya *scripting* yang lahir dari kegelisahan melihat tampilan bawaan Termux yang terkesan monoton, kaku, dan membosankan. Bagi sebagian orang, Termux hanyalah sebuah aplikasi *emulator* terminal hitam putih yang rumit dan hanya digunakan oleh para *developer* atau *hacker* tingkat lanjut. Namun, di tangan **LUTFY**, Termux diubah menjadi sebuah kanvas digital yang bisa dipersonalisasi menjadi sebuah *dashboard* antarmuka (UI) yang sangat **modern**, **aesthetic**, **futuristik**, dan pastinya **memikat mata**.

YzX ID hadir sebagai solusi bagi kamu yang menginginkan pengalaman menggunakan terminal yang berbeda dari yang lain. Saat kamu membuka aplikasi Termux, bukan lagi tulisan `$` yang kosong dan membosankan yang menyambutmu, melainkan sebuah panel informasi lengkap yang menampilkan identitas perangkatmu, status sistem secara *real-time*, hingga sapaan personal yang membuat kamu merasa seperti seorang *cyber-security* profesional yang baru saja masuk ke dalam sistem utama.

Berbeda dengan aplikasi kustomisasi terminal lain yang membutuhkan puluhan *dependencies* (seperti `neofetch`, `figlet`, `cowsay`, `lolcat`, atau *library* Python yang berat), **YzX ID dibangun 100% menggunakan Bash Scripting murni** yang sudah tertanam di dalam sistem operasi Android (via Termux). Ini berarti script ini sangat ringan, tidak memakan RAM, tidak membuat baterai cepat habis, dan yang paling penting: **100% aman dan bebas dari pelacakan**. Semua data yang ditampilkan (Nama Device, IP Address, Kernel, RAM) diambil langsung secara *offline* dari *kernel* Android menggunakan perintah bawaan seperti `getprop`, `uname`, dan `free`. Tidak ada satu byte pun data kamu yang dikirim ke server luar.

Kami merancang YzX ID dengan filosofi **"Simplicity is the Ultimate Sophistication"**. Tidak ada menu yang membingungkan, tidak ada pilihan command yang mengganggu, dan tidak ada *bloatware*. Saat script dijalankan, ia akan langsung mengambil data, memprosesnya dalam hitungan milidetik, lalu merender antarmuka yang rapi menggunakan perhitungan spasi (`printf`) yang presisi. Hasilnya adalah sebuah *greeting screen* yang tidak hanya indah dipandang, tetapi juga fungsional dan informatif. 

Project ini *open-source* dan akan terus dikembangkan. Kami mengundang seluruh pengguna Termux di Indonesia, maupun di seluruh dunia, untuk ikut serta dalam mengembangkan YzX ID agar menjadi standar baru dalam hal kustomisasi terminal di platform Android. 

Dipersembahkan sepenuhnya oleh: **LUTFY**

---

## 📸 Preview Tampilan

Berikut adalah gambaran tampilan antarmuka **YzX ID - UI Edition** saat dijalankan di Termux:

```text
 ██╗   ██╗███████╗██╗  ██╗    ██╗██████╗ 
 ╚██╗ ██╔╝╚══███╔╝╚██╗██╔╝   ██║██╔══██╗
  ╚████╔╝   ███╔╝  ╚███╔╝    ██║██║  ██║
   ╚██╔╝   ███╔╝   ██╔██╗    ██║██║  ██║
    ██║   ███████╗██╔╝ ██╗██╗██║██████╔╝
    ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝╚═╝╚═════╝ 

◆──────────────────────── UI Edition • by LUTFY ────────────────────────◆

  ┌────────────────────────────────────────────┐
  │  ◈ DEVICE INFORMATION                      │
  ├────────────────────────────────────────────┤
  │ ▹ User       u0_a172                       │
  │ ▹ Device     itel L6502                    │
  │ ▹ Brand      Itel                          │
  │ ▹ Android    10                            │
  │ ▹ Kernel     4.14.133+                     │
  │ ▹ Arch       armv7l                        │
  │ ▹ IP         192.168.1.x                   │
  └────────────────────────────────────────────┘

  ┌────────────────────────────────────────────┐
  │  ◈ SYSTEM STATUS                           │
  ├────────────────────────────────────────────┤
  │ ▹ Time       19:08:55  |  18/11/2026       │
  │ ▹ Day        Wednesday                     │
  │ ▹ Uptime     1:23                          │
  │ ▹ Load       0.45                          │
  │ ▹ RAM        1797MB / 2918MB               │
  └────────────────────────────────────────────┘

◆─────────────────────── ✦ Welcome back, u0_a172 ✦ ───────────────────────◆
