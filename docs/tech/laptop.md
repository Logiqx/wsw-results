## Laptop Setup

### Windows Setup

- Country = UK
- Keyboard = UK
- WiFi = home
- Microsoft account
- PIN
- Setup as new device (not restore of #1)
- Location services = yes
- Find my device = yes
- Required diagnostics only to Microsoft
- Inking + typing diagnostics = no
- Tailored experience = no
- Let apps using advertising ID = no
- Ways to use = skipped
- Only save files to this PC (not OneDrive)
- Declined Microsoft 365 trial
- Declined cloud storage
- Skipped game pass
- Lenovo ID
- Did not select any Lenovo protection features
- Windows updates applied automatically



#### Windows Configuration

- Power plan
  - Turn off the display - 5 minutes (battery) / 1 hour (power)
  - Put the computer to sleep - 15 minutes (battery) / never (power)
  - Hibernate - 180 minutes (battery) / 720 minutes (power)

- Regional settings = UK
- Synchronised time
- Applied remaining Windows updates (loads, including major updates)



#### Software Installation

- Google Chrome
- GPSResults Pro
- Java Runtime
- GPS Speedreader
- Google Earth
- Sailwave
- Notepad++
- Filezilla
  - Connection(s) - TODO
- WSL2
- Ubuntu
- Docker Desktop



#### Docker

Specify log options in docker engine, other options left as defaults:

```json
{
  "builder": {
    "gc": {
      "defaultKeepStorage": "20GB",
      "enabled": true
    }
  },
  "experimental": false,
  "features": {
    "buildkit": true
  },
  "log-opts": {
    "max-file": "3",
    "max-size": "10m"
  }
}
```

