--- lib/inc/internal/facts/resolvers/zpool_resolver.hpp.orig	2017-07-27 09:42:55 UTC
+++ lib/inc/internal/facts/resolvers/zpool_resolver.hpp
@@ -43,6 +43,10 @@ namespace facter { namespace facts { nam
              */
             std::string version;
             /**
+             * Stores the zpool feature flags.
+             */
+            std::vector<std::string> feature_flags;
+            /**
              * Stores the zpool version numbers.
              */
             std::vector<std::string> versions;
