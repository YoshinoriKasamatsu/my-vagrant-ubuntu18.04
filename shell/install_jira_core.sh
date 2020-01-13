#!/usr/bin/env bash
set -eu
echo "install jira core"
wget https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-core-8.6.1-x64.bin
chmod a+x atlassian-jira-core-8.6.1-x64.bin
sudo ./atlassian-jira-core-8.6.1-x64.bin
echo "install chrome complete."
