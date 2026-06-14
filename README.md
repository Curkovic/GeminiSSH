# SSH Gemini Bot (GeminiSSH) 🤖💻

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Setup Guide](https://img.shields.io/badge/Setup-Interactive%20Guide-00f0ff.svg)](https://itechie.eu/geminissh_setup/)

An AI-powered SSH assistant that transforms boring terminal logins into interactive, personalized, and diagnostic-rich shell sessions. It greets you dynamically, monitors vital system telemetry, and acts as an AI chatbot fallback for unhandled commands.

---

### 📖 Complete Interactive Setup Guide
For a fully detailed step-by-step installation, diagnostic metrics overview, and clean layout setup, visit the official:
👉 **[Interactive Intel Viewport // GeminiSSH Setup](https://itechie.eu/geminissh_setup/)**

---

## ✨ Features

* **Dynamic SSH Greetings**: Generates a single, short, humorous, or informative greeting whenever you connect.
* **Proactive System Telemetry**: Monitors CPU, RAM, Disk space, and Uptime on login, alerting you only if metrics look abnormal.
* **Smart Command Fallback**: Intercepts unrecognized commands inside bash and pipes them to Gemini for an instant AI response.
* **Bespoke Terminal Experience**: Designed to work cleanly alongside a silenced, distraction-free environment.

---

## 🚀 Quick Setup

### 1. Retrieve the Core Engine
Download the core script to your user home folder:
```bash
wget [https://raw.githubusercontent.com/Curkovic/GeminiSSH/main/gemini.sh](https://raw.githubusercontent.com/Curkovic/GeminiSSH/main/gemini.sh) -O ~/gemini.sh
