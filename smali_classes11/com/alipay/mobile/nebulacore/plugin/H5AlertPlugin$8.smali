.class Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$8;
.super Ljava/lang/Object;
.source "H5AlertPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->showAlert(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
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
    .line 285
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$8;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$8;->val$bridgeContext:Liny;

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
    .line 298
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 299
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "success"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string/jumbo v1, "index"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$8;->val$bridgeContext:Liny;

    invoke-interface {v1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 302
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$8;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->access$002(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/nebulacore/view/H5Alert;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 303
    return-void
.end method

.method public onClick(Lcom/alipay/mobile/nebulacore/view/H5Alert;I)V
    .locals 3
    .param p1, "alert"    # Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 288
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->dismiss()V

    .line 289
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 290
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "success"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string/jumbo v1, "index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$8;->val$bridgeContext:Liny;

    invoke-interface {v1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 293
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$8;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->access$002(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/nebulacore/view/H5Alert;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 294
    return-void
.end method
