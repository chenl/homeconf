#!/bin/sh
qdbus org.kde.klipper /klipper org.kde.klipper.klipper.getClipboardContents | pronunciations.sed | festival --tts
