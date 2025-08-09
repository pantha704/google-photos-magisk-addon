#!/bin/bash
# Usage: ./decode.sh <disguised_video> <original_video> <output_payload>
# Example: ./decode.sh disguised.mp4 record.mp4 recovered.pdf

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <disguised_video> <original_video> <output_payload>"
    exit 1
fi

disguised="$1"
original="$2"
output="$3"

mp4size=$(stat -c%s "$original")
dd if="$disguised" of="$output" bs=1 skip=$mp4size status=progress
echo "✅ Extracted payload to: $output"
