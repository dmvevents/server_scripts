sudo modprobe apex
sudo sh -c "echo 'SUBSYSTEM=="apex", MODE="0660", GROUP="apex"' >> /etc/udev/rules.d/65-apex.rules"
