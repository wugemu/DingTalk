.class public final Lcom/ut/mini/UTAnalyticsDelegate;
.super Ljava/lang/Object;
.source "UTAnalyticsDelegate.java"


# static fields
.field private static s_instance:Lcom/ut/mini/UTAnalyticsDelegate;


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mDefaultTracker:Lcom/ut/mini/UTTracker;

.field private mTrackerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/UTTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTAnalyticsDelegate;->mTrackerMap:Ljava/util/Map;

    .line 36
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ut/mini/UTAnalyticsDelegate;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/ut/mini/UTAnalyticsDelegate;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ut/mini/UTAnalyticsDelegate;->s_instance:Lcom/ut/mini/UTAnalyticsDelegate;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/ut/mini/UTAnalyticsDelegate;

    invoke-direct {v0}, Lcom/ut/mini/UTAnalyticsDelegate;-><init>()V

    sput-object v0, Lcom/ut/mini/UTAnalyticsDelegate;->s_instance:Lcom/ut/mini/UTAnalyticsDelegate;

    .line 32
    :cond_0
    sget-object v0, Lcom/ut/mini/UTAnalyticsDelegate;->s_instance:Lcom/ut/mini/UTAnalyticsDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final initUT(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ut/mini/UTAnalyticsDelegate;->mApplication:Landroid/app/Application;

    .line 40
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTTeamWork;->initialized()V

    .line 41
    return-void
.end method

.method public final saveCacheDataToLocal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Lalu;->a()Lalu;

    move-result-object v0

    invoke-virtual {v0}, Lalu;->d()V

    .line 110
    return-void
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "aAppVersion"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 1321
    iput-object p1, v0, Lajw;->g:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public final setChannel(Ljava/lang/String;)V
    .locals 6
    .param p1, "aChannel"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v1, "channel"

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    invoke-static {v5, v0}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 1350
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p1, v1, v3

    invoke-static {v5, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1351
    iput-object p1, v0, Lajw;->f:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public final setSessionProperties(Ljava/util/Map;)V
    .locals 1
    .param p1, "aMap"    # Ljava/util/Map;

    .prologue
    .line 113
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lajw;->a(Ljava/util/Map;)V

    .line 114
    return-void
.end method

.method public final transferLog(Ljava/util/Map;)V
    .locals 1
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

    .prologue
    .line 97
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ut/mini/core/UTLogTransferMain;->getInstance()Lcom/ut/mini/core/UTLogTransferMain;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/core/UTLogTransferMain;->transferLog(Ljava/util/Map;)V

    .line 98
    return-void
.end method

.method public final turnOffRealTimeDebug()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    invoke-virtual {v0}, Lajw;->k()V

    .line 106
    return-void
.end method

.method public final turnOnDebug()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lajw;->a()Lajw;

    .line 2346
    const/4 v0, 0x1

    invoke-static {v0}, Lajw;->d(Z)V

    .line 67
    return-void
.end method

.method public final turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 1
    .param p1, "aMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lajw;->b(Ljava/util/Map;)V

    .line 102
    return-void
.end method

.method public final updateSessionProperties(Ljava/util/Map;)V
    .locals 3
    .param p1, "aMap"    # Ljava/util/Map;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v2

    invoke-virtual {v2}, Lajw;->h()Ljava/util/Map;

    move-result-object v1

    .line 86
    .local v1, "lOldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v0, "lNewMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 88
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 90
    :cond_0
    if-eqz p1, :cond_1

    .line 91
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 93
    :cond_1
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lajw;->a(Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public final updateUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "aUsernick"    # Ljava/lang/String;
    .param p2, "aUserid"    # Ljava/lang/String;
    .param p3, "openid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v1

    .line 2587
    iput-object p1, v1, Lajw;->h:Ljava/lang/String;

    .line 3205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2588
    if-nez v0, :cond_0

    .line 2589
    iput-object p1, v1, Lajw;->i:Ljava/lang/String;

    .line 4205
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2591
    if-nez v0, :cond_1

    iget-object v0, v1, Lajw;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 2593
    :try_start_0
    iget-object v0, v1, Lajw;->c:Landroid/content/Context;

    const-string/jumbo v2, "UTCommon"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2594
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2595
    const-string/jumbo v2, "_lun"

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lamm;->c([BI)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2596
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4604
    :cond_1
    :goto_0
    iput-object p2, v1, Lajw;->j:Ljava/lang/String;

    .line 5205
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 4605
    if-nez v0, :cond_2

    .line 4606
    iput-object p2, v1, Lajw;->k:Ljava/lang/String;

    .line 6205
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 4608
    if-nez v0, :cond_3

    iget-object v0, v1, Lajw;->c:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 4610
    :try_start_1
    iget-object v0, v1, Lajw;->c:Landroid/content/Context;

    const-string/jumbo v2, "UTCommon"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4611
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4612
    const-string/jumbo v2, "_luid"

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lamm;->c([BI)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4613
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6664
    :cond_3
    :goto_1
    iput-object p3, v1, Lajw;->b:Ljava/lang/String;

    .line 6665
    iget-object v0, v1, Lajw;->c:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 6667
    :try_start_2
    iget-object v0, v1, Lajw;->c:Landroid/content/Context;

    const-string/jumbo v1, "UTCommon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6668
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6669
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6670
    const-string/jumbo v1, "_openid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6674
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 6677
    :cond_4
    :goto_3
    return-void

    .line 2597
    :catch_0
    move-exception v0

    .line 2598
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 4614
    :catch_1
    move-exception v0

    .line 4615
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 6672
    :cond_5
    :try_start_3
    const-string/jumbo v1, "_openid"

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p3, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lamm;->c([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 6675
    :catch_2
    move-exception v0

    .line 6676
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method
