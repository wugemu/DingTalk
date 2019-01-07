.class public Lcom/alibaba/analytics/core/sync/UploadLog;
.super Ljava/lang/Object;
.source "UploadLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:Laly;

.field protected c:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/analytics/core/sync/UploadLog;->a:I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadLog;->b:Laly;

    .line 26
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadLog;->c:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    return-void
.end method

.method protected static a()Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lalg;->a()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "2G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->TWO_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    .line 51
    :goto_0
    return-object v1

    .line 44
    :cond_0
    const-string/jumbo v1, "3G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->THRID_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    goto :goto_0

    .line 46
    :cond_1
    const-string/jumbo v1, "4G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->FOUR_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    goto :goto_0

    .line 48
    :cond_2
    const-string/jumbo v1, "Wi-Fi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->WIFI:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    goto :goto_0

    .line 51
    :cond_3
    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->NONE:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 14
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 58
    :try_start_0
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v10

    .line 1267
    iget-object v1, v10, Lajw;->n:Laka;

    .line 59
    .local v1, "configMgr":Laka;
    if-eqz v1, :cond_1

    .line 60
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v9, "ret":Lorg/json/JSONObject;
    const-string/jumbo v10, "config"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 62
    .local v2, "configObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 64
    .local v8, "namespaces":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 65
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 66
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 67
    .local v7, "namespace":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 68
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v3, "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 70
    .local v0, "configContentItem":Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 72
    .local v6, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    .line 73
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 74
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 75
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 90
    .end local v0    # "configContentItem":Lorg/json/JSONObject;
    .end local v1    # "configMgr":Laka;
    .end local v2    # "configObject":Lorg/json/JSONObject;
    .end local v3    # "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "namespace":Ljava/lang/String;
    .end local v8    # "namespaces":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "ret":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 91
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, ""

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v4, v11}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 96
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_3
    return-void

    .line 75
    .restart local v0    # "configContentItem":Lorg/json/JSONObject;
    .restart local v1    # "configMgr":Laka;
    .restart local v2    # "configObject":Lorg/json/JSONObject;
    .restart local v3    # "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "namespace":Ljava/lang/String;
    .restart local v8    # "namespaces":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v9    # "ret":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 79
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v10, "Config Update"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "namespace"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, "configs"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v1, v7, v3}, Laka;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 84
    .end local v0    # "configContentItem":Lorg/json/JSONObject;
    .end local v3    # "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "namespace":Ljava/lang/String;
    :cond_4
    const-string/jumbo v10, "1"

    invoke-static {v10}, Laka;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 86
    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "No Config Update"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 94
    .end local v1    # "configMgr":Laka;
    .end local v2    # "configObject":Lorg/json/JSONObject;
    .end local v8    # "namespaces":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "ret":Lorg/json/JSONObject;
    :cond_6
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "Config Is Empty"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method


# virtual methods
.method public final a(Laly;)V
    .locals 0
    .param p1, "uploadExcuted"    # Laly;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/analytics/core/sync/UploadLog;->b:Laly;

    .line 38
    return-void
.end method

.method public final a(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V
    .locals 0
    .param p1, "allowedNetworkStatus"    # Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/analytics/core/sync/UploadLog;->c:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    .line 34
    return-void
.end method
