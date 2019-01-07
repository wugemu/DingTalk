.class final Lhmp$4;
.super Lhlv;
.source "MiniAppBundleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhlo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lhmp;


# direct methods
.method constructor <init>(Lhmp;ILhlo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhmp;
    .param p2, "path"    # I

    .prologue
    .line 481
    iput-object p1, p0, Lhmp$4;->d:Lhmp;

    iput-object p3, p0, Lhmp$4;->a:Lhlo;

    iput-object p4, p0, Lhmp$4;->b:Ljava/lang/String;

    iput-object p5, p0, Lhmp$4;->c:Ljava/lang/String;

    invoke-direct {p0, p2}, Lhlv;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onCancel(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V
    .locals 4
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 484
    invoke-super {p0, p1}, Lhlv;->onCancel(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V

    .line 485
    iget-object v0, p0, Lhmp$4;->a:Lhlo;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lhmp$4;->a:Lhlo;

    const-string/jumbo v1, "no_downloaded_pkg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download target app "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhmp$4;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lhmp$4;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is canceled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lhlo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_0
    return-void
.end method

.method public final onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V
    .locals 4
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 492
    invoke-super {p0, p1, p2, p3}, Lhlv;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    .line 493
    iget-object v0, p0, Lhmp$4;->a:Lhlo;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lhmp$4;->a:Lhlo;

    const-string/jumbo v1, "no_downloaded_pkg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download target app "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhmp$4;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lhmp$4;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lhlo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_0
    return-void
.end method

.method public final onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
    .locals 4
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "savePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 500
    invoke-super {p0, p1, p2}, Lhlv;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lhmp$4;->d:Lhmp;

    iget-object v1, p0, Lhmp$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lhmp$4;->c:Ljava/lang/String;

    new-instance v3, Lhmp$4$1;

    invoke-direct {v3, p0}, Lhmp$4$1;-><init>(Lhmp$4;)V

    invoke-virtual {v0, v1, v2, v3}, Lhmp;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 516
    return-void
.end method
