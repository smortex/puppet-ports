
$FreeBSD$

--- lib/src/facts/collection.cc.orig	2017-06-27 17:42:22 UTC
+++ lib/src/facts/collection.cc
@@ -24,6 +24,7 @@
 #include <rapidjson/prettywriter.h>
 #include <yaml-cpp/yaml.h>
 #include <algorithm>
+#include <string>
 
 using namespace std;
 using namespace facter::util;
