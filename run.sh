#!/bin/bash
rm -rf /tmp/home_server
shutit skeleton --shutitfile Shutitfile \
	--name /tmp/home_server \
	--domain tk.shutit \
	--delivery bash
cd /tmp/home_server && ./run.sh "$@"
