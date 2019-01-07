.class Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1$1;
.super Ljava/lang/Object;
.source "H5AppHandler.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;

    .prologue
    .line 800
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZZ)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "isPatch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 805
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$000()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setInstallEndTime(J)V

    .line 806
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "install onResult "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    if-eqz p1, :cond_0

    .line 809
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;->val$finalH5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;->val$syncUpdate:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;->val$copyParam:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$1000(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 824
    :goto_0
    return-void

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;->val$finalH5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 820
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$1100()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$5;->val$offMode:Ljava/lang/String;

    .line 817
    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$1200(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    goto :goto_0
.end method
