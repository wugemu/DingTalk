.class public Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;
.super Ljava/lang/Object;
.source "H5DownLoadCallBackList.java"


# static fields
.field public static callbackData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->callbackData:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDownloadTaskExists(Ljava/lang/String;)Z
    .locals 3
    .param p0, "downloadUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 60
    if-nez p0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    sget-object v2, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->callbackData:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 64
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static registerCallback(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    .locals 2
    .param p0, "downloadUrl"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .prologue
    .line 37
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 39
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->callbackData:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->callbackData:Ljava/util/Map;

    .line 41
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "callbackList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;>;"
    :goto_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->callbackData:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v0    # "callbackList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;>;"
    :cond_0
    return-void

    .line 41
    :cond_1
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->callbackData:Ljava/util/Map;

    .line 42
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v0, v1

    goto :goto_0

    .line 44
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "callbackList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;>;"
    goto :goto_0
.end method

.method public static unRegisterCallbacks(Ljava/lang/String;)V
    .locals 1
    .param p0, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->callbackData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    return-void
.end method
