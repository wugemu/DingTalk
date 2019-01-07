.class public Lcom/ut/mini/internal/RealtimeDebugSwitch;
.super Ljava/lang/Object;
.source "RealtimeDebugSwitch.java"

# interfaces
.implements Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;


# static fields
.field static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/ut/mini/internal/RealtimeDebugSwitch;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 30
    sget v6, Lcom/ut/mini/internal/RealtimeDebugSwitch;->i:I

    if-nez v6, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 32
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 33
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 34
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 35
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "scheme":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string/jumbo v6, "ut."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 37
    const-string/jumbo v6, "debugkey"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "debugKey":Ljava/lang/String;
    const-string/jumbo v6, "from"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "isApSampling":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string/jumbo v6, "ut."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 40
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "debug_api_url"

    const-string/jumbo v7, "http://muvp.alibaba-inc.com/online/UploadRecords.do"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string/jumbo v6, "debug_key"

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v6, "from"

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v6, "debug_sampling_option"

    const-string/jumbo v7, "true"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/ut/mini/internal/UTTeamWork;->turnOnRealTimeDebug(Ljava/util/Map;)V

    .line 57
    .end local v0    # "debugKey":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "isApSampling":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 47
    .restart local v0    # "debugKey":Ljava/lang/String;
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v2    # "isApSampling":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_1
    new-array v6, v7, [Ljava/lang/Object;

    const-string/jumbo v7, "scheme"

    aput-object v7, v6, v8

    aput-object v4, v6, v9

    invoke-static {v10, v6}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    .end local v0    # "debugKey":Ljava/lang/String;
    .end local v2    # "isApSampling":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    :cond_2
    new-array v6, v7, [Ljava/lang/Object;

    const-string/jumbo v7, "uri"

    aput-object v7, v6, v8

    aput-object v5, v6, v9

    invoke-static {v10, v6}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    new-array v6, v7, [Ljava/lang/Object;

    const-string/jumbo v7, "i "

    aput-object v7, v6, v8

    aput-object v1, v6, v9

    invoke-static {v10, v6}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    sget v0, Lcom/ut/mini/internal/RealtimeDebugSwitch;->i:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/ut/mini/internal/RealtimeDebugSwitch;->i:I

    .line 66
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    sget v0, Lcom/ut/mini/internal/RealtimeDebugSwitch;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ut/mini/internal/RealtimeDebugSwitch;->i:I

    .line 71
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    return-void
.end method

.method public onSwitchBackground()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public onSwitchForeground()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
