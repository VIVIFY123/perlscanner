#!/bin/bash

echo "🔧 Installing dependencies for Perl SAST Scanner..."

# --- Ensure system packages are updated ---
sudo apt update && sudo apt install -y perl libjson-perl cpanminus git

# --- Install Perl modules required for taint_engine.pl ---
echo "📦 Installing required Perl modules..."
cpanm PPI File::Find JSON

# --- Set permissions for the scanner files ---
chmod +x scanner.py
chmod +x taint_engine.pl

echo "✅ Setup complete! You can now run ./scanner.py to start scanning."