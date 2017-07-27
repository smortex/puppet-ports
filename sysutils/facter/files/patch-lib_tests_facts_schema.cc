--- lib/tests/facts/schema.cc.orig	2017-07-27 09:42:55 UTC
+++ lib/tests/facts/schema.cc
@@ -434,6 +434,7 @@ protected:
         data result;
         result.version = 1;
         result.versions = { "1", "2", "3" };
+        result.feature_flags = { "async_destroy", "lz4_compress", "enabled_txg" };
         return result;
     }
 };
