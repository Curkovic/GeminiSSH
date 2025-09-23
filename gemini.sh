#!/bin/bash
# gemini.sh - Bash script to send prompts to Google Gemini API and return AI response

# Replace this with your actual Gemini API key
API_KEY="YOUR_GEMINI_API_KEY"

# Capture all input arguments as the prompt
MSG="$*"

# Send request to Gemini API
curl -s "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent" \
  -H "Content-Type: application/json" \
  -H "X-goog-api-key: $API_KEY" \
  -d "{\"contents\":[{\"parts\":[{\"text\":\"$MSG\"}]}]}" \
| sed -n 's/.*"text": *"\(.*\)".*/\1/p' | sed 's/\\n/\n/g'

# Usage:
# ./gemini.sh "Your prompt here"
