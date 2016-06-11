#!/bin/bash
set -x
set -e
rm -rf /tmp/home_server
shutit skeleton --shutitfile Shutitfile \
	--module_directory /tmp/home_server \
	--module_name home_server \
	--domain tk.shutit \
	--delivery bash \
	--template_branch bash
cd /tmp/home_server && ./run.sh
