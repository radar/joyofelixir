#!/bin/bash

aws s3 sync _site s3://joyofelixir.com --acl public-read
