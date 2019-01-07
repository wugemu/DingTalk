.class public Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
.super Ljava/lang/Object;
.source "H5DownloadCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5DownloadCallback"


# instance fields
.field private callback:Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

.field private needInstall:Z

.field private urgentInstall:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;-><init>(ZZLcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 30
    return-void
.end method

.method public constructor <init>(ZZLcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V
    .locals 0
    .param p1, "needInstall"    # Z
    .param p2, "urgentInstall"    # Z
    .param p3, "installCallback"    # Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->needInstall:Z

    .line 41
    iput-boolean p2, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->urgentInstall:Z

    .line 42
    iput-object p3, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->callback:Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->callback:Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

    return-object v0
.end method


# virtual methods
.method public onCancel(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V
    .locals 3
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    const-string/jumbo v0, "H5DownloadCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCancel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V
    .locals 3
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    const-string/jumbo v0, "H5DownloadCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onFinish: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", errorMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
    .locals 7
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "savePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    const-string/jumbo v4, "H5DownloadCallback"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onFinish: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", savePath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-boolean v4, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->needInstall:Z

    if-eqz v4, :cond_0

    .line 79
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 80
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "appId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "version":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->urgentInstall:Z

    if-eqz v4, :cond_1

    const-string/jumbo v1, "URGENT_DISPLAY"

    .line 85
    .local v1, "executor":Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback$1;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 94
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "executor":Ljava/lang/String;
    .end local v2    # "provider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v3    # "version":Ljava/lang/String;
    :cond_0
    return-void

    .line 84
    .restart local v0    # "appId":Ljava/lang/String;
    .restart local v2    # "provider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v3    # "version":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "IO"

    goto :goto_0
.end method

.method public onPrepare(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V
    .locals 3
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    const-string/jumbo v0, "H5DownloadCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPrepare: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method

.method public onProgress(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;I)V
    .locals 0
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "progress"    # I

    .prologue
    .line 61
    return-void
.end method
