--- /dev/null
+++ plugin_3_rubymco.go
@@ -0,0 +1,14 @@
+// auto generated 2020-07-18 14:36:24.292996613 -1000 -10 m=+8.179318351
+package main
+
+import (
+	"github.com/choria-io/go-choria/plugin"
+	p "github.com/choria-io/go-choria/providers/agent/mcorpc/ruby"
+)
+
+func init() {
+	err := plugin.Register("rubymco", p.ChoriaPlugin())
+	if err != nil {
+		panic(err)
+	}
+}
