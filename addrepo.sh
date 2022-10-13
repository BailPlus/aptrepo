#!/bin/bash
sudo true	# 先获取一个root
curl -fsSL https://bailplus.github.io/aptrepo/key.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/Bail.gpg
echo "deb [signed-by=/etc/apt/trusted.gpg.d/Bail.gpg] https://bailplus.github.io/aptrepo ./" | sudo tee /etc/apt/sources.list.d/Bail.list
sudo apt update
