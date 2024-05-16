# S3 Mount point & Run a Python Script

## Description

This is a simple example of how to mount an S3 bucket to a local directory and run a Python script that reads a file
from the mounted directory.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)
- [AWS Account](https://aws.amazon.com/premiumsupport/knowledge-center/create-and-activate-aws-account/)
- [IAM User with S3 Access](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html)
- [S3 Bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-bucket-overview.html)
- [Python](https://www.python.org/downloads/)

## Getting Started

1. Clone the repository

```bash
git clone https://github.com/watcharap0n/s3mountpoint.git
```

2. Navigate to the project directory

```bash
cd s3mountpoint
```

3. Build the Docker image

**First, you need to set the ``./entrypoint.sh`` file for the S3 bucket you want to mount. Replace the `bucket_name`
with your S3 bucket name.

```bash
sudo docker build -f Dockerfile.s3mp -t python-s3mountpoint .
```

4. Run the Docker container

```bash
sudo docker run --rm -it --device /dev/fuse --privileged python-s3mountpoint
```
