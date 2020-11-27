--- lib/puppetserver/ca/utils/config.rb.orig	2020-11-06 21:45:48 UTC
+++ lib/puppetserver/ca/utils/config.rb
@@ -23,7 +23,7 @@ module Puppetserver
 
         def self.puppet_confdir
           if running_as_root?
-            '/etc/puppetlabs/puppet'
+            '/usr/local/etc/puppet'
           else
             "#{ENV['HOME']}/.puppetlabs/etc/puppet"
           end
@@ -34,7 +34,9 @@ module Puppetserver
         end
 
         def self.default_ssldir(confdir = puppet_confdir)
-          File.join(confdir, 'ssl')
+          res = File.join(confdir, 'ssl')
+          res = '/var/puppet/ssl' unless File.directory?(res)
+          res
         end
 
         def self.old_default_cadir(confdir = puppet_confdir)
