#!/bin/bash
# Usage: ./encode.sh <video> <payload> <output>
# Example: ./encode.sh record.mp4 secret.pdf disguised.mp4

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <video> <payload> <output>"
    exit 1
fi

video="$1"
payload="$2"
output="$3"

cat "$video" "$payload" > "$output"
echo "✅ Encoded: $payload into $output using $video as disguise"
