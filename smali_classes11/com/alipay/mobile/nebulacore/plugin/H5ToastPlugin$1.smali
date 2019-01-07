.class Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin$1;
.super Ljava/lang/Object;
.source "H5ToastPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->toast(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;

.field final synthetic val$bridgeContext:Liny;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin$1;->val$bridgeContext:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    const-string/jumbo v1, "H5ToastPlugin"

    const-string/jumbo v2, "toast show call back"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 98
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "toastCallBack"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin$1;->val$bridgeContext:Liny;

    invoke-interface {v1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 100
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;)V

    .line 101
    return-void
.end method
