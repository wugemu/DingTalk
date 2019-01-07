.class Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$6;
.super Ljava/lang/Object;
.source "H5AlertPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->confirm(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

.field final synthetic val$bridgeContext:Liny;

.field final synthetic val$h5DialogManagerProvider:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Liny;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$6;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$6;->val$bridgeContext:Liny;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$6;->val$h5DialogManagerProvider:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 221
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "ok"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$6;->val$bridgeContext:Liny;

    invoke-interface {v1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 223
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$6;->val$h5DialogManagerProvider:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->release()V

    .line 224
    return-void
.end method
