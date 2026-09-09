# 🔬 FoodLens v2.0 ULTRA — Understand Before You Buy

> **Empowering Consumers with Scientific Food Truth • 100% Free & Open Engine**  
> *Project by Code Crafters*

![FoodLens Banner](https://images.unsplash.com/photo-1542838132-92c53300491e?auto=format&fit=crop&w=1200&q=80)

---

## 🌟 Overview

**FoodLens** is an advanced food transparency and nutrition intelligence platform built for mobile and PC. By scanning any food package barcode or selecting everyday packaged items, FoodLens instantly decodes:

- **🚨 International Regulatory Bans**: Identifies chemical additives banned or restricted across all **27 European Union nations**, USA (California AB 418), Japan, Canada, and the UK.
- **🧬 Target Organs Under Biological Stress**: Interactive moving biological vectors for Heart, Brain, Liver, Pancreas, Kidneys, Gut, and Cellular DNA, coupled with verified Indian epidemiological patient crisis data (2021–2026).
- **⚖️ WHO Daily Safety Standards Simulator**: Interactive serving size slider (20g to 250g) calculating exact teaspoons of added sugar, sodium, and saturated fats against World Health Organization daily thresholds.
- **🌿 Authentic Desi Swaps Vault**: Evidence-based Indian Ayurvedic and clean whole-food alternatives (Makhana in A2 Ghee, Jowar Nankhatai, Sattu Mint Shikanji, Kokum Solkadhi, Roasted Chana).
- **📋 Shareable Truth Reports**: One-click formatted summaries formatted for WhatsApp, messaging, or health consultation.

---

## 🚀 Key Features

| Feature | Description |
| :--- | :--- |
| **Zero-Lag Barcode Scanner** | Hardware-accelerated camera scanner with native `BarcodeDetector` support, 12 FPS optimized loop, sweeping laser reticle, and low-latency synthetic Web Audio feedback. |
| **PC & Desktop Support** | Drag-and-drop food pack images or paste (`Ctrl + V`) barcode images directly from clipboard. |
| **Portion Simulator** | Dynamically scales nutrient metrics from single bite (20g) to family pack (250g). |
| **Recent Scans History** | LocalStorage persistence to re-inspect past scans and compare items. |
| **Comprehensive Chemical DB** | Deep toxicological data on 18+ high-risk additives: Titanium Dioxide (E171), TBHQ (E319), Tartrazine (E102), Carmoisine (E122), Sunset Yellow (E110), Caramel IV (E150d), MSG (E621), Potassium Bromate (E924), Allura Red (E129), Aspartame (E951), Sucralose (E955), etc. |
| **Indian Eatables Vault** | Pre-calibrated high-fidelity entries for popular Indian staples: Kurkure, Maggi, Parle-G, Lay's, Haldiram's Bhujia, Amul Butter, Thums Up, Cadbury Dairy Milk, Sting, and more. |

---

## 💻 Running the PC / Web Version

### Prerequisites
- [Node.js](https://nodejs.org) (v18 or higher recommended)
- `npm` or `yarn`

### Setup & Run
```bash
# 1. Clone or navigate to the repository
cd foodlens-app

# 2. Install dependencies
npm install

# 3. Start the live local development server
npm run dev
```

Open your browser and navigate to `http://localhost:3000` (or the URL shown in terminal).

### Production Web Build
```bash
# Build production bundle into dist/
npm run build

# Preview production build locally
npm run preview
```

---

## 📱 Android APK Build

The repository includes a ready-to-build Android Studio project inside `/android`:

1. Run `build-apk-assets.bat` (or `npm run build` then copy `dist/` to `android/app/src/main/assets/dist`).
2. Open the `android/` folder in **Android Studio**.
3. Click **Build ➔ Build Bundle(s) / APK(s) ➔ Build APK(s)**.
4. Output APK location: `android/app/build/outputs/apk/debug/app-debug.apk`.

---

## 🛠️ Tech Stack

- **Frontend**: React 18, HTML5, CSS3 Glassmorphism
- **Icons**: [Lucide React](https://lucide.dev)
- **Scanning**: [Html5-QRCode](https://github.com/mebjas/html5-qrcode) + Native Shape Detection API
- **Audio Engine**: Web Audio API (Synthesized oscillator laser chirps)
- **Build Tooling**: Vite 5
- **Mobile Container**: Android Studio WebView with custom WebChromeClient

---

## 📜 Scientific & Statutory Sources

- **EFSA (European Food Safety Authority)**: EFSA Journal 2021;19(5):6585 (Titanium Dioxide genotoxicity ban).
- **California Food Safety Act (AB 418 / Chapter 328)**: Prohibiting dangerous synthetic food dyes and preservatives.
- **WHO / IARC**: Monograph Vol. 101 (4-MEI carcinogen classification) & July 2023 Aspartame advisory.
- **FSSAI (Food Safety and Standards Authority of India)**: Food Additives Compendium & Gazette Notifications.
- **The Lancet**: McCann et al., 2007 (Southampton study linking azo dyes to pediatric hyperactivity).

---

## ⚖️ License

MIT License — Free to use, adapt, and build upon.  
*Project by Code Crafters*
