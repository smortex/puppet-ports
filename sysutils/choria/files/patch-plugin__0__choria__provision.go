--- /dev/null
+++ plugin_0_choria_provision.go
@@ -0,0 +1,14 @@
+// auto generated 2020-07-18 14:36:16.155336736 -1000 -10 m=+0.041658466
+package main
+
+import (
+	"github.com/choria-io/go-choria/plugin"
+	p "github.com/choria-io/provisioning-agent/agent"
+)
+
+func init() {
+	err := plugin.Register("choria_provision", p.ChoriaPlugin())
+	if err != nil {
+		panic(err)
+	}
+}
