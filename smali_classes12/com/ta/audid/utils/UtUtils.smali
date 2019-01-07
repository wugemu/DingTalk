.class public Lcom/ta/audid/utils/UtUtils;
.super Ljava/lang/Object;
.source "UtUtils.java"


# static fields
.field private static final UTDID_MODULE:Ljava/lang/String; = "UtdidMonitor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 51
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 53
    const-string/jumbo v4, ""

    .line 68
    :cond_0
    :goto_0
    return-object v4

    .line 56
    :cond_1
    const-string/jumbo v4, ""

    .line 57
    .local v4, "userid":Ljava/lang/String;
    const-string/jumbo v6, "UTCommon"

    invoke-virtual {v0, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 58
    .local v3, "sp":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    .line 59
    const-string/jumbo v6, "_luid"

    const-string/jumbo v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "luid":Ljava/lang/String;
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 62
    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/ta/utdid2/android/utils/Base64;->decode([BI)[B

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "userid":Ljava/lang/String;
    .local v5, "userid":Ljava/lang/String;
    move-object v4, v5

    .line 65
    .end local v5    # "userid":Ljava/lang/String;
    .restart local v4    # "userid":Ljava/lang/String;
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v6, ""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getUserNick()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 26
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 28
    const-string/jumbo v4, ""

    .line 43
    :cond_0
    :goto_0
    return-object v4

    .line 31
    :cond_1
    const-string/jumbo v4, ""

    .line 32
    .local v4, "userNick":Ljava/lang/String;
    const-string/jumbo v6, "UTCommon"

    invoke-virtual {v0, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 33
    .local v3, "sp":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    .line 34
    const-string/jumbo v6, "_lun"

    const-string/jumbo v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "lun":Ljava/lang/String;
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 37
    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/ta/utdid2/android/utils/Base64;->decode([BI)[B

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "userNick":Ljava/lang/String;
    .local v5, "userNick":Ljava/lang/String;
    move-object v4, v5

    .line 40
    .end local v5    # "userNick":Ljava/lang/String;
    .restart local v4    # "userNick":Ljava/lang/String;
    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static sendUtdidMonitorEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
