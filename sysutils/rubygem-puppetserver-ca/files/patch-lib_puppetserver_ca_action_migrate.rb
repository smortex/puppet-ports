--- lib/puppetserver/ca/action/migrate.rb.orig	2020-11-28 00:49:58 UTC
+++ lib/puppetserver/ca/action/migrate.rb
@@ -7,16 +7,16 @@ module Puppetserver
     module Action
       class Migrate
         include Puppetserver::Ca::Utils
-        PUPPETSERVER_CA_DIR = '/etc/puppetlabs/puppetserver/ca'
+        PUPPETSERVER_CA_DIR = '/var/puppetserver/ca'
 
-        SUMMARY = "Migrate the existing CA directory to /etc/puppetlabs/puppetserver/ca"
+        SUMMARY = "Migrate the existing CA directory to /var/puppetserver/ca"
         BANNER = <<-BANNER
 Usage:
   puppetserver ca migrate [--help]
   puppetserver ca migrate [--config PATH]
 
 Description:
-  Migrate an existing CA directory to /etc/puppetlabs/puppetserver/ca. This is for
+  Migrate an existing CA directory to /var/puppetserver/ca. This is for
   upgrading from Puppet Platform 6.x to Puppet 7. Use the currently configured
   puppet.conf file in your installation, or supply one using the `--config` flag.
 Options:
