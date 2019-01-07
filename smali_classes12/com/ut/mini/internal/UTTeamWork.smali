.class public Lcom/ut/mini/internal/UTTeamWork;
.super Ljava/lang/Object;
.source "UTTeamWork.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UTTeamWork"

.field private static s_instance:Lcom/ut/mini/internal/UTTeamWork;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/ut/mini/internal/UTTeamWork;->s_instance:Lcom/ut/mini/internal/UTTeamWork;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ut/mini/internal/UTTeamWork;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/ut/mini/internal/UTTeamWork;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ut/mini/internal/UTTeamWork;->s_instance:Lcom/ut/mini/internal/UTTeamWork;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/ut/mini/internal/UTTeamWork;

    invoke-direct {v0}, Lcom/ut/mini/internal/UTTeamWork;-><init>()V

    sput-object v0, Lcom/ut/mini/internal/UTTeamWork;->s_instance:Lcom/ut/mini/internal/UTTeamWork;

    .line 34
    :cond_0
    sget-object v0, Lcom/ut/mini/internal/UTTeamWork;->s_instance:Lcom/ut/mini/internal/UTTeamWork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearHost4Https(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    const-string/jumbo v0, "UTAnalytics"

    const-string/jumbo v1, "context =null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    const-string/jumbo v0, "utanalytics_https_host"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Land;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearHost4TimeAdjustService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    const-string/jumbo v0, "UTAnalytics"

    const-string/jumbo v1, "context =null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string/jumbo v0, "time_adjust_host"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Land;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearHostPort4Http(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    const-string/jumbo v0, "UTAnalytics"

    const-string/jumbo v1, "context =null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string/jumbo v0, "http_host"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Land;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearHostPort4Tnet(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const-string/jumbo v0, "UTAnalytics"

    const-string/jumbo v1, "context =null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string/jumbo v0, "utanalytics_tnet_host_port"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Land;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearIgnoreTagForExposureView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 268
    invoke-static {p1}, Lcom/ut/mini/exposure/ExposureUtils;->clearIgnoreTagForExposureView(Landroid/view/View;)V

    .line 269
    return-void
.end method

.method public closeAuto1010Track()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    invoke-static {}, Laju;->a()Laju;

    move-result-object v0

    .line 1050
    const/4 v1, 0x1

    iput-boolean v1, v0, Laju;->b:Z

    .line 76
    return-void
.end method

.method public dispatchLocalHits()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->dispatchLocalHits()V

    .line 56
    return-void
.end method

.method public getExposureViewHandler(Landroid/app/Activity;)Lcom/ut/mini/internal/ExposureViewHandle;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 232
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/exposure/TrackerManager;->getExposureViewHandle()Lcom/ut/mini/internal/ExposureViewHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUtsid()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    :try_start_0
    invoke-static {}, Laju;->a()Laju;

    move-result-object v5

    .line 2030
    iget-object v0, v5, Laju;->c:Ljava/lang/String;

    .line 85
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {}, Laju;->a()Laju;

    move-result-object v5

    .line 2042
    iget-object v5, v5, Laju;->a:Landroid/content/Context;

    .line 85
    invoke-static {v5}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "utdid":Ljava/lang/String;
    const-string/jumbo v5, "session_timestamp"

    invoke-static {v5}, Lcom/alibaba/analytics/AnalyticsMgr;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2205
    .local v2, "sessionTimestamp":J
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 87
    if-nez v5, :cond_0

    .line 3205
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 87
    if-nez v5, :cond_0

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 93
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v2    # "sessionTimestamp":J
    .end local v4    # "utdid":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, ""

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v1, v6}, Lamu;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public initialized()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public registerExposureViewHandler(Lcom/ut/mini/internal/ExposureViewHandle;)V
    .locals 1
    .param p1, "handle"    # Lcom/ut/mini/internal/ExposureViewHandle;

    .prologue
    .line 221
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/exposure/TrackerManager;->registerExposureViewHandler(Lcom/ut/mini/internal/ExposureViewHandle;)V

    .line 222
    return-void
.end method

.method public saveCacheDataToLocal()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->saveCacheDataToLocal()V

    .line 63
    return-void
.end method

.method public setExposureTagForWeex(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 242
    invoke-static {p1}, Lcom/ut/mini/exposure/ExposureUtils;->setExposureForWeex(Landroid/view/View;)V

    .line 243
    return-void
.end method

.method public setHost4Https(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    const-string/jumbo v0, "UTAnalytics"

    const-string/jumbo v1, "context =null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const-string/jumbo v0, "UTAnalytics"

    const-string/jumbo v1, "host or port is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_1
    const-string/jumbo v0, "utanalytics_https_host"

    invoke-static {p1, v0, p2}, Land;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHost4TimeAdjustService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    const-string/jumbo v0, "UTAnalytics"

    const-string/jumbo v1, "context =null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const-string/jumbo v0, "UTAnalytics"

    const-string/jumbo v1, "host is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_1
    const-string/jumbo v0, "time_adjust_host"

    invoke-static {p1, v0, p2}, Land;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHostPort4Http(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    const-string/jumbo v0, "UTAnalytics"

    const-string/jumbo v1, "context =null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const-string/jumbo v0, "UTAnalytics"

    const-string/jumbo v1, "host  is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_1
    const-string/jumbo v0, "http_host"

    invoke-static {p1, v0, p2}, Land;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHostPort4Tnet(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    const-string/jumbo v0, "UTAnalytics"

    const-string/jumbo v1, "context =null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    const-string/jumbo v0, "UTAnalytics"

    const-string/jumbo v1, "host or port is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_1
    const-string/jumbo v0, "utanalytics_tnet_host_port"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Land;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIgnoreTagForExposureView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 260
    invoke-static {p1}, Lcom/ut/mini/exposure/ExposureUtils;->setIgnoreTagForExposureView(Landroid/view/View;)V

    .line 261
    return-void
.end method

.method public setToAliyunOsPlatform()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->setToAliyunOsPlatform()V

    .line 72
    return-void
.end method

.method public startExpoTrack(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 247
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/exposure/TrackerManager;->addToTrack(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public stopExpoTrack(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 252
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/exposure/TrackerManager;->removeToTrack(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public turnOffRealTimeDebug()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lamu;->d()V

    .line 47
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->turnOffRealTimeDebug()V

    .line 48
    return-void
.end method

.method public turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    .local p1, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "UTTeamWork"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTAnalytics;->turnOnRealTimeDebug(Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method public unRegisterExposureViewHandler(Lcom/ut/mini/internal/ExposureViewHandle;)V
    .locals 1
    .param p1, "handle"    # Lcom/ut/mini/internal/ExposureViewHandle;

    .prologue
    .line 228
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/exposure/TrackerManager;->unRegisterExposureViewHandler(Lcom/ut/mini/internal/ExposureViewHandle;)V

    .line 229
    return-void
.end method
