.class Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$9;
.super Ljava/lang/Object;
.source "H5AlertPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic val$h5Page:Liop;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liop;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$9;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$9;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$9;->val$h5Page:Liop;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$9;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 343
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$9;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 344
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$9;->val$h5Page:Liop;

    invoke-interface {v4}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "appId"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "appId":Ljava/lang/String;
    const-class v4, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 347
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 346
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 348
    .local v1, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v1, :cond_0

    .line 350
    :try_start_1
    const-class v4, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 351
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 352
    .local v2, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    if-eqz v2, :cond_0

    .line 353
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$9;->val$url:Ljava/lang/String;

    invoke-interface {v2, v0, v4}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->killTinyOpenMainUrl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 362
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v2    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    :goto_0
    return-void

    .line 355
    .restart local v0    # "appId":Ljava/lang/String;
    .restart local v1    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :catch_0
    move-exception v3

    .line 356
    .local v3, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v4, "H5AlertPlugin"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 359
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    .line 360
    .restart local v3    # "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5AlertPlugin"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
