# Memory & Operational Protocol: Raja Muhammad Ali Asghar (@thealidev)

## 1. Founder Context & Identity
* **Founder**: Raja Muhammad Ali Asghar (Born Dec 24, 2003, Rawalpindi, Pakistan).
* **Profiles**: GitHub [@thealidev](https://github.com/thealidev) / [@alicncltd](https://github.com/alicncltd) | MBTI: INTJ | IQ: 150+.
* **Shop Veteran & Credentials**: Former Lead Spindle Operator and CNC Designer at Welcome Edge Cutting & Umer Al Khairy CNC. TITANS of CNC Academy dual-certified (TITAN-2M & TITAN-3M credentials), officially registered with Pakistan Software Export Board (PSEB), winner of 30,000 PKR Web3 developer grant.
* **Workspaces**:
  * YC Paxel Master Hub: `c:\Users\Muhammad Ali\Desktop\YC PIXEL`
  * CNC & Engineering Projects: `C:\Ali CNC`

---

## 2. Tracked Products & Repositories
1. **Ali CNC Forge AI (`alicncltd/ForgeAI`)**:
   - **Domain**: Real-time acoustic AI tool breakage prevention & chatter suppression for CNC spindles.
   - **Production Site**: `https://forge.alicnc.pk` (Render + Cloudflare SSL).
   - **Companion Binary**: `ForgeAI_NcStudio_Defense.exe` (17 KB native C# zero-dependency Win32 sentinel, serves at `/nc`). Auto-hooks `NcStudio.exe` and dispatches `WM_KEYDOWN VK_NEXT` within < 5ms to throttle feed rate (100% -> 25%).
   - **Acoustic Physics**: Isolates tooth-pass frequency $f_{tp} = \frac{\text{RPM} \times \text{Flutes}}{60}$ (e.g., 18,000 RPM 2-flute = 600 Hz) and flags chatter anomalies at 2.4 kHz in < 30ms.
   - **Hardware Spec**: Reverse-engineered Weihong PCIMC-3D DB15 (J1) PCI card, WCH CH365 bus, and `whnc3d.sys` driver.
   - **Database**: Supabase (`slwehnfipdsnpmgycuwx.supabase.co`) with cutting telemetry and `cnc_snippets` physics library.

2. **Trace It AI (`C:\Ali CNC\Trace It AI`)**:
   - FastAPI CAD vector synthesizer with Google Gemini 2.5/3.0 Flash.
   - Outputs Vectric Aspire Lua and Onshape FeatureScript.
   - SQLite credit ledger with `BEGIN IMMEDIATE` atomic concurrency.

3. **Enterprise CAD/CAM Platform (`thealidev/alicnc`)**:
   - Next.js 15 App Router + Python Oracle AI Brain.
   - 177 files, 27,642 LOC.

4. **Music Linker (`thealidev/lastfmsyncx`)**:
   - Full-stack Node.js server with YouTube & Spotify history parsers.

---

## 3. Paxel Trigger & Execution Rules
* **Activation Phrases**:
  - `"patch it at yc paxel"`
  - `"yc paxel"`
  - Or requests to update Paxel report / YC application
* **Cloud & GitHub Actions Execution**:
  - Paxel runs via **GitHub Actions** and the cloud runner script (`run_paxel_cloud.sh`), which extracts `cursor_transcripts_bundle.zip` into `~/.cursor/` and pipes to `https://paxel.ycombinator.com/upload.sh`.
  - **DO NOT** execute local filesystem scans or run commands that touch the workspace files unless explicitly requested.
* **Agent Operational Runbook**:
  1. Immediately reference and update `c:\Users\Muhammad Ali\Desktop\YC PIXEL\PAXEL_BUILDER_PROFILE.md` and `YC_APPLICATION_MASTER.md`.
  2. Maintain and reflect the full session audit, metrics, and quantitative rubric across Antigravity, Cursor, and cloud traces.
  3. Output the polished, high-signal Paxel builder profile and YC dossier report directly.
