# znc-openshift

This is a containerized ZNC implementation based on OpenShift.

It is based upon the excellent blog series by Neil Harrison Ripps [here](https://developers.redhat.com/blog/2016/09/27/that-app-you-love-part-1-making-a-connection). It extends it to add back the original awaynick module (See [here](https://wiki.znc.in/Awaynick) ) and modifies the template to base off ImageStreams.


It expects a PVC of znc-pvc-storage to be available. The `znc-pv.yaml` will create an appropriate volume that can be claimed for local testing (e.g. using `oc cluster up`).
