#!/data/data/com.termux/files/usr/bin/bash

# Termux Hacker Green-Black Theme
# Developed by Hamed Farifteh (حامد فریفته)

clear
echo "===================================="
echo "   Termux Hacker Green-Black Theme"
echo "   Developed by Hamed Farifteh"
echo "===================================="
echo ""

# Install required packages
echo "[1/4] Installing required packages..."
pkg install figlet lolcat -y > /dev/null 2>&1

# Apply Hacker Green Theme
echo "[2/4] Applying hacker green-black theme..."

cat >> ~/.bashrc << 'EOF'

# === Hacker Green-Black Theme by Hamed Farifteh ===

# Green prompt
PS1='\[\e[1;32m\]┌─[\e[1;32m\]HACKER@termux\e[1;32m\]]─[\e[0;32m\]\w\e[1;32m\]\n└─\e[1;32m\]# \e[0m'

# Green text color for output
export TERM=xterm-256color

# Useful hacker aliases
alias ll='ls -la --color=auto'
alias la='ls -la'
alias matrix='cmatrix -C green'
alias hack='echo "Accessing mainframe..." && sleep 1 && echo "Access Granted." | lolcat'
alias cls='clear'
alias update='pkg update && pkg upgrade'

# Hacker welcome banner
echo ""
figlet -f slant "HACKER" | lolcat -a -d 2
echo "Welcome to the Matrix, Hamed" | lolcat
echo ""
EOF

# Reload configuration
echo "[3/4] Applying changes..."
source ~/.bashrc 2>/dev/null || true

# Final message
echo "[4/4] Hacker theme installed successfully!"
echo ""
echo "===================================="
echo "✅ Green-Black Hacker Theme Applied!"
echo "Restart Termux to see the changes."
echo "===================================="
echo ""