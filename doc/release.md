# How to release a new version

This guide covers release of new version of kubernetes-csi containers that have `make push` in their `Makefile`, i.e. csi-attacher, csi-provisioner and driver-registrar.

It also assumes you have permissions to create releases on GitHub and push to quay.io.

## GitHub

1. Make sure that the branch you want to release (`master` or `release-x.y`) is up to date and test it.
2. Make sure that Makefile has the right `IMAGE_VERSION` value. If not, change it now before you tag a new release.
3. On GitHub: Releases -> Draft a new release.
   This will create both tag in the repo and new release. Make sure you fill the right target branch!

   It is possible to delete tags and releases in GitHub UI. Click on a release (e.g. `v0.2.0.1`), "Delete release" button should appear. It's the same for tags. Or play with `git`.

## quay.io

1. Here it's simple: `make push`.

# How to backport a change

Once a PR has been merged to master the commit for the change(s) (not including the merge) can be cherry picked onto a release branch. Here is an example for a commit with the example hash of `abcdef` assuming that your git `origin` is set to the GitHub repo:

```
$ git checkout master
$ git pull
$ git checkout -b release-2.0.0 origin/release-2.0.0
$ git checkout -b pick-abcdef
$ git cherry-pick abcdef
$ git push <fork> pick-abcdef
```

**IMPORTANT**: Now when you go to GitHub to submit your PR from your fork, you **must** make sure to choose `release-xxxx` branch instead of the master branch, as the branch to commit to.
