--- lib/inc/facter/facts/fact.hpp.orig	2017-07-27 09:42:55 UTC
+++ lib/inc/facter/facts/fact.hpp
@@ -538,6 +538,11 @@ namespace facter { namespace facts {
         constexpr static char const* zpool_version = "zpool_version";
 
         /**
+         * The ZFS storage pool supported feature flags.
+         */
+        constexpr static char const* zpool_featureflags = "zpool_featureflags";
+
+        /**
          * The ZFS storage pool supported version numbers.
          */
         constexpr static char const* zpool_versionnumbers = "zpool_featurenumbers";
