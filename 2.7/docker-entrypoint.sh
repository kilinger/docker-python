#!/bin/bash
set -e

if [ "$1" = "goreman" ]; then
	DOCKER_ENTRYPOINT_INIT_DIRS="/docker-entrypoint-init.d;/app/docker-entrypoint-init.d"
	for docker_entrypoint_init_dir in $(echo $DOCKER_ENTRYPOINT_INIT_DIRS | tr ";" "\n"); do
		if [ -d "$docker_entrypoint_init_dir" ]; then
			for f in "$docker_entrypoint_init_dir"/*.sh; do
				[ -f "$f" ] && . "$f" || true
			done
		fi
	done
	exec "$@"
fi

exec "$@"
