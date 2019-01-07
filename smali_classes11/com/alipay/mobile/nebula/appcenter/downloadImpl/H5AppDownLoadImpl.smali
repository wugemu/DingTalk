.class public Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoadImpl;
.super Ljava/lang/Object;
.source "H5AppDownLoadImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5AppDownLoadImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownload(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    .locals 3
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "callback"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    const-string/jumbo v1, "H5AppDownLoadImpl"

    const-string/jumbo v2, "addDownload"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    .line 25
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    :cond_0
    const-string/jumbo v1, "H5AppDownLoadImpl"

    const-string/jumbo v2, "download url is empty"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/16 v1, 0x270f

    const-string/jumbo v2, "download failed,the url is empty"

    invoke-virtual {p2, p1, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    .line 46
    :cond_1
    :goto_0
    return-void

    .line 32
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->registerCallback(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "callbackList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;>;"
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->callbackData:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 37
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->callbackData:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callbackList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;>;"
    check-cast v0, Ljava/util/List;

    .line 39
    .restart local v0    # "callbackList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;>;"
    :cond_3
    if-nez v0, :cond_4

    .line 40
    const-string/jumbo v1, "H5AppDownLoadImpl"

    const-string/jumbo v2, "callbackList==null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_4
    const-string/jumbo v1, "RPC"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;

    invoke-direct {v2, p1, v0}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;-><init>(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 53
    return-void
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 1
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->isDownloadTaskExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
