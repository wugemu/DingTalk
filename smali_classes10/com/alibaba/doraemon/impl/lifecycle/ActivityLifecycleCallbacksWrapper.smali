.class public Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallbacksWrapper.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V
    .locals 0
    .param p1, "callable"    # Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;->mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    .line 22
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "paramActivity"    # Landroid/app/Activity;
    .param p2, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;->mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;->mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 28
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "paramActivity"    # Landroid/app/Activity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;->mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;->mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "paramActivity"    # Landroid/app/Activity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;->mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;->mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->onActivityPaused(Landroid/app/Activity;)V

    .line 46
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "paramActivity"    # Landroid/app/Activity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;->mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;->mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->onActivityResumed(Landroid/app/Activity;)V

    .line 40
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "paramActivity"    # Landroid/app/Activity;
    .param p2, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;->mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;->mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "paramActivity"    # Landroid/app/Activity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;->mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;->mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->onActivityStarted(Landroid/app/Activity;)V

    .line 34
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "paramActivity"    # Landroid/app/Activity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;->mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lifecycle/ActivityLifecycleCallbacksWrapper;->mAppCallbacke:Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;->onActivityStopped(Landroid/app/Activity;)V

    .line 52
    :cond_0
    return-void
.end method
