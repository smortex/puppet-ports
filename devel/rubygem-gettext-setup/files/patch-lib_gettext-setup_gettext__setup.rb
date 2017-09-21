--- lib/gettext-setup/gettext_setup.rb.orig	2017-09-21 06:09:51 UTC
+++ lib/gettext-setup/gettext_setup.rb
@@ -97,6 +97,8 @@ module GettextSetup
   def self.locales
     explicit = Dir.glob(File.absolute_path('*/*.po', locales_path)).map do |x|
       File.basename(File.dirname(x))
+    end + Dir.glob(File.absolute_path('**/*.mo', locales_path)).map do |x|
+      File.basename(File.dirname(File.dirname(x)))
     end
     (explicit + [default_locale]).uniq
   end
