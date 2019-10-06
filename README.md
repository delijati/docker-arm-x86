# Run armhf in docker x86/ amd64


Install on your host (host ubuntu 18.04 amd64)

```
% sudo apt-get install qemu-user-static
% cp /usr/bin/qemu-arm-static .
% docker run -v `pwd`:/app --rm -ti qemu-armhf:testing bash -c "cd /app && virtualenv env && env/bin/pip3 install requests && env/bin/python test.py"
```
