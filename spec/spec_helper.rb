require 'serverspec'
require 'docker'

# echo $DOCKER_HOST
Docker.url = 'https://192.168.59.103:2376'

# For serverspec
set :backend, :exec
#include SpecInfra::Helper::Ssh
#include SpecInfra::Helper::DetectOS
