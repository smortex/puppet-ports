--- install.rb.orig
+++ install.rb
@@ -120,13 +120,15 @@
 
 def do_locales(locale, strip = 'locales/')
   locale.each do |lf|
-    next if File.directory? lf
-    olf = File.join(InstallOptions.locale_dir, lf.sub(/^#{strip}/, ''))
+    next unless File.extname(lf) == '.po'
+    olf = File.join(InstallOptions.locale_dir, File.dirname(lf.sub(/^#{strip}/, '')), 'LC_MESSAGES', File.basename(lf, '.po') + '.mo')
     op = File.dirname(olf)
     FileUtils.makedirs(op, {:mode => 0755, :verbose => true})
     FileUtils.chmod(0755, op)
-    FileUtils.install(lf, olf, {:mode => 0644, :preserve => true, :verbose => true})
+    `msgfmt -o #{olf} #{lf}`
+    FileUtils.chmod(0644, olf)
   end
+  FileUtils.install('locales/config.yaml', File.join(InstallOptions.locale_dir, 'config.yaml'), {:mode => 0644, :verbose => true})
 end
 
 # Verify that all of the prereqs are installed
