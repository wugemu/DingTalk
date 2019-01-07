.class Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;
.super Landroid/content/BroadcastReceiver;
.source "H5NotifyPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

.field final synthetic val$bridgecontext:Liny;

.field final synthetic val$broadcastName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;Ljava/lang/String;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->val$broadcastName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->val$bridgecontext:Liny;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    .line 112
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->val$broadcastName:Ljava/lang/String;

    .line 113
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->val$bridgecontext:Liny;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    .line 115
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->access$100(Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;)Ldq;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->val$broadcastName:Ljava/lang/String;

    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v1, "extra":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->val$broadcastName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->val$bridgecontext:Liny;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-interface {v2, v3}, Liny;->sendBridgeResultWithCallbackKept(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5NotifyPlugin"

    const-string/jumbo v3, "getExtras Exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->val$bridgecontext:Liny;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-interface {v2, v3}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 129
    const-string/jumbo v2, "H5NotifyPlugin"

    const-string/jumbo v3, "unregister receiver keepalive false"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->access$100(Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;)Ldq;

    move-result-object v2

    invoke-virtual {v2, p0}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 131
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->val$broadcastName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
