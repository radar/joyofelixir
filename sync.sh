#!/bin/bash
bundle exec jekyll build
aws s3 sync _site s3://joyofelixir.com --acl public-read
