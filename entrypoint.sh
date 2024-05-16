#!/bin/sh

# mount-s3 <bucket> <mount-point>
mount-s3 watcharapon-bucket /s3-drive
exec "$@"
