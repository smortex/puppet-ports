--- /dev/null
+++ plugin_2_golangmco.go
@@ -0,0 +1,14 @@
+// auto generated 2020-09-28 11:42:34.321643234 -1000 -10 m=+1.515221354
+package main
+
+import (
+	"github.com/choria-io/go-choria/plugin"
+	p "github.com/choria-io/go-choria/providers/agent/mcorpc/golang"
+)
+
+func init() {
+	err := plugin.Register("golangmco", p.ChoriaPlugin())
+	if err != nil {
+		panic(err)
+	}
+}
