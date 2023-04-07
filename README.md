# ovhcloud-terraform-2-pulumi

## Pre-requisites

```
$ brew install pulumi/tap/tf2pulumi
```

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
$ pulumi new go -f
Manage your Pulumi stacks by logging in.
Run `pulumi login --help` for alternative login options.
Enter your access token from https://app.pulumi.com/account/tokens
    or hit <ENTER> to log in using your browser                   :
We've launched your web browser to complete the login process.

Waiting for login to complete...


  Welcome to Pulumi!

  Pulumi helps you create, deploy, and manage infrastructure on any cloud using
  your favorite language. You can get started today with Pulumi at:

      https://www.pulumi.com/docs/get-started/

  Tip: Resources you create with Pulumi are given unique names (a randomly
  generated suffix) by default. To learn more about auto-naming or customizing resource
  names see https://www.pulumi.com/docs/intro/concepts/resources/#autonaming.


This command will walk you through creating a new Pulumi project.

Enter a value or leave blank to accept the (default), and press <ENTER>.
Press ^C at any time to quit.

project name: (ovhcloud-terraform-2-pulumi)
project description: (A minimal Go Pulumi program)
Created project 'ovhcloud-terraform-2-pulumi'

Please enter your desired stack name.
To create a stack in an organization, use the format <org-name>/<stack-name> (e.g. `acmecorp/dev`).
stack name: (dev) scraly/ovh
Created stack 'ovh'

Installing dependencies...
  ...
Finished installing dependencies

Your new project is ready to go! ✨

To perform an initial deployment, run `pulumi up`
```

```
$ tf2pulumi --target-language go
error: no resource plugin 'local' found in the workspace or on your $PATH
```