--- /dev/null
+++ plugin_1_externalmco.go
@@ -0,0 +1,15 @@
+// auto generated 2019-09-21 12:57:46.899869855 -1000 -10 m=+0.002999960
+package main
+
+import (
+	"github.com/choria-io/go-choria/plugin"
+	p "github.com/choria-io/mcorpc-agent-provider/mcorpc/external"
+
+)
+
+func init() {
+	err := plugin.Register("externalmco", p.ChoriaPlugin())
+	if err != nil {
+		panic(err)
+	}
+}
