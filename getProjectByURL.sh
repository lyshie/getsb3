#!/usr/bin/env sh

#### get project id from command line arguments
#### ./getProjectByURL.sh 327513248
prj=$(echo "$1" | sed -r "s/[^0-9]//g")

#### create temporary directory to store 'project.json' and 'assets' (costumes, sounds)
mkdir -p "$prj"

#### download 'project.json' from Scratch website
echo "Downloading project [$prj]"
wget "https://projects.scratch.mit.edu/$prj" -O "$prj/project.json" -nv

#### use 'jq' to parse json file, get all assets from 'project.json'
assets=$(cat "$prj/project.json" | jq -r ".targets[].costumes[].md5ext, .targets[].sounds[].md5ext")

#### download all assets from Scratch website
while IFS= read -r asset; do
    echo "Downloading [$asset]"
    wget "https://assets.scratch.mit.edu/$asset" -O "$prj/$asset" -nv
done <<< "$assets"

#### use 'zip' to create sb3 file
zip -r -j "$prj.sb3" "$prj"
