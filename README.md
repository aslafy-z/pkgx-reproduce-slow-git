# pkgx-reproduce-slow-git

## Try within Codespaces

- Start a codespace
- Wait for it to execute pkgx installation and preheat
- Run `bash bench.sh`

## Try at home

- Preheat pkgx with `pkgx git --version`
- Compare
  ```
  time pkgx git branch
  ```
  and
  ```
  time /usr/bin/git branch
  ```

## My results

```
# executing 'git --version' with system git
+ /usr/bin/git --version
git version 2.25.1

real    0m0.001s
user    0m0.000s
sys     0m0.001s


# executing 'git branch' with system git
+ /usr/bin/git branch
* main

real    0m0.003s
user    0m0.003s
sys     0m0.000s


# executing 'git --version' with pkgx git
+ pkgx git --version
git version 2.42.0

real    0m0.482s
user    0m0.564s
sys     0m0.118s


# executing 'git branch' with pkgx git
+ pkgx git branch
* main

real    0m1.022s
user    0m1.127s
sys     0m0.228s
```
