#!/bin/sh -x
cd /source
find . -type f -exec sh -c 'mkdir -p "/destination/$(dirname {})"; j2 {} > /destination/{};' ';'

