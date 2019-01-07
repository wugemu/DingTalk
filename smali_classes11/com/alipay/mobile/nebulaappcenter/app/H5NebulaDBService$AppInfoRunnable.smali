.class Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;
.super Ljava/lang/Object;
.source "H5NebulaDBService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoRunnable"
.end annotation


# instance fields
.field private appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field private h5GetAppInfoListen:Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;

.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;)V
    .locals 0
    .param p2, "app"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p3, "listen"    # Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 64
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;->h5GetAppInfoListen:Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;

    .line 65
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;->h5GetAppInfoListen:Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;->h5GetAppInfoListen:Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;->getAppInfoReady(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 73
    :cond_0
    return-void
.end method
