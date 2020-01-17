
# Spotify streamer based on raspberry zero
Stream based on a Raspberry Zero and external DAC (cheap PCM5102);


## pinout

```
DAC BOARD   > Raspberry Pi 3 Model B connector J8
-----------------------------------------------
SCK         > GND
BCK         > PIN 12    (GPIO18)
DIN         > PIN 40    (GPIO21)
LRCK        > PIN 35    (GPIO19)
GND         > PIN 6     (GND) Ground
VIN         > PIN 2     (5V)
```


## Prepare
Flash SDCARD, add SSH file and wpa_supplicant.conf in "/boot" to enable headless operation.\

On first boot (sudo raspi-config);
- Change "pi" user password
- Set hostname
- Set timezone
- Grow filesystem
- Update raspi-config


## External DAC

### Configure DAC
Load correct device tree, edit /boot/config.txt:
```
$ sudo nano /boot/config.txt
```
Then add dac, and disable on-board (HDMI);
```
dtoverlay=hifiberry-digi

# disable audio (disable snd_bcm2835)
#dtparam=audio=on
```



### Configure ALSA
Create /etc/asound.conf with this content and the appropriate number after “card” from the “aplay -l” output list.
```
$ sudo nano /etc/asound.conf
```

Then type:
```
pcm.!default  {
 	type hw card 0
}			
ctl.!default {
 	type hw card 0
}
```

### Test DAC
```
$ aplay -l

**** List of PLAYBACK Hardware Devices ****
card 0: sndrpihifiberry [snd_rpi_hifiberry_dac], device 0: HifiBerry DAC HiFi pcm5102a-hifi-0 []
  Subdevices: 1/1
  Subdevice #0: subdevice #0
```


## install Software

```
sudo apt-get update && sudo apt-get upgrade -y
sudo rpi-update
#
sudo apt install -y apt-transport-https curl
curl -sSL https://dtcooper.github.io/raspotify/key.asc | sudo apt-key add -v -
echo 'deb https://dtcooper.github.io/raspotify raspotify main' | sudo tee /etc/apt/sources.list.d/raspotify.list
sudo apt update
sudo apt install raspotify
#
sudo nano /etc/default/raspotify
#
sudo systemctl enable raspotify
```



