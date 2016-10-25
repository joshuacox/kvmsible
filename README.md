# kvmsible

An ansible playbook to install a KVM host and set it up to start building packer images.

### Usage

```
make bootstrap
```

Will bootstrap the ansible requirements onto your server (if freshly provisioned these are not likely to be present)

```
make server
```

Then you can use the `server` recipe and make the server into a KVM host
