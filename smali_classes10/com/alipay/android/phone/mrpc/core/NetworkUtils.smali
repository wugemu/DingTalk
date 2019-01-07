.class public Lcom/alipay/android/phone/mrpc/core/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static final NETWORK_TYPE_2G:I = 0x1

.field public static final NETWORK_TYPE_3G_4G:I = 0x2

.field public static final NETWORK_TYPE_INVALID:I = 0x0

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_WIFI:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 140
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getNetType(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 149
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 150
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 151
    const/4 v2, -0x1

    .line 152
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    const-string/jumbo v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 98
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 99
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 101
    .local v2, "isConnected":Z
    if-nez v2, :cond_1

    .line 115
    .end local v2    # "isConnected":Z
    :cond_0
    :goto_0
    return v4

    .line 104
    .restart local v2    # "isConnected":Z
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 105
    .local v3, "type":I
    if-ne v3, v5, :cond_2

    .line 106
    const/4 v4, 0x3

    goto :goto_0

    .line 107
    :cond_2
    if-nez v3, :cond_0

    .line 108
    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/NetworkUtils;->is3GMobileNetwork(Landroid/net/NetworkInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 109
    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    move v4, v5

    .line 111
    goto :goto_0
.end method

.method public static getProxy(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v2, 0x0

    .line 126
    .local v2, "proxy":Lorg/apache/http/HttpHost;
    invoke-static {p0}, Lcom/alipay/android/phone/mrpc/core/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 127
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    .line 130
    .local v1, "port":I
    if-eqz v3, :cond_0

    .line 131
    new-instance v2, Lorg/apache/http/HttpHost;

    .end local v2    # "proxy":Lorg/apache/http/HttpHost;
    invoke-direct {v2, v3, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 134
    .end local v1    # "port":I
    .end local v3    # "proxyHost":Ljava/lang/String;
    .restart local v2    # "proxy":Lorg/apache/http/HttpHost;
    :cond_0
    return-object v2
.end method

.method public static final getTrustAllSslSocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 189
    :try_start_0
    new-instance v2, Lcom/alipay/android/phone/mrpc/core/NetworkUtils$1;

    invoke-direct {v2}, Lcom/alipay/android/phone/mrpc/core/NetworkUtils$1;-><init>()V

    .line 208
    .local v2, "tm":Ljavax/net/ssl/TrustManager;
    const-string/jumbo v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 209
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 210
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 214
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v2    # "tm":Ljavax/net/ssl/TrustManager;
    :goto_0
    return-object v3

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "NetworkUtils"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static is3GMobileNetwork(Landroid/net/NetworkInfo;)Z
    .locals 3
    .param p0, "activeNetInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 49
    if-nez p0, :cond_0

    .line 86
    :goto_0
    :pswitch_0
    return v0

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 72
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 60
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 62
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 66
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 68
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 70
    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 82
    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const/4 v3, 0x0

    .line 162
    .local v3, "isNetworkAvailable":Z
    const-string/jumbo v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    move-object v1, v7

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 164
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v6

    .line 165
    .local v6, "networkInfos":[Landroid/net/NetworkInfo;
    if-nez v6, :cond_0

    .line 166
    const/4 v7, 0x0

    .line 177
    :goto_0
    return v7

    .line 168
    :cond_0
    move-object v0, v6

    .local v0, "arr$":[Landroid/net/NetworkInfo;
    array-length v5, v6

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v4, v0, v2

    .line 169
    .local v4, "itemInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_2

    .line 170
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 171
    const/4 v3, 0x1

    .end local v4    # "itemInfo":Landroid/net/NetworkInfo;
    :cond_1
    move v7, v3

    .line 177
    goto :goto_0

    .line 168
    .restart local v4    # "itemInfo":Landroid/net/NetworkInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
