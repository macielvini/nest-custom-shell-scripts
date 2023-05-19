#!/bin/bash

# HOW TO RUN
# ./nestmodule <MODULE_NAME>


vnestmodule() {

  name=$1
  capitalized="$(tr '[:lower:]' '[:upper:]' <<<${name:0:1})${name:1}"
  path=$(pwd)
  
  mkfile() { mkdir -p -- "$1" && touch -- "$1"/"$2"; }

  if [[ ! -f "nest-cli.json" ]]; then
    echo "WARNING: Please, run from your NestJS project root folder!"
    return 2
  fi

  if [ $# -eq 0 ]; then
    echo >&2 "WARNING: Provide a module name"
    return 1
  fi

  cd "${path}/src" && mkdir -p -- $name && mkfile $name/controller index.ts && mkfile $name/services index.ts && mkfile $name/repositories index.ts && nest g mo $name --no-spec
}
