--- lib/puppetserver/ca/utils/config.rb.orig	2020-11-28 04:27:37 UTC
+++ lib/puppetserver/ca/utils/config.rb
@@ -23,7 +23,7 @@ module Puppetserver
 
         def self.puppet_confdir
           if running_as_root?
-            '/etc/puppetlabs/puppet'
+            '/usr/local/etc/puppet'
           else
             "#{ENV['HOME']}/.puppetlabs/etc/puppet"
           end
@@ -34,11 +34,11 @@ module Puppetserver
         end
 
         def self.default_ssldir(confdir = puppet_confdir)
-          File.join(confdir, 'ssl')
+          '/var/puppet/ssl'
         end
 
         def self.old_default_cadir(confdir = puppet_confdir)
-          File.join(confdir, 'ssl', 'ca')
+          '/var/puppet/ssl/ca'
         end
 
         def self.new_default_cadir(confdir = puppet_confdir)
