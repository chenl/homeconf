#!/bin/bash

function del_fest_temp_files() {
    local -r d=[0-9]
    local -r d5=${d}${d}${d}${d}${d}
    rm -f /tmp/est_${d5}_${d5}_aud_${d5}
}

killall tts_start.sh festival mbrola audsp aplay
del_fest_temp_files
