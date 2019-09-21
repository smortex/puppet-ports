--- /dev/null
+++ plugin_3_rubymco.go
@@ -0,0 +1,15 @@
+// auto generated 2019-09-21 12:57:46.900166016 -1000 -10 m=+0.003296111
+package main
+
+import (
+	"github.com/choria-io/go-choria/plugin"
+	p "github.com/choria-io/mcorpc-agent-provider/mcorpc/ruby"
+
+)
+
+func init() {
+	err := plugin.Register("rubymco", p.ChoriaPlugin())
+	if err != nil {
+		panic(err)
+	}
+}
