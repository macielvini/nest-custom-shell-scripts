#!/bin/bash

# HOW TO RUN
# ./nestmodule <MODULE_NAME> <FILE_NAME>

vnestfiles() {

  module=$1
  name=$2
  actual_location=$(pwd)
  path="${actual_location}/src/${module}"

  if [[ ! -f "nest-cli.json" ]]; then
    echo "WARNING: Please, run from your NestJS project root folder!"
    return 2
  fi

  if [ $# -eq 0 ]; then
    echo >&2 "WARNING: Provide a module name. eg: users"
    return 1
  fi

  if [ $# -eq 1 ]; then
    echo >&2 "WARNING: Provide a name for the files. eg: find-users will result in find-users.service.ts and etc..."
    return 1
  fi

  function mkfiles() {
    echo "import { Controller } from '@nestjs/common';" >>$path/controllers/$name.controller.ts
    echo "@Controller()" >>$path/controllers/$name.controller.ts
    echo "export class Controller {}" >>$path/controllers/$name.controller.ts

    echo "import { Injectable } from '@nestjs/common';" >>$path/services/$name.service.ts
    echo "@Injectable()" >>$path/services/$name.service.ts
    echo "export class Service {}" >>$path/services/$name.service.ts

    echo "import { Injectable } from '@nestjs/common';" >>$path/repositories/$name.repository.ts
    echo "@Injectable()" >>$path/repositories/$name.repository.ts
    echo "export class Repository {}" >>$path/repositories/$name.repository.ts
  }

  mkfiles
}
