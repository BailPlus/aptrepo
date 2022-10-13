#!/bin/bash
curl -fsSL https://bailplus.github.io/aptrepo/key.asc | gpg --dearmor -o /data/data/com.termux/files/usr/etc/apt/trusted.gpg.d/Bail.gpg
echo "deb [signed-by=/data/data/com.termux/files/usr/etc/apt/trusted.gpg.d/Bail.gpg] https://bailplus.github.io/aptrepo ./" | tee /data/data/com.termux/files/usr/etc/apt/sources.list.d/Bail.list
apt update
