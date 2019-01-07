.class final Lhls$6$1;
.super Ljava/lang/Object;
.source "MiniappInstance.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhls$6;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhls$6;


# direct methods
.method constructor <init>(Lhls$6;)V
    .locals 0
    .param p1, "this$1"    # Lhls$6;

    .prologue
    .line 736
    iput-object p1, p0, Lhls$6$1;->a:Lhls$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "isPatch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 739
    iget-object v0, p0, Lhls$6$1;->a:Lhls$6;

    iget-object v0, v0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setInstallEndTime(J)V

    .line 740
    if-eqz p1, :cond_0

    .line 741
    iget-object v0, p0, Lhls$6$1;->a:Lhls$6;

    iget-object v0, v0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setErrorCode(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lhls$6$1;->a:Lhls$6;

    iget-object v0, v0, Lhls$6;->c:Lhls;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {v0, p1, v1, v2}, Lhls;->a(Lhls;ZLjava/lang/String;Ljava/lang/String;)V

    .line 757
    :goto_0
    iget-object v0, p0, Lhls$6$1;->a:Lhls$6;

    iget-object v0, v0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setEndTime(J)V

    .line 758
    iget-object v0, p0, Lhls$6$1;->a:Lhls$6;

    iget-object v0, v0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog()V

    .line 759
    return-void

    .line 744
    :cond_0
    iget-object v0, p0, Lhls$6$1;->a:Lhls$6;

    iget-object v0, v0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setErrorCode(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lhls$6$1;->a:Lhls$6;

    iget v0, v0, Lhls$6;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 746
    iget-object v0, p0, Lhls$6$1;->a:Lhls$6;

    iget-object v0, v0, Lhls$6;->c:Lhls;

    const-string/jumbo v1, "sync_try_fail"

    const-string/jumbo v2, "try sync app fail"

    invoke-static {v0, v4, v1, v2}, Lhls;->a(Lhls;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 751
    :cond_1
    iget-object v0, p0, Lhls$6$1;->a:Lhls$6;

    iget-object v0, v0, Lhls$6;->c:Lhls;

    const-string/jumbo v1, "no_installed_pkg"

    const-string/jumbo v2, "install mini app package fail"

    invoke-static {v0, v4, v1, v2}, Lhls;->a(Lhls;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
