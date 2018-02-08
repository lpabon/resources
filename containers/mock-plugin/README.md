# mock-plugin

## Building
Just run `./make.sh`

## Using for Debugging a CSI driver
Deploy using `mock-plugin.yaml`. This will create a DaemonSet which will install
the mock-plugin container to each system. You can then go to the system with your
CSI driver and run `csc` commands. Here is an example:

```
$ kubectl exec -ti mock-plugin-a343 sh
#/ csc controller list-volumes -v 0.1.0 --endpoint /csi/com.myplugin.csi/csi.sock
```
