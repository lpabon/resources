# How to release a new version

This guide covers release of new version of kubernetes-csi containers that have `make push` in their `Makefile`, i.e. csi-attacher, csi-provisioner and river-registrar.

It also assumes you have permissions to create releases on GitHub and push to quay.io.

## GitHub

1. Make sure that the branch you want to release (`master` or `release-x.y`) is up to date and test it.
2. Make sure that Makefile has the right `IMAGE_VERSION` value. If not, change it now before you tag a new release.
3. On GitHub: Releases -> Draft a new release.
   This will create both tag in the repo and new release. Make sure you fill the right target branch!

   It is possible to delete tags and releases in GitHub UI. Click on a release (e.g. `v0.2.0.1`), "Delete release" button should appear. It's the same for tags. Or play with `git`.

# quay.io

1. Here it's simple: `make push`.
