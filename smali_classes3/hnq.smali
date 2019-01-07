.class public final Lhnq;
.super Ljava/lang/Object;
.source "MiniAppExternalDownloadManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhnq$a;
    }
.end annotation


# instance fields
.field private a:Lhnq$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lhnq$a;

    invoke-direct {v0, p0}, Lhnq$a;-><init>(Lhnq;)V

    iput-object v0, p0, Lhnq;->a:Lhnq$a;

    .line 260
    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "errorCode"    # I
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "miniAppId"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lgvi;->downloadAlipayPackageError(ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v2, 0x0

    invoke-static {p2, v2, p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniappDownLoadStatus(Ljava/lang/String;II)V

    .line 192
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "appId"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string/jumbo v2, "errorCode"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string/jumbo v2, "errorMsg"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string/jumbo v2, "miniDownloadFail"

    invoke-static {v2, v0}, Lhmv;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lhnq;ILjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    .locals 0
    .param p0, "x0"    # Lhnq;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .prologue
    .line 35
    invoke-static {p1, p2, p3}, Lhnq;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lhnq;Ljava/lang/String;ZJLcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    .locals 3
    .param p0, "x0"    # Lhnq;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # J
    .param p5, "x4"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .prologue
    const/4 v1, 0x1

    .line 35
    .line 4204
    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p1, v1, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniappDownLoadStatus(Ljava/lang/String;II)V

    .line 4206
    const-wide/16 v0, 0xbb8

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 4208
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4209
    const-string/jumbo v1, "appId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4210
    const-string/jumbo v1, "time"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4211
    const-string/jumbo v1, "cached"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4212
    const-string/jumbo v1, "miniDownloadLong"

    invoke-static {v1, v0}, Lhmv;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4216
    :cond_0
    :goto_1
    return-void

    .line 4204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4214
    :catch_0
    move-exception v0

    .line 4215
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final addDownload(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    .locals 10
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "callback"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v9, 0x270f

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 65
    if-nez p2, :cond_0

    .line 66
    const-string/jumbo v0, "MiniAppExternalDownloadManagerImpl"

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "callback is null"

    aput-object v4, v1, v5

    .line 1093
    const-string/jumbo v4, "mini_data"

    invoke-static {v4, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const/16 v0, 0x3e9

    const-string/jumbo v1, "callback is null"

    const-string/jumbo v4, ""

    invoke-static {v0, v1, v4}, Lhnq;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 71
    :cond_0
    if-nez p1, :cond_1

    .line 72
    const-string/jumbo v0, "MiniAppExternalDownloadManagerImpl"

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "download failed, h5DownloadRequest is null"

    aput-object v4, v1, v5

    .line 2093
    const-string/jumbo v4, "mini_data"

    invoke-static {v4, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    const-string/jumbo v0, "download failed,h5DownloadRequest is null"

    invoke-virtual {p2, p1, v9, v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    .line 74
    const/16 v0, 0x3ea

    const-string/jumbo v1, "h5DownloadRequest is null"

    const-string/jumbo v4, ""

    invoke-static {v0, v1, v4}, Lhnq;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    const-string/jumbo v0, "MiniAppExternalDownloadManagerImpl"

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "download failed,the url is empty"

    aput-object v4, v1, v5

    .line 3093
    const-string/jumbo v4, "mini_data"

    invoke-static {v4, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    const-string/jumbo v0, "download failed,the url is empty"

    invoke-virtual {p2, p1, v9, v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    .line 81
    const/16 v0, 0x3eb

    const-string/jumbo v1, "url is empty"

    const-string/jumbo v4, ""

    invoke-static {v0, v1, v4}, Lhnq;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 86
    .local v2, "downloadStartTime":J
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "downloadUrl":Ljava/lang/String;
    const-string/jumbo v0, "MiniAppExternalDownloadManagerImpl"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "downloadUrl==>"

    aput-object v4, v1, v5

    aput-object v6, v1, v8

    const/4 v4, 0x2

    const-string/jumbo v5, " fileName==>"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    .line 88
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getFileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, " miniAppId==>"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getAppId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 4093
    const-string/jumbo v4, "mini_data"

    invoke-static {v4, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    const-string/jumbo v0, "REQUEST"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/request/Request;

    .line 90
    .local v7, "request":Lcom/alibaba/doraemon/request/Request;
    invoke-interface {v7, v6}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 91
    new-instance v0, Lhnq$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lhnq$1;-><init>(Lhnq;JLcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 174
    invoke-interface {v7}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto/16 :goto_0
.end method

.method public final cancel(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 180
    return-void
.end method

.method public final isDownloading(Ljava/lang/String;)Z
    .locals 1
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->isDownloadTaskExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
