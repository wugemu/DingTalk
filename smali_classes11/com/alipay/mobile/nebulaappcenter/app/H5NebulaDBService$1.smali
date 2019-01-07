.class Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$1;
.super Ljava/lang/Object;
.source "H5NebulaDBService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getAppInfoAsync(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$h5GetAppInfoListen:Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$1;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$1;->val$version:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$1;->val$h5GetAppInfoListen:Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;

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
    .line 48
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$1;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$1;->val$appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$1;->val$version:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 50
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$1;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$1;->val$h5GetAppInfoListen:Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;

    invoke-direct {v1, v2, v0, v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService$AppInfoRunnable;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method
