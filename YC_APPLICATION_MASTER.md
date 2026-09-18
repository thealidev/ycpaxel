# Y Combinator Application: Ali CNC (Forge AI & Trace It)
**Batch Application & Founder Dossier (Winter 2027)**
*Founder & CEO: Raja Muhammad Ali Asghar ([@thealidev](https://github.com/thealidev) / [@alicncltd](https://github.com/alicncltd))*  
*Primary Product: Ali CNC Forge AI — "Real-time AI tool breakage protection for CNCs"*  
*Live Demo URL: https://forge.alicnc.pk | Companion Download: https://forge.alicnc.pk/nc*  
*CEO Personal Hub: https://github.com/alicncltd/ceopw | Contact: say@rmaa.pk*  
*GitHub: https://github.com/alicncltd/ForgeAI | Company: https://alicnc.pk*  
*Last Updated: September 18, 2026*

---

## 1. Company Information

### What is your company going to make?
**Ali CNC Forge AI** is an AI-native telemetry platform and real-time safety copilot for CNC machining. We attach a sub-$10 magnetic sensor pod directly to CNC spindle housings to capture structural acoustic impedance and vibration. Using RPM-synchronized harmonic bandpass filtering, our system isolates tooth-pass frequencies from ambient factory noise, detecting chatter, deflection, and impending bit breakage in **under 30 milliseconds**. When an anomaly occurs, Forge AI overrides the machine feed rate or triggers a feed hold before the carbide bit snaps or raw customer stock is ruined. In return, connected machines stream real-world cutting telemetry (feed, spindle load, RPM, acoustic harmonics across materials) into our central models.

### In 50 characters or less, what does your company do?
AI tool breakage protection for CNCs

### Which category best describes your company?
B2B Software / Manufacturing / Industrial AI / Developer & Machine Tools.

---

## 2. The Problem & Industry Reality

### What problem are you solving?
There are millions of CNC routers, mills, and machining centers in operation worldwide. In manufacturing, **the machine only makes money when the spindle is spinning cleanly**.

Yet CAM software operates on idealized mathematical simulations. On the actual shop floor, warped stock, internal hardwood knots, tool wear, and machine vibration cause sudden **regenerative chatter**. When a solid carbide milling bit breaks:
1. **Direct Tooling & Stock Loss:** A single snapped bit costs \$45–\$120, and a gouged architectural or aerospace workpiece costs \$300–\$2,000 in scrapped stock.
2. **Shop Downtime:** Finding the point of failure, re-homing axes, resetting Z-zero with a touch plate, and re-running roughing passes costs hours of wasted shop capacity.
3. **Over-Conservative Feeds:** Machinists run at 50% feed rates out of fear of bit snaps, cutting throughput in half and glazing tools through friction.

Legacy spindle monitoring systems (Montronix, Marposs, Siemens) cost thousands of dollars per spindle, require invasive wiring, and are locked behind enterprise sales cycles. **95% of small-to-midsize workshops have zero real-time acoustic protection.**

---

## 3. The Solution & Product Architecture: Forge AI

### How does Forge AI solve this?
1. **Sub-$10 Edge Sensor Pod:** Magnetic pod mounting directly to spindle casing with ESP32-S3 and high-bandwidth (50 kHz) MEMS accelerometers.
2. **Tooth-Pass Harmonic DSP Filter:** Isolates the fundamental cutting frequency from shop noise:
   $$f_{tp} = \frac{\text{RPM} \times \text{Flutes}}{60}$$
   *(e.g., at 18,000 RPM with a 2-flute bit = 600 Hz)*.
3. **< 30ms Autonomous Override:** When chatter or deflection spikes at non-harmonic resonance frequencies (e.g. 2.4 kHz), Forge AI executes an autonomous feed rate override (`100% → 25%`) in under 30ms, stabilizing the cut without stopping production.
4. **Native Windows Defense Sentinel (`ForgeAI_NcStudio_Defense.exe`):** Standalone zero-dependency binary (17 KB) that auto-hooks into Weihong NcStudio (PCIMC-3D) and dispatches Win32 `WM_KEYDOWN` `VK_NEXT` messages directly into the controller's message queue in **< 5ms**.
5. **Distributed Machining Data Flywheel:** Every connected machine streams real-world cutting curves across materials (Sheesham, Oak, MDF, Aluminum, Acrylics) into our Supabase/TimescaleDB models, building an uncopyable dataset for lights-out fabrication.
6. **Proprietary Global Industrial Intelligence Data Moat:** Built an autonomous distributed harvester (`Dig It / Ali CNC Partners`) operating across a 20 GB 4-tier proxy cluster (Residential, Mobile, Datacenter) into a VeraCrypt-encrypted master database (`ALICNC-PARTNERS.db`). We have mapped **15,669 manufacturing facilities across 66 industrial nations**, indexing **1,135 OEM CNC spindles** (Haas, Mazak, DMG Mori, Okuma, 5-Axis), **444 ISO/AS9100D/ITAR defense certifications**, **1,908 aerospace alloys** (Titanium, Inconel, 7075-T6), **25,515 phone numbers** (809 direct WhatsApp lines), and **6,473 direct RFQ engineering inboxes**. This gives us an unmatched capability graph of exactly which factories operate which spindles and cut which alloys globally.

---

## 4. Founder Background & Unfair Advantage

### Who is on your team?
**Raja Muhammad Ali Asghar (Solo Founder & CEO)**
- Born: December 24, 2003 (Age 22), Rawalpindi, Pakistan.
- MBTI: INTJ. Estimated IQ: 150+.
- Technical Background: Self-taught programmer and builder since age 4. Began installing operating systems at age 5; built DIY soldering irons and power banks at age 7 with zero internet access.
- Shop Floor Veteran: Former Lead Designer and Spindle Operator at Welcome Edge Cutting and Umer Al Khairy CNC. Programmed and operated production routers daily, dealing directly with snapped carbide bits, harmonic chatter, and material scrap.
- Certifications & Recognition: Dual certified in CAD/CAM at TITANS of CNC Academy (TITAN-2M & TITAN-3M credentials covering precision tolerances and feeds/speeds), officially registered with Pakistan Software Export Board (PSEB).
- Execution Velocity: Full-stack builder proficient in C++, C#, FreeRTOS, Node.js, Python, and DSP filters. Winner of Web3 Developer Grant (30,000 PKR). GitHub: `@thealidev` / `@alicncltd`.
- Autonomous AI Pairing & Copilot Designation: Daily architect pairing with his dedicated AI systems copilot, explicitly named **HUSKEY** in bold letters, sustaining 15+ hour unbroken agent engineering sprints across low-level Win32 P/Invoke, ESP32 DSP filters, and high-concurrency Node.js 24 pipelines.

### Why are you uniquely suited to build this?
Our entire competitive advantage comes from operating directly inside the industrial CNC workshop cluster in Rawalpindi. Staying based here gives us daily, immediate access to real production routers, raw material testing (MDF, dense hardwoods, acrylics), and rapid machine validation at a fraction of global operating costs. Remaining on the ground with active machinists allows us to build and iterate far faster than software companies detached from physical factory floors.

---

## 5. Market Size & Economics

### Market Potential:
- **Total Addressable Market (TAM):** \$85 Billion global digital machining and CNC fabrication market.
- **Serviceable Available Market (SAM):** Millions of CNC routers, mills, and machining centers worldwide across woodworking, signage, light metal fabrication, and prototyping.
- **Business Model:** B2B SaaS subscription (\$30–\$50/month per active spindle) for real-time tool breakage prevention, chatter suppression, and feed optimization. Sensor pods are self-flashed onto standard microcontrollers or supplied at low hardware cost (~$15–$25).
- **Target Revenue:** Capturing 25,000 active machines at \$40/month represents **\$12M ARR** at high software margins.

---

## 6. Traction & Production Proof of Velocity

- **Live Production App Shipped:** Deployed full mobile-first OLED demo at **`https://forge.alicnc.pk`** (Render + Cloudflare SSL) featuring a 10-second YC mobile hook, 60 FPS Canvas Oscilloscope & FFT Spectrum Analyzer, and Web Audio API acoustic synthesis.
- **Dedicated Ad & Telemetry Landing Page Shipped:** Deployed at **`https://alicnc.pk/forge`** (and alias `/yc`) featuring 60 FPS acoustic waveform canvas, Paxel Report #4 audit validation, scrap ROI calculator, and direct machinist alpha kit reservation.
- **Proprietary Global Industrial Intelligence Moat Shipped:** Deployed autonomous distributed harvester (`Dig It`) indexing **15,669 manufacturing facilities across 66 industrial powerhouse nations** into VeraCrypt master database `X:\ALICNC-PARTNERS.db`. Extracted **1,135 OEM CNC spindles** (Haas, Mazak, DMG Mori, Okuma), **444 ISO/AS9100D/ITAR defense certifications**, **1,908 aerospace alloys**, **25,515 phone numbers** (809 direct WhatsApp), and **6,473 direct RFQ engineering inboxes** via 20 GB 4-tier proxy cluster (32 parallel streams) with zero LLM token costs. Live mobile telemetry active on local network and ngrok cloud tunnel.
- **Live B2B Storefront & Dynamic PostgreSQL Catalog:** Shipped enterprise CAD/CAM catalog at **`https://alicnc.pk/gallery`** (Next.js 16 Turbopack + Supabase PostgreSQL) backed by Replicate Gemini enrichment, repository-relative asset CDN, and automated boot caching.
- **Multi-App Anti-Sleep Keep-Alive Fleet:** Autonomous self-ping sentinel maintaining continuous HTTP 200 uptime across both `https://alicnc.pk/api/ping` and `https://forge.alicnc.pk/nc`.
- **Native Windows Defense Sentinel Shipped:** Compiled standalone `ForgeAI_NcStudio_Defense.exe` (17 KB) with Win32 message injection, available for direct download at **`https://forge.alicnc.pk/nc`**.
- **Hardware Architecture Reverse-Engineered:** Fully reverse-engineered the Weihong PCIMC-3D PCI motion card (WCH CH365 bridge chip, `whnc3d.sys` driver, and complete DB15 J1 pinout table).
- **Supabase Cloud Engine Live:** Connected to `slwehnfipdsnpmgycuwx.supabase.co` with live cutting physics catalog from `cnc_snippets`, `catalog_items`, and automated anomaly intervention logging.
- **Automated Verification:** 100% pass rate across automated test gates (`npm test`), verifying < 30ms override reactions and 58 MB memory footprint.
- **400+ Production CNC Files:** Over 400 commercial production files, parametric toolpaths, and custom Vectric Aspire automation scripts deployed on live machines.
- **Native Android Executive Copilot Shipped:** Built and deployed `Ali_CNC_Private_CEO_AI.apk` (v3.0.0, targetSdk 35) on POCO C85 / Xiaomi HyperOS 3 with dual-layer soft keyboard insets math (zero blind area), 100% silent haptic mode, multi-token offline knowledge retrieval over 25+ master dossier nodes, and permanent PKCS12 keystore architecture.
- **CEO Personal Website & Executive Hub (`ceopw`):** Shipped full React Native for Web + Vite personal portal (`alicncltd/ceopw`) on Render Web Services, featuring high-conversion humor, Schema.org "Muhammad Ali" entity graph, interactive tooth-pass acoustic laboratory, and hacker command console.
- **Commit Discipline:** 100% conventional commits and 0 reverts maintained across all production and personal repositories.
