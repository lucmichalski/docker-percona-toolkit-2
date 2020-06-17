https://hub.docker.com/r/taka0125/docker-percona-toolkit/

# Tags

${PERCONA_TOOLKIT_VERSION}

# pt-query-digest

```
cat tcpdump.txt | docker run -i --rm taka0125/docker-percona-toolkit:latest pt-query-digest --type tcpdump --limit 100 > tcpdump_digest.txt
```
