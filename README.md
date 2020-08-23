# jx-app-gloo

The chart for the [Gloo](https://www.solo.io/products/gloo/) for Jenkins X.

## Install

This chart can be installed using the `jx` CLI.

```shell
jx add app jx-app-gloo
```

After installation, you need to set up the knative domain.

Fist of all, you should get the knative external proxy with following command:

```shell
$ glooctl proxy url --name knative-external-proxy
```

Suppose return http://111.222.222.222, we need convert the result to `IP.nip.io` format, for example 111.222.222.222.nip.io

Next, edit the domain configuration config-map to configure 111.222.222.222.nip.io for all routes: 

```shell
$ kubectl edit cm config-domain --namespace knative-serving
```

```
apiVersion: v1
data:
  111.222.222.222.nip.io: ""
kind: ConfigMap
[...]
```
