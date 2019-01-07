.class public Lcom/alibaba/motu/watch/ApplicationIdleMonitor;
.super Ljava/lang/Object;
.source "ApplicationIdleMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/motu/watch/ApplicationIdleMonitor$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:J

.field public c:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->a:Z

    .line 26
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->b:J

    .line 28
    iput-object v4, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->d:Landroid/content/Context;

    .line 29
    iput-object v4, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->c:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    .line 37
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->d:Landroid/content/Context;

    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 41
    iget-object v1, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    new-instance v2, Lcom/alibaba/motu/watch/ApplicationIdleMonitor$a;

    invoke-direct {v2, p0}, Lcom/alibaba/motu/watch/ApplicationIdleMonitor$a;-><init>(Lcom/alibaba/motu/watch/ApplicationIdleMonitor;)V

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    sget-object v1, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "build version %s not suppert MainLooperMonitor, registerActivityLifecycleCallbacks failed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "application monitor err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/motu/watch/ApplicationIdleMonitor;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/motu/watch/ApplicationIdleMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/motu/watch/ApplicationIdleMonitor;)Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->c:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    return-object v0
.end method
