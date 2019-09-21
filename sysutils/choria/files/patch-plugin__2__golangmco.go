--- /dev/null
+++ plugin_2_golangmco.go
@@ -0,0 +1,15 @@
+// auto generated 2019-09-21 12:57:46.90002488 -1000 -10 m=+0.003154987
+package main
+
+import (
+	"github.com/choria-io/go-choria/plugin"
+	p "github.com/choria-io/mcorpc-agent-provider/mcorpc/golang"
+
+)
+
+func init() {
+	err := plugin.Register("golangmco", p.ChoriaPlugin())
+	if err != nil {
+		panic(err)
+	}
+}
