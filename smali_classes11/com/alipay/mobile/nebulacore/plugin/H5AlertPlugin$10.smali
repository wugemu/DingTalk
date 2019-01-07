.class Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$10;
.super Ljava/lang/Object;
.source "H5AlertPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->showDialog(Lcom/alipay/mobile/h5container/api/H5Event;Liop;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$h5BridgeContext:Liny;

.field final synthetic val$h5Page:Liop;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Liny;Liop;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$10;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$10;->val$h5BridgeContext:Liny;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$10;->val$h5Page:Liop;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$10;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 387
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$10;->val$h5BridgeContext:Liny;

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$10;->val$h5BridgeContext:Liny;

    invoke-interface {v2}, Liny;->sendSuccess()V

    .line 390
    :cond_0
    const-string/jumbo v2, "H5_UC_FAIL_DIALOG"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 391
    .local v1, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$10;->val$h5Page:Liop;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$10;->val$h5Page:Liop;

    invoke-interface {v2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 392
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$10;->val$h5Page:Liop;

    invoke-interface {v3}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "appId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 394
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 396
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$10;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 397
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    const-class v2, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 402
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 403
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->stopSelfProcess()V

    .line 407
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_2
    return-void
.end method
