--- /dev/null
+++ plugin_1_externalmco.go
@@ -0,0 +1,14 @@
+// auto generated 2020-07-18 14:36:22.390170464 -1000 -10 m=+6.276492193
+package main
+
+import (
+	"github.com/choria-io/go-choria/plugin"
+	p "github.com/choria-io/go-choria/providers/agent/mcorpc/external"
+)
+
+func init() {
+	err := plugin.Register("externalmco", p.ChoriaPlugin())
+	if err != nil {
+		panic(err)
+	}
+}
