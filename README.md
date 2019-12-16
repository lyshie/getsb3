# getsb3
Get Scratch 3 project `(*.sb3)`

## Essential tools
- [jq](https://stedolan.github.io/jq/): get `md5ext` from `project.json`
- zip: create `*.sb3` file
```
$ sudo dnf install -y jq zip
```

## Get sb3 file
```
$ ./getsb3.sh [PROJECT_ID]
$ ./getsb3.sh 327513248
$ ls
327513248/  327513248.sb3  getProjectByURL.sh getsb3.sh
```

## Author
HSIEH, Li-Yi

https://scratch.mit.edu/users/lyshie/
