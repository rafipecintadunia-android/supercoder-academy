[app]
title = Supercoder
package.name = supercoder
package.domain = com.rafi.supercoder
source.dir = .
source.include_exts = py
version = 1.0
requirements = python3,kivy==2.3.0
orientation = portrait

[buildozer]
log_level = 2

[app:android]
android.api = 33
android.minapi = 21
android.sdk = 33
android.ndk = 25b
android.build_tools_version = 33.0.2
android.accept_sdk_license_agreement = True
