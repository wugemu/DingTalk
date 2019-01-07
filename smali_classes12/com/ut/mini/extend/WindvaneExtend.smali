.class public Lcom/ut/mini/extend/WindvaneExtend;
.super Ljava/lang/Object;
.source "WindvaneExtend.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerWindvane(Z)V
    .locals 6
    .param p0, "init"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 17
    sget-boolean v1, Lcom/ut/mini/extend/UTExtendSwitch;->bWindvaneExtend:Z

    if-nez v1, :cond_0

    .line 18
    const-string/jumbo v1, "UTAnalytics"

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "user disable WVTBUserTrack "

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :goto_0
    return-void

    .line 22
    :cond_0
    if-eqz p0, :cond_1

    .line 23
    const-string/jumbo v1, "UTAnalytics"

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Has registered WVTBUserTrack plugin,not need to register again! "

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 28
    :cond_1
    :try_start_0
    const-string/jumbo v1, "WVTBUserTrack"

    const-class v2, Lcom/ut/mini/core/WVUserTrack;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, ""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Exception"

    aput-object v3, v2, v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
