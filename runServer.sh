#!/bin/sh

THIS_SCRIPT="$(readlink -f $0)"
THIS_DIR=$(dirname "$THIS_SCRIPT")


SELECTED_DIR=$PWD
SELECTED_PORT=69

while getopts d:p: o
do	case "$o" in
	d)	SELECTED_DIR=$OPTARG 
		shift 2
		;; 
	p)	SELECTED_PORT=$OPTARG 
		shift 2
		;;
	*) echo "Usage: $0 [-p PORT] [-d PATH]" 
		 exit 1 
		 ;;
	esac
done

docker run --name "flash_env-$(date +%s)" -it --rm \
    -e CONTAINER_USER=$USER \
	-e SELECTED_PORT=$SELECTED_PORT \
	--network host \
    -v $THIS_DIR/startup.sh:/bin/startup.sh \
	-v $SELECTED_DIR:/data/ \
    flash_env:1.0 /bin/startup.sh