.class Lcom/ut/mini/UTMI1010_2001Event;
.super Ljava/lang/Object;
.source "UTMI1010_2001Event.java"

# interfaces
.implements Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;


# instance fields
.field private mHowLongForegroundStay:J

.field private mToBackgroundTimestamp:J

.field private mToForegroundTimestamp:J

.field private mTrafficStatistic:Lcom/ut/mini/module/traffic/UTTrafficStatistic;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide v0, p0, Lcom/ut/mini/UTMI1010_2001Event;->mHowLongForegroundStay:J

    .line 30
    iput-wide v0, p0, Lcom/ut/mini/UTMI1010_2001Event;->mToForegroundTimestamp:J

    .line 31
    iput-wide v0, p0, Lcom/ut/mini/UTMI1010_2001Event;->mToBackgroundTimestamp:J

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/UTMI1010_2001Event;->mTrafficStatistic:Lcom/ut/mini/module/traffic/UTTrafficStatistic;

    return-void
.end method

.method private static _isSwitchBackgroundByGetTask()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 82
    :try_start_0
    invoke-static {}, Laju;->a()Laju;

    move-result-object v6

    .line 1042
    iget-object v2, v6, Laju;->a:Landroid/content/Context;

    .line 83
    .local v2, "lContext":Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "lPackageName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 86
    const-string/jumbo v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    .local v4, "manager":Landroid/app/ActivityManager;
    if-eqz v4, :cond_0

    .line 90
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v4, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 92
    .local v5, "task_info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v5, :cond_0

    .line 93
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 94
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 95
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    .line 111
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "lPackageName":Ljava/lang/String;
    .end local v4    # "manager":Landroid/app/ActivityManager;
    .end local v5    # "task_info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    return v6

    .line 102
    .restart local v3    # "lPackageName":Ljava/lang/String;
    .restart local v4    # "manager":Landroid/app/ActivityManager;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "lPackageName":Ljava/lang/String;
    .end local v4    # "manager":Landroid/app/ActivityManager;
    :cond_0
    move v6, v8

    .line 111
    goto :goto_0

    .line 109
    :catch_1
    move-exception v6

    move v6, v7

    goto :goto_0
.end method

