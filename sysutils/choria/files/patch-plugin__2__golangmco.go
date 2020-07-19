--- /dev/null
+++ plugin_2_golangmco.go
@@ -0,0 +1,14 @@
+// auto generated 2020-07-18 14:36:23.316403099 -1000 -10 m=+7.202724815
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
