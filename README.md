# ovhcloud-terraform-2-pulumi

## Pre-requisites

```
$ brew install pulumi/tap/pulumi
```

## Usage

```
$ pulumi plugin install resource ovh v0.29.0 --server github://api.github.com/lbrlabs
[resource plugin ovh-0.29.0] installing
Downloading plugin: 9.45 MiB / 9.45 MiB [===========================] 100.00% 4s
```


```
$ pulumi convert --from terraform --language go
Converting from terraform...
Converting to go...
Installing dependencies...

go: finding module for package github.com/mattn/go-isatty
go: finding module for package github.com/lbrlabs/pulumi-ovh/sdk/go/ovh/CloudProject
go: found github.com/mattn/go-isatty in github.com/mattn/go-isatty v0.0.19
go: finding module for package github.com/lbrlabs/pulumi-ovh/sdk/go/ovh/CloudProject
ovhcloud-terraform-2-pulumi imports
	github.com/lbrlabs/pulumi-ovh/sdk/go/ovh/CloudProject: module github.com/lbrlabs/pulumi-ovh/sdk@latest found (v0.2.0), but does not contain package github.com/lbrlabs/pulumi-ovh/sdk/go/ovh/CloudProject
error: installing dependencies failed; rerun manually to try again, then run `pulumi up` to perform an initial deployment: `go mod tidy` failed to install dependencies: exit status 1
```
