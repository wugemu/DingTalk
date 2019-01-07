.class public Lcom/alibaba/sdk/android/utils/c;
.super Ljava/lang/Object;
.source "DataTracker.java"


# instance fields
.field private b:Z

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/utils/c;->b:Z

    return-void
.end method

.method private b()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    const/4 v0, 0x1

    .line 103
    :try_start_0
    const-string/jumbo v1, "com.ut.mini.UTAnalytics"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string/jumbo v1, "Utils:DataTracker"

    const-string/jumbo v2, "ut not exist"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Application;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    iput-object p2, p0, Lcom/alibaba/sdk/android/utils/c;->d:Ljava/util/Map;

    .line 29
    invoke-direct {p0}, Lcom/alibaba/sdk/android/utils/c;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/utils/c;->b:Z

    .line 31
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/utils/c;->b:Z

    if-nez v0, :cond_0

    .line 32
    const-string/jumbo v0, "Utils:DataTracker"

    const-string/jumbo v1, "init failed due to ut not exsits"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 37
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/utils/c$1;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/utils/c$1;-><init>(Lcom/alibaba/sdk/android/utils/c;)V

    invoke-virtual {v0, p1, v1}, Lcom/ut/mini/UTAnalytics;->setAppApplicationInstance4sdk(Landroid/app/Application;Lcom/ut/mini/IUTApplication;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string/jumbo v1, "Utils:DataTracker"

    const-string/jumbo v2, "init data tracker failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendCustomHit(Ljava/lang/String;JLjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/utils/c;->b:Z

    if-nez v0, :cond_0

    .line 81
    const-string/jumbo v0, "Utils:DataTracker"

    const-string/jumbo v1, "send custom hit failed due to ut not exists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_0
    :try_start_0
    new-instance v0, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    invoke-direct {v0, p1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p2, p3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setDurationOnEvent(J)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    .line 88
    invoke-virtual {v0, p4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 89
    iget-object v1, p0, Lcom/alibaba/sdk/android/utils/c;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 90
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    const-string/jumbo v2, "24527540"

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTAnalytics;->getTrackerByAppkey(Ljava/lang/String;)Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string/jumbo v1, "Utils:DataTracker"

    const-string/jumbo v2, "send custom hit failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