.method private _send1010Hit(J)V
    .locals 29
    .param p1, "aHowLongForegroundStay"    # J

    .prologue
    .line 116
    invoke-static {}, Laju;->a()Laju;

    move-result-object v3

    .line 1054
    iget-boolean v3, v3, Laju;->b:Z

    .line 116
    if-nez v3, :cond_2

    .line 117
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_2

    .line 118
    const-wide/16 v16, 0x0

    .line 119
    .local v16, "lStayBackgroundDuration":J
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/ut/mini/UTMI1010_2001Event;->mToBackgroundTimestamp:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/ut/mini/UTMI1010_2001Event;->mToBackgroundTimestamp:J

    sub-long v16, v4, v6

    .line 122
    :cond_0
    new-instance v2, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string/jumbo v3, "UT"

    const/16 v4, 0x3f2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    .local v2, "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    const-string/jumbo v3, "_priority"

    const-string/jumbo v4, "5"

    invoke-virtual {v2, v3, v4}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ut/mini/UTMI1010_2001Event;->mTrafficStatistic:Lcom/ut/mini/module/traffic/UTTrafficStatistic;

    if-eqz v3, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ut/mini/UTMI1010_2001Event;->mTrafficStatistic:Lcom/ut/mini/module/traffic/UTTrafficStatistic;

    invoke-virtual {v3}, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->finish()Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;

    move-result-object v9

    .line 130
    .local v9, "lTSResult":Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;
    invoke-virtual {v9}, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->getTotal()J

    move-result-wide v18

    .line 131
    .local v18, "lTotal":J
    invoke-virtual {v9}, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->getWifiTotal()J

    move-result-wide v24

    .line 132
    .local v24, "lWifiTotal":J
    invoke-virtual {v9}, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->getMobileTotal()J

    move-result-wide v12

    .line 133
    .local v12, "lMobileTotal":J
    invoke-virtual {v9}, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->getWifiRx()J

    move-result-wide v22

    .line 134
    .local v22, "lWifiRx":J
    invoke-virtual {v9}, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->getWifiTx()J

    move-result-wide v26

    .line 135
    .local v26, "lWifiTx":J
    invoke-virtual {v9}, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->getMobileRx()J

    move-result-wide v10

    .line 136
    .local v10, "lMobileRx":J
    invoke-virtual {v9}, Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;->getMobileTx()J

    move-result-wide v14

    .line 137
    .local v14, "lMobileTx":J
    const-string/jumbo v3, "_tftl"

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 138
    const-string/jumbo v3, "_tfmtl"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 139
    const-string/jumbo v3, "_tfwtl"

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 140
    const-string/jumbo v3, "_tfmrx"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 141
    const-string/jumbo v3, "_tfmtx"

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 142
    const-string/jumbo v3, "_tfwrx"

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 143
    const-string/jumbo v3, "_tfwtx"

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 146
    .end local v9    # "lTSResult":Lcom/ut/mini/module/traffic/UTGetTrafficStatisticResult;
    .end local v10    # "lMobileRx":J
    .end local v12    # "lMobileTotal":J
    .end local v14    # "lMobileTx":J
    .end local v18    # "lTotal":J
    .end local v22    # "lWifiRx":J
    .end local v24    # "lWifiTotal":J
    .end local v26    # "lWifiTx":J
    :cond_1
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v20

    .line 147
    .local v20, "lTracker":Lcom/ut/mini/UTTracker;
    if-eqz v20, :cond_3

    .line 148
    invoke-virtual {v2}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 154
    .end local v2    # "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v16    # "lStayBackgroundDuration":J
    .end local v20    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_2
    :goto_0
    return-void

    .line 150
    .restart local v2    # "lHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .restart local v16    # "lStayBackgroundDuration":J
    .restart local v20    # "lTracker":Lcom/ut/mini/UTTracker;
    :cond_3
    const-string/jumbo v3, "Record app display event error"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "Fatal Error,must call setRequestAuthentication method first."

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method initTrafficStatistic(Landroid/app/Application;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 36
    new-instance v0, Lcom/ut/mini/module/traffic/UTTrafficStatistic;

    invoke-direct {v0}, Lcom/ut/mini/module/traffic/UTTrafficStatistic;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTMI1010_2001Event;->mTrafficStatistic:Lcom/ut/mini/module/traffic/UTTrafficStatistic;

    .line 37
    iget-object v0, p0, Lcom/ut/mini/UTMI1010_2001Event;->mTrafficStatistic:Lcom/ut/mini/module/traffic/UTTrafficStatistic;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/ut/mini/module/traffic/UTTrafficStatistic;->setUid(I)V

    .line 38
    invoke-static {}, Lalh;->a()Lalh;

    move-result-object v0

    iget-object v1, p0, Lcom/ut/mini/UTMI1010_2001Event;->mTrafficStatistic:Lcom/ut/mini/module/traffic/UTTrafficStatistic;

    invoke-virtual {v0, v1}, Lalh;->a(Lale;)Lalh;

    .line 40
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 182
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->pageDestroyed(Landroid/app/Activity;)V

    .line 183
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 187
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->pageDisAppearByAuto(Landroid/app/Activity;)V

    .line 188
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 192
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTPageHitHelper;->pageAppearByAuto(Landroid/app/Activity;)V

    .line 193
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 203
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 208
    return-void
.end method

.method onEventArrive(Ljava/lang/Object;)V
    .locals 8
    .param p1, "aMsgObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    move-object v5, p1

    check-cast v5, Ljava/util/Map;

    .line 47
    .local v5, "lLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v6}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 48
    sget-object v6, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v6}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50
    .local v4, "lEventId":Ljava/lang/String;
    const-string/jumbo v6, "2001"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .local v2, "lDuration":J
    sget-object v6, Lcom/alibaba/analytics/core/model/LogField;->ARG3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v6}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    sget-object v6, Lcom/alibaba/analytics/core/model/LogField;->ARG3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v6}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, "lDurationStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 63
    .end local v1    # "lDurationStr":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-wide v6, p0, Lcom/ut/mini/UTMI1010_2001Event;->mHowLongForegroundStay:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/ut/mini/UTMI1010_2001Event;->mHowLongForegroundStay:J

    .line 65
    invoke-static {}, Lcom/ut/mini/UTMI1010_2001Event;->_isSwitchBackgroundByGetTask()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    iget-wide v6, p0, Lcom/ut/mini/UTMI1010_2001Event;->mHowLongForegroundStay:J

    invoke-direct {p0, v6, v7}, Lcom/ut/mini/UTMI1010_2001Event;->_send1010Hit(J)V

    .line 69
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/ut/mini/UTMI1010_2001Event;->mHowLongForegroundStay:J

    .line 73
    .end local v2    # "lDuration":J
    .end local v4    # "lEventId":Ljava/lang/String;
    :cond_1
    return-void

    .line 58
    .restart local v1    # "lDurationStr":Ljava/lang/String;
    .restart local v2    # "lDuration":J
    .restart local v4    # "lEventId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSwitchBackground()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTPageHitHelper;->pageSwitchBackground()V

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ut/mini/UTMI1010_2001Event;->mToForegroundTimestamp:J

    sub-long v0, v2, v4

    .line 164
    .local v0, "lHowLongForegroundStay":J
    invoke-direct {p0, v0, v1}, Lcom/ut/mini/UTMI1010_2001Event;->_send1010Hit(J)V

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ut/mini/UTMI1010_2001Event;->mToBackgroundTimestamp:J

    .line 166
    invoke-static {}, Lcom/ut/mini/internal/UTPageMappingTrack;->getInstance()Lcom/ut/mini/internal/UTPageMappingTrack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/internal/UTPageMappingTrack;->sendPageMapping()V

    .line 167
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->c()V

    .line 168
    return-void
.end method

.method public onSwitchForeground()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ut/mini/UTMI1010_2001Event;->mToForegroundTimestamp:J

    .line 173
    return-void
.end method
