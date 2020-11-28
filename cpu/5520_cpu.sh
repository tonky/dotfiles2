#!/bin/sh
undervolt --core -130 --cache -130 --analogio -130 --uncore -130 --gpu -130
modprobe -v i8k
/home/tonky/bin/dell-fan-mon --t_low 55 --t_mid 65 --t_high 80 --mode 0 --discrete_gpu_mode 0 --fan_check_period 3000 --period 5000 --bios_disable_method 1 --jump_temp_delta 15 -d
i8kfan 0 0
