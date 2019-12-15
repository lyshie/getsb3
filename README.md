# getsb3
Get Scratch 3 project `(*.sb3)`
- [jq](https://stedolan.github.io/jq/): get `md5ext` from `project.json`
- zip: create `*.sb3` file
```
$ sudo dnf install -y jq zip
```
```
$ ./getProjectByURL.sh [PROJECT_ID]
$ ./getProjectByURL.sh 327513248
$ ls
327513248/  327513248.sb3  getProjectByURL.sh
```
