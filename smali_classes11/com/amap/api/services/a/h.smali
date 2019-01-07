.class public Lcom/amap/api/services/a/h;
.super Ljava/lang/Object;
.source "ConfigableConst.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.amap.api.services"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.amap.api.search.admic"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/api/services/a/h;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Z)Lcom/amap/api/services/a/be;
    .locals 6

    .prologue
    .line 81
    const-string/jumbo v2, "getSDKInfo"

    .line 82
    const/4 v0, 0x0

    .line 84
    :try_start_0
    new-instance v1, Lcom/amap/api/services/a/be$a;

    const-string/jumbo v3, "sea"

    const-string/jumbo v4, "3.6.1"

    const-string/jumbo v5, "AMAP SDK Android Search 3.6.1"

    invoke-direct {v1, v3, v4, v5}, Lcom/amap/api/services/a/be$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/amap/api/services/a/h;->a:[Ljava/lang/String;

    .line 85
    invoke-virtual {v1, v3}, Lcom/amap/api/services/a/be$a;->a([Ljava/lang/String;)Lcom/amap/api/services/a/be$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/services/a/be$a;->a(Z)Lcom/amap/api/services/a/be$a;

    move-result-object v1

    const-string/jumbo v3, "3.6.1"

    invoke-virtual {v1, v3}, Lcom/amap/api/services/a/be$a;->a(Ljava/lang/String;)Lcom/amap/api/services/a/be$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/a/be$a;->a()Lcom/amap/api/services/a/be;
    :try_end_0
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    const-string/jumbo v3, "ConfigableConst"

    invoke-static {v1, v3, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getProtocol()I

    move-result v0

    .line 57
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 58
    const-string/jumbo v0, "http://restapi.amap.com/v3"

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "https://restapi.amap.com/v3"

    goto :goto_0
.end method

.method public static b(Z)Lcom/amap/api/services/a/be;
    .locals 6

    .prologue
    .line 93
    const-string/jumbo v2, "getCloudSDKInfo"

    .line 94
    const/4 v0, 0x0

    .line 96
    :try_start_0
    new-instance v1, Lcom/amap/api/services/a/be$a;

    const-string/jumbo v3, "cloud"

    const-string/jumbo v4, "3.6.1"

    const-string/jumbo v5, "AMAP SDK Android Search 3.6.1"

    invoke-direct {v1, v3, v4, v5}, Lcom/amap/api/services/a/be$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/amap/api/services/a/h;->a:[Ljava/lang/String;

    .line 97
    invoke-virtual {v1, v3}, Lcom/amap/api/services/a/be$a;->a([Ljava/lang/String;)Lcom/amap/api/services/a/be$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/services/a/be$a;->a(Z)Lcom/amap/api/services/a/be$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/a/be$a;->a()Lcom/amap/api/services/a/be;
    :try_end_0
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    const-string/jumbo v3, "ConfigableConst"

    invoke-static {v1, v3, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getProtocol()I

    move-result v0

    .line 67
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    const-string/jumbo v0, "http://yuntuapi.amap.com"

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "https://yuntuapi.amap.com"

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getProtocol()I

    move-result v0

    .line 107
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 108
    const-string/jumbo v0, "http://m5.amap.com/ws/mapapi/shortaddress/transform"

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "https://m5.amap.com/ws/mapapi/shortaddress/transform"

    goto :goto_0
.end method
