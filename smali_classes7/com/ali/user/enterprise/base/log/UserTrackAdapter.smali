.class public Lcom/ali/user/enterprise/base/log/UserTrackAdapter;
.super Ljava/lang/Object;
.source "UserTrackAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendUT(Ljava/lang/String;)V
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-static {v0, p0, v0}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    .line 34
    return-void
.end method

.method public static sendUT(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    .line 26
    return-void
.end method

.method public static sendUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 4
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;
    .param p4, "props"    # Ljava/util/Properties;

    .prologue
    .line 43
    :try_start_0
    new-instance v1, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    invoke-direct {v1, p1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "utCustomHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-virtual {v1, p0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setEventPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    .line 49
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    const-string/jumbo v2, "_field_arg2"

    invoke-virtual {v1, v2, p2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 53
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    const-string/jumbo v2, "_field_arg3"

    invoke-virtual {v1, v2, p3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 57
    :cond_2
    if-eqz p4, :cond_3

    .line 58
    invoke-static {p4}, Lamw;->a(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 60
    :cond_3
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "utCustomHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "props"    # Ljava/util/Properties;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    .line 38
    return-void
.end method

.method public static sendUT(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    .line 22
    return-void
.end method

.method public static sendUT(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    .line 30
    return-void
.end method
