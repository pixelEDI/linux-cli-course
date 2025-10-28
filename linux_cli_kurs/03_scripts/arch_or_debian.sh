#!/usr/bin/env bash
if grep -qi "arch" /etc/os-release; then
    echo "🏹 Du nutzt Arch Linux — Gratulation, du bist elitär!"
elif grep -qi "debian" /etc/os-release; then
    echo "🐄 Du nutzt Debian — stabil, solide und bewährt."
else
    echo "🐧 Irgendein Linux, Hauptsache kein Windows!"
fi
