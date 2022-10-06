# Google Kubernetes Engine

## Description

This project demonstrates how to create a Private GKE standard cluster using [Google CFT](https://github.com/GoogleCloudPlatform/cloud-foundation-toolkit/blob/master/docs/terraform.md) modules and NGINX ingress.

In this example, all nodes have private ips and the cluster's masters are private.

Resources created:
- VPC
- Subnet
- NAT
- GKE

## Deploy

1. Create a new project and select it.

2. Open Cloud Shell and ensure the var below is set, otherwise set it with `gcloud config set project` command
```
echo $GOOGLE_CLOUD_PROJECT
```

3. Clone this repo into the Cloud Shell VM
```
git clone https://github.com/sylvioneto/gcp-gke-standard.git
cd ./gcp-gke-standard
```

4. Find and replace the string `yourdomain.com` by your own domain.

5. Run the deploy script
```
sh deploy.sh
```

At this point your cluster and workloads ar up and running, please check it on [GKE](https://console.cloud.google.com/kubernetes/list/overview).

(Optional) Add the ingress-nginx IP to your DNS records in order to access the applications.


## Destroy
Run the destroy script
```
sh deploy.sh
```