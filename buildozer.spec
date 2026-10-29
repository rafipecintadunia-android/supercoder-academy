[app]
title = Supercoder Academy
package.name = supercoderacademy
package.domain = com.rafi.supercoderacademy
source.dir = .
source.include_exts = py
version = 1.0
requirements = python3,kivy==2.3.0
orientation = portrait
fullscreen = 0

[buildozer]
log_level = 2
warn_on_root = 1

[app:android]
android.permissions = INTERNET
android.api = 33
android.minapi = 21
android.sdk = 33
android.ndk = 25b
android.accept_sdk_license_agreement = True
# INI KUNCINYA BIAR GAK MAKSA BUILD-TOOLS 37
p4a.build_tools_version = 33.0.2
