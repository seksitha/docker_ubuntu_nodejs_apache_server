#!/bin/bash
set -eo pipefail
shopt -s nullglob
if [ ! -f .initialized ]; then                                                                                                                                                                                    
    echo "Initializing container"                                                                                                                                                                                 
    # run initializing commands  
    touch .initialized   
    cd /home/app/ && npm install -f                                                                                                                                                                              
fi    
echo "run CMD"                                                                                                                                                                                                             
# exec CMD command
exec "$@" 