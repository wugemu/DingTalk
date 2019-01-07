.class final Lcom/alibaba/motu/watch/ApplicationIdleMonitor$a;
.super Ljava/lang/Object;
.source "ApplicationIdleMonitor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/motu/watch/ApplicationIdleMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;


# direct methods
.method constructor <init>(Lcom/alibaba/motu/watch/ApplicationIdleMonitor;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor$a;->a:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 76
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 123
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor$a;->a:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    invoke-static {v0}, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->a(Lcom/alibaba/motu/watch/ApplicationIdleMonitor;)Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor$a;->a:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    invoke-static {v0}, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->a(Lcom/alibaba/motu/watch/ApplicationIdleMonitor;)Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor$a;->a:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    invoke-static {v1}, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->a(Lcom/alibaba/motu/watch/ApplicationIdleMonitor;)Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->d:J

    iput-wide v2, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->c:J

    .line 104
    iget-object v0, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor$a;->a:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    invoke-static {v0}, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->a(Lcom/alibaba/motu/watch/ApplicationIdleMonitor;)Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->a()V

    .line 106
    :cond_0
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 128
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor$a;->a:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->a(Lcom/alibaba/motu/watch/ApplicationIdleMonitor;J)J

    .line 115
    :try_start_0
    invoke-static {}, Lhve;->a()Lhve;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1031
    if-eqz v1, :cond_0

    .line 1032
    :try_start_1
    iget-object v2, v0, Lhve;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lhve;->b:I

    if-ge v2, v3, :cond_1

    .line 1033
    iget-object v0, v0, Lhve;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 1035
    :cond_1
    iget-object v2, v0, Lhve;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1036
    iget-object v2, v0, Lhve;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lhve;->b:I

    if-ge v2, v3, :cond_0

    .line 1037
    iget-object v0, v0, Lhve;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x2710

    .line 87
    iget-object v0, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor$a;->a:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    invoke-static {v0}, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->a(Lcom/alibaba/motu/watch/ApplicationIdleMonitor;)Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor$a;->a:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    invoke-static {v0}, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->a(Lcom/alibaba/motu/watch/ApplicationIdleMonitor;)Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor$a;->a:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    invoke-static {v1}, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->a(Lcom/alibaba/motu/watch/ApplicationIdleMonitor;)Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->d:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->c:J

    .line 89
    iget-object v0, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor$a;->a:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    invoke-static {v0}, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->a(Lcom/alibaba/motu/watch/ApplicationIdleMonitor;)Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    move-result-object v0

    iget-wide v0, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->c:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/motu/watch/ApplicationIdleMonitor$a;->a:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    invoke-static {v0}, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->a(Lcom/alibaba/motu/watch/ApplicationIdleMonitor;)Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;

    move-result-object v0

    iput-wide v6, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->c:J

    .line 96
    :cond_0
    return-void
.end method
