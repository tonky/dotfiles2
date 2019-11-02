#!/usr/bin/sh
# modprobe -v i8k
cp i8kfans.service /etc/systemd/system/
cp dell-fan-mon.service /etc/systemd/system/
cp undervolt.service /etc/systemd/system/

systemctl daemon-reload

systemctl enable i8kfans
systemctl enable dell-fan-mon
systemctl enable undervolt

systemctl start i8kfans
systemctl start dell-fan-mon
systemctl start undervolt
