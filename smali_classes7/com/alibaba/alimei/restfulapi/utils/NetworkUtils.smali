.class public Lcom/alibaba/alimei/restfulapi/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v0

    .line 39
    .local v0, "configuration":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getNetInfo()Ljava/lang/String;

    move-result-object v1

    .line 45
    :goto_0
    return-object v1

    .line 42
    :cond_0
    const-string/jumbo v1, "NetworkUtils"

    const-string/jumbo v2, "getNetInfo error for configuration is null"

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v1, "unkown"

    goto :goto_0
.end method

.method public static isNetWorkAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 20
    :try_start_0
    const-string/jumbo v4, "connectivity"

    .line 21
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 22
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 23
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    const/4 v3, 0x1

    .line 30
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 27
    :catch_0
    move-exception v2

    .line 28
    .local v2, "tr":Ljava/lang/Throwable;
    const-string/jumbo v4, "NetworkUtils"

    invoke-static {v4, v2}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
