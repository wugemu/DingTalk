.class public Lcom/taobao/statistic/TBS;
.super Ljava/lang/Object;
.source "TBS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/TBS$CrashHandler;,
        Lcom/taobao/statistic/TBS$OnInitFinishListener;,
        Lcom/taobao/statistic/TBS$Network;,
        Lcom/taobao/statistic/TBS$EasyTrace;,
        Lcom/taobao/statistic/TBS$Adv;,
        Lcom/taobao/statistic/TBS$Page;,
        Lcom/taobao/statistic/TBS$Ext;,
        Lcom/taobao/statistic/TBS$DelayEventObject;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1314
    return-void
.end method

.method public static declared-synchronized getSharedProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1109
    const-class v0, Lcom/taobao/statistic/TBS;

    monitor-enter v0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1
.end method

.method public static h5UT(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;
    .param p1, "aContext"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1295
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/taobao/statistic/TBS;->h5UT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1296
    return-void
.end method

.method public static h5UT(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/webkit/WebView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1026
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/taobao/statistic/TBS;->h5UT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1027
    return-void
.end method

.method private static h5UT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p0, "sep"    # Ljava/lang/String;
    .param p1, "jsonStr"    # Ljava/lang/String;
    .param p2, "view"    # Ljava/lang/Object;

    .prologue
    .line 1030
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1032
    .local v1, "lDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v2, "lJsonObj":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 1034
    .local v4, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1035
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2205
    .local v3, "lKey":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 1036
    if-nez v6, :cond_0

    .line 1037
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3205
    .local v5, "lValue":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 1038
    if-nez v6, :cond_0

    .line 1039
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1043
    .end local v2    # "lJsonObj":Lorg/json/JSONObject;
    .end local v3    # "lKey":Ljava/lang/String;
    .end local v4    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "lValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1046
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 1047
    invoke-static {}, Lcom/ut/mini/UTHybridHelper;->getInstance()Lcom/ut/mini/UTHybridHelper;

    move-result-object v6

    invoke-virtual {v6, v1, p2}, Lcom/ut/mini/UTHybridHelper;->h5UT(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1049
    :cond_2
    return-void
.end method

.method public static init()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1087
    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 0
    .param p0, "channel"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1099
    return-void
.end method

.method public static setEnvironment(Landroid/content/Context;)V
    .locals 0
    .param p0, "environment"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1142
    return-void
.end method

.method public static setEnvironment(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "environment"    # Landroid/content/Context;
    .param p1, "resourceIdentifier"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1157
    return-void
.end method

.method public static setH5Url(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1052
    invoke-static {}, Lcom/ut/mini/UTHybridHelper;->getInstance()Lcom/ut/mini/UTHybridHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ut/mini/UTHybridHelper;->setH5Url(Ljava/lang/String;)V

    .line 1053
    return-void
.end method

.method public static setKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "appSecret"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1123
    return-void
.end method

.method public static setVersion(Ljava/lang/String;)V
    .locals 0
    .param p0, "bundleVersion"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    return-void
.end method

.method public static swithFromSimplePipeLineToCommon(Z)V
    .locals 0
    .param p0, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1083
    return-void
.end method

.method public static trade(Ljava/lang/String;)V
    .locals 0
    .param p0, "bizOrderID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1161
    return-void
.end method

.method public static turnDebug()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1075
    return-void
.end method

.method public static turnOnSecuritySDKSupport()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1130
    return-void
.end method

.method public static uninit()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1065
    return-void
.end method

.method public static updateGPSInfo(Ljava/lang/String;DD)V
    .locals 7
    .param p0, "pageKeyOrPageName"    # Ljava/lang/String;
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D

    .prologue
    const/4 v5, 0x0

    .line 106
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const/16 v2, 0x3ed

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 109
    .local v0, "lBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 110
    return-void
.end method

.method static updateNextPageProperties(Ljava/util/Properties;)V
    .locals 2
    .param p0, "lProperties"    # Ljava/util/Properties;

    .prologue
    .line 132
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-static {p0}, Lamw;->a(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTTracker;->updateNextPageProperties(Ljava/util/Map;)V

    .line 137
    return-void
.end method

.method public static updateSessionProperties(Ljava/util/Properties;)V
    .locals 2
    .param p0, "properties"    # Ljava/util/Properties;

    .prologue
    .line 123
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-static {p0}, Lamw;->a(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTAnalytics;->updateSessionProperties(Ljava/util/Map;)V

    .line 125
    return-void
.end method

.method public static declared-synchronized updateSharedProprety(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "pKey"    # Ljava/lang/String;
    .param p1, "pValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1104
    const-class v0, Lcom/taobao/statistic/TBS;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static updateUserAccount(Ljava/lang/String;)V
    .locals 2
    .param p0, "userNick"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ut/mini/UTAnalytics;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "userNick"    # Ljava/lang/String;
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ut/mini/UTAnalytics;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static userRegister(Ljava/lang/String;)V
    .locals 1
    .param p0, "userNick"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ut/mini/UTAnalytics;->userRegister(Ljava/lang/String;)V

    .line 145
    return-void
.end method
