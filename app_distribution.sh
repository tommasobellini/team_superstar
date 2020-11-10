#!/bin/bash

firebase appdistribution:distribute build/app/outputs/apk/release/app-release.apk --app 1:498304842042:android:5d2fb0a51ab8c60934f803 --release-notes "first distribution" --groups "devs"  # --testers "bellinitom97@gmail.com"
