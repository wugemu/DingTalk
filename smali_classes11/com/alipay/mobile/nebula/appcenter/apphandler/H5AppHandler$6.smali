.class final Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;
.super Ljava/lang/Object;
.source "H5AppHandler.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->setSyncOffline(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field final synthetic val$copyParam:Landroid/os/Bundle;

.field final synthetic val$finalH5LoadingManager1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

.field final synthetic val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

.field final synthetic val$offMode:Ljava/lang/String;

.field final synthetic val$syncUpdate:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$finalH5LoadingManager1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$syncUpdate:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$copyParam:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iput-object p6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$url:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$offMode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "isPatch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 869
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$000()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setInstallEndTime(J)V

    .line 870
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "install result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    if-eqz p1, :cond_0

    .line 872
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$finalH5LoadingManager1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$syncUpdate:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$copyParam:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$1000(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 879
    :goto_0
    return-void

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$finalH5LoadingManager1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 877
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$1100()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$6;->val$offMode:Ljava/lang/String;

    .line 876
    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$1200(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    goto :goto_0
.end method
