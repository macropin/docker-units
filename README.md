# Docker Unit 

## Install

```
sudo cp *.service /etc/systemd/system/
sudo chown root:root /etc/systemd/system/*.service
sudo systemctl daemon-reload

for S in /etc/systemd/system/*.service; do
    sudo systemctl enable $S
done

for S in *.service; do
    sudo systemctl start $S
done
```
