--- lib/puppetserver/ca/config/puppet.rb.orig	2020-11-06 21:46:06 UTC
+++ lib/puppetserver/ca/config/puppet.rb
@@ -92,12 +92,18 @@ module Puppetserver
           substitutions = Hash.new {|h, k| k }
           settings = {}
 
+          ssldir = if File.directory?('/var/puppet/ssl')
+                     '/var/puppet/ssl'
+                   else
+                     '$confdir/ssl'
+                   end
+
           # Order for base settings here matters!
           # These need to be evaluated before we can construct their dependent
           # defaults below
           base_defaults = [
             [:confdir, user_specific_puppet_confdir],
-            [:ssldir,'$confdir/ssl'],
+            [:ssldir, ssldir],
             [:certdir, '$ssldir/certs'],
             [:certname, default_certname],
             [:server, 'puppet'],
