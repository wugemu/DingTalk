.class Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList$1;
.super Ljava/lang/Object;
.source "H5DevAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->remove(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

.field final synthetic val$appId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList$1;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    const-class v3, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 88
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 89
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    const-class v3, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 92
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    if-eqz v1, :cond_0

    .line 93
    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList$1;->val$appId:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->removeDevApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5DevAppList"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
