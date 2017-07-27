--- lib/inc/internal/facts/openbsd/virtualization_resolver.hpp.orig	2017-07-18 18:49:09 UTC
+++ lib/inc/internal/facts/openbsd/virtualization_resolver.hpp
@@ -22,4 +22,4 @@ namespace facter { namespace facts { nam
         virtual std::string get_hypervisor(collection& facts) override;
     };
 
-}}}  // namespace facter::facts::osx
+}}}  // namespace facter::facts::openbsd
