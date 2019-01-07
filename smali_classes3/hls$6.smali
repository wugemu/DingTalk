.class final Lhls$6;
.super Lhlv;
.source "MiniappInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhls;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

.field final synthetic b:I

.field final synthetic c:Lhls;


# direct methods
.method constructor <init>(Lhls;ILcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;I)V
    .locals 1
    .param p1, "this$0"    # Lhls;
    .param p2, "path"    # I

    .prologue
    .line 702
    iput-object p1, p0, Lhls$6;->c:Lhls;

    iput-object p3, p0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    iput p4, p0, Lhls$6;->b:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lhlv;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onCancel(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V
    .locals 5
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 715
    iget-object v0, p0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setDownloadEndTime(J)V

    .line 716
    iget-object v0, p0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setErrorCode(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setEndTime(J)V

    .line 718
    iget-object v0, p0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog()V

    .line 719
    iget v0, p0, Lhls$6;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 720
    iget-object v0, p0, Lhls$6;->c:Lhls;

    const-string/jumbo v1, "sync_try_fail"

    const-string/jumbo v2, "try sync app fail"

    invoke-static {v0, v4, v1, v2}, Lhls;->a(Lhls;ZLjava/lang/String;Ljava/lang/String;)V

    .line 730
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lhls$6;->c:Lhls;

    const-string/jumbo v1, "no_downloaded_pkg"

    const-string/jumbo v2, "download mini app package fail"

    invoke-static {v0, v4, v1, v2}, Lhls;->a(Lhls;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V
    .locals 5
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 766
    iget-object v0, p0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setDownloadEndTime(J)V

    .line 767
    iget-object v0, p0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setErrorCode(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setEndTime(J)V

    .line 769
    iget-object v0, p0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog()V

    .line 770
    iget v0, p0, Lhls$6;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 771
    iget-object v0, p0, Lhls$6;->c:Lhls;

    const-string/jumbo v1, "sync_try_fail"

    const-string/jumbo v2, "try sync app fail"

    invoke-static {v0, v4, v1, v2}, Lhls;->a(Lhls;ZLjava/lang/String;Ljava/lang/String;)V

    .line 781
    :goto_0
    return-void

    .line 776
    :cond_0
    iget-object v0, p0, Lhls$6;->c:Lhls;

    const-string/jumbo v1, "no_downloaded_pkg"

    const-string/jumbo v2, "download mini app package fail"

    invoke-static {v0, v4, v1, v2}, Lhls;->a(Lhls;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
    .locals 4
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "savePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 734
    iget-object v0, p0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setDownloadEndTime(J)V

    .line 735
    iget-object v0, p0, Lhls$6;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setInstallTime(J)V

    .line 736
    invoke-static {}, Lhmp;->a()Lhmp;

    move-result-object v0

    iget-object v1, p0, Lhls$6;->c:Lhls;

    invoke-static {v1}, Lhls;->a(Lhls;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lhls$6;->c:Lhls;

    invoke-static {v2}, Lhls;->e(Lhls;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lhls$6$1;

    invoke-direct {v3, p0}, Lhls$6$1;-><init>(Lhls$6;)V

    invoke-virtual {v0, v1, v2, v3}, Lhmp;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 762
    return-void
.end method

.method public final onPrepare(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V
    .locals 0
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    .prologue
    .line 706
    return-void
.end method

.method public final onProgress(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;I)V
    .locals 0
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "progress"    # I

    .prologue
    .line 711
    return-void
.end method
