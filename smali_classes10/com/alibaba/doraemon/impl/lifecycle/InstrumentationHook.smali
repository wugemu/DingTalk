.class public Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;
.super Landroid/app/Instrumentation;
.source "InstrumentationHook.java"


# instance fields
.field private mSystemInstrumentation:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 0
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;->mSystemInstrumentation:Landroid/app/Instrumentation;

    .line 18
    return-void
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 24
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->dispatchActivityCreatedCompat(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;->mSystemInstrumentation:Landroid/app/Instrumentation;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;->mSystemInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 36
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->dispatchActivityDestroyedCompat(Landroid/app/Activity;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;->mSystemInstrumentation:Landroid/app/Instrumentation;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;->mSystemInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 48
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->dispatchActivityPausedCompat(Landroid/app/Activity;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;->mSystemInstrumentation:Landroid/app/Instrumentation;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;->mSystemInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 60
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->dispatchActivityResumedCompat(Landroid/app/Activity;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;->mSystemInstrumentation:Landroid/app/Instrumentation;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;->mSystemInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 72
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->dispatchActivitySaveInstanceStateCompat(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;->mSystemInstrumentation:Landroid/app/Instrumentation;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;->mSystemInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 84
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->dispatchActivityStartedCompat(Landroid/app/Activity;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;->mSystemInstrumentation:Landroid/app/Instrumentation;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;->mSystemInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 96
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->dispatchActivityStoppedCompat(Landroid/app/Activity;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;->mSystemInstrumentation:Landroid/app/Instrumentation;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/InstrumentationHook;->mSystemInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    goto :goto_0
.end method
