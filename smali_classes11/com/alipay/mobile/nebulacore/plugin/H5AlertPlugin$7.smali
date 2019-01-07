.class Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$7;
.super Ljava/lang/Object;
.source "H5AlertPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;


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


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$7;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$7;->val$bridgeContext:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/alipay/mobile/nebulacore/view/H5Alert;)V
    .locals 3
    .param p1, "alert"    # Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 244
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "ok"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$7;->val$bridgeContext:Liny;

    invoke-interface {v1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 246
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$7;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->access$002(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/nebulacore/view/H5Alert;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 247
    return-void
.end method

.method public onClick(Lcom/alipay/mobile/nebulacore/view/H5Alert;I)V
    .locals 4
    .param p1, "alert"    # Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 235
    .local v0, "confirmed":Z
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 236
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "ok"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$7;->val$bridgeContext:Liny;

    invoke-interface {v2, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 238
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$7;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->access$002(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/nebulacore/view/H5Alert;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 239
    return-void

    .line 234
    .end local v0    # "confirmed":Z
    .end local v1    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
