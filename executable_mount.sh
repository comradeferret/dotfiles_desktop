#!/bin/bash
sudo cryptsetup open /dev/sda2 enc
sudo mount /dev/dm-0 /enc
