--- /dev/null
+++ plugin_4_scout.go
@@ -0,0 +1,14 @@
+// auto generated 2020-07-18 14:36:25.162018278 -1000 -10 m=+9.048339995
+package main
+
+import (
+	"github.com/choria-io/go-choria/plugin"
+	p "github.com/choria-io/go-choria/scout/agent/scout"
+)
+
+func init() {
+	err := plugin.Register("scout", p.ChoriaPlugin())
+	if err != nil {
+		panic(err)
+	}
+}
