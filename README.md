# WIP FreeBSD Puppet 5 ports

You are encouraged to test these ports and report success / failures to romain@.

If you use `ports-mgmt/portshaker`, you can use the following configuration to merge these ports into the FreeBSD ports easily:

```
main_ports_tree="/usr/ports"
main_merge_from="ports github:smortex:puppet5!"
```

I published some information about the update process on my blog: [Call For Testers: Puppet 5 ports on FreeBSD](https://romain.blogreen.org/blog/2017/07/call-for-testers-puppet-5-ports-on-freebsd/).

## What's in it?

New ports for:

* databases/puppetdb-terminus5
* databases/puppetdb5
* devel/rubygem-hocon
* sysutils/puppet5

Updates for:

* devel/cpp-hocon ([ports/220601](https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=220601))
* devel/leatherman ([ports/220471](https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=220471))
* sysutils/facter (a bunch of patches not merged upstream yet)

Conflicts updates for:

* databases/puppetdb-terminus3
* databases/puppetdb-terminus4
* databases/puppetdb3
* databases/puppetdb4
* sysutils/puppet4
