#!/bin/bash
udisksctl unmount -b /dev/dm-0
udisksctl lock -b /dev/sda2
