.class public final Lcrg;
.super Ljava/lang/Object;
.source "DDAlertDialogContextLifeCycle.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public a:Z

.field private b:Landroid/app/Activity;

.field private c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcrg;->b:Landroid/app/Activity;

    .line 19
    iput-object v0, p0, Lcrg;->c:Landroid/app/Dialog;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrg;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    iget-object v1, p0, Lcrg;->c:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcrg;->c:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcrg;->c:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcrg;->b()V

    .line 53
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcrg;->b()V

    .line 31
    iput-object p1, p0, Lcrg;->b:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lcrg;->c:Landroid/app/Dialog;

    .line 34
    iget-object v0, p0, Lcrg;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrg;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 37
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 61
    iput-object v1, p0, Lcrg;->c:Landroid/app/Dialog;

    .line 62
    iput-object v1, p0, Lcrg;->b:Landroid/app/Activity;

    .line 63
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 106
    iget-object v0, p0, Lcrg;->b:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcrg;->a()V

    .line 109
    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcrg;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrg;->b:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcrg;->a()V

    .line 92
    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    return-void
.end method
