#!/usr/bin/env bash

git branch | grep \* | cut -d ' ' -f2

