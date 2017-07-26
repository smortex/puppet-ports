
$FreeBSD$

--- util/package/puppetpackage.rb.orig
+++ util/package/puppetpackage.rb
@@ -45,7 +45,8 @@
           require 'puppet'
           @provider ||= Puppet::Type.type(:package).new({:name => @package}.merge(@options)).provider
 
-          if @provider.class.to_s == 'Puppet::Type::Package::ProviderWindows'
+          case @provider.class.to_s
+          when 'Puppet::Type::Package::ProviderWindows'
             # the windows provider cannot uninstall unless you got the object
             # via instances, as uninstall is implemented in terms of
             # provider.package
@@ -54,6 +55,9 @@
             if instance
               @provider.package = instance.package
             end
+          when 'Puppet::Type::Package::ProviderPkgng'
+            instance = @provider.class.instances.find { |pkg| pkg.name == @package }
+            @provider = instance if instance
           end
           @provider
         end
