# SSH Gemini Bot

**Description:**
SSH Gemini Bot is an AI-powered SSH assistant that provides friendly, personalized login greetings, monitors system health, and acts as a fallback chatbot for unrecognized commands. It makes SSH sessions interactive, informative, and fun.

## Features
- Dynamic, humorous greeting on SSH login.
- System health check with concise alerts if something is abnormal.
- Fallback AI chatbot when you type unrecognized commands.

## Setup Instructions

### 1. Clone or upload the repository
Upload the project files (`gemini.sh` and instructions) to your server.

### 2. Make `gemini.sh` executable
```bash
chmod +x ~/gemini.sh
```

### 3. Edit your `~/.bashrc`
Add the following snippet at the end of your `~/.bashrc` file:
```bash
if [[ "$SSH_CONNECTION" ]] && [[ "$USER" == "bot" ]]; then
    GREETING=$(~/gemini.sh "Generate a single short, friendly SSH login greeting, be funny. No lists, no options, no explanations.")
    echo "$GREETING"
fi

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}')
RAM=$(free -h | awk '/^Mem/ {print $3 "/" $2}')
DISK=$(df -h / | awk 'NR==2 {print $3 "/" $2 " (" $5 " used)"}')
UPTIME=$(uptime -p)
DEVICE="$USER@$(hostname -I | awk '{print $1}')"

# System health check
~/gemini.sh "Device: $DEVICE
CPU: $CPU
RAM: $RAM
Disk: $DISK
Uptime: $UPTIME
Only respond if something is abnormal or needs attention. If everything is fine, just say something like All systems normal. and add super short comment about system. Keep it very short."

command_not_found_handle() {
    ~/gemini.sh "$*"
}
```

### 4. Suppress default Debian login messages
To hide the MOTD and other standard Debian login text, create a `.hushlogin` file in your home directory:
```bash
touch ~/.hushlogin
```
This will ensure only Gemini's greeting and system health message appear on SSH login.

### 5. Test your setup
Log out and SSH back in:
```bash
ssh USER@YOUR_SERVER_IP
```
You should see a dynamic greeting and a concise system health report.

## License
This project is licensed under the MIT License.

