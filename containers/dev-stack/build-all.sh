#!/usr/bin/env bash
build_tainers () {
  cd ../$1 && docker build -t $1 .
}
export -f build_tainers

tainers=( $(find ..  -maxdepth 1  ! -path .. -type d -printf '%f\n'))
tainers_ignore=("dev-stack" "ecs")
tainers_list=(${tainers[@]/$tainers_ignore})

printf '%s\n' "${tainers_list[@]}" | xargs -I{} -P"${#tainers_list[@]}"  bash -c "build_tainers {}"
echo "tainers:" "${#tainers_list[@]}"

docker-compose up || (
  echo "woohoo!" #cleanup here
)
