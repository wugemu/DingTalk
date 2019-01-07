.class final Lcjq$2;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjq;


# direct methods
.method constructor <init>(Lcjq;)V
    .locals 0
    .param p1, "this$0"    # Lcjq;

    .prologue
    .line 61
    iput-object p1, p0, Lcjq$2;->a:Lcjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 105
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 92
    iget-object v0, p0, Lcjq$2;->a:Lcjq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcjq;->a(Lcjq;Landroid/app/Activity;)Landroid/app/Activity;

    .line 93
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcjq$2;->a:Lcjq;

    invoke-static {v0, p1}, Lcjq;->a(Lcjq;Landroid/app/Activity;)Landroid/app/Activity;

    .line 73
    iget-object v0, p0, Lcjq$2;->a:Lcjq;

    invoke-static {v0}, Lcjq;->a(Lcjq;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcjq$2;->a:Lcjq;

    iget-object v1, p0, Lcjq$2;->a:Lcjq;

    invoke-static {v1}, Lcjq;->a(Lcjq;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcjq;->b(Lcjq;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcjq$2;->a:Lcjq;

    invoke-static {v0}, Lcjq;->b(Lcjq;)Lcjs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcjq$2;->a:Lcjq;

    invoke-static {v0}, Lcjq;->b(Lcjq;)Lcjs;

    move-result-object v0

    iget-object v1, p0, Lcjq$2;->a:Lcjq;

    invoke-static {v1}, Lcjq;->c(Lcjq;)Lcjs;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 79
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcjq$2;->a:Lcjq;

    invoke-static {v1}, Lcjq;->d(Lcjq;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcjq$2;->a:Lcjq;

    invoke-static {v1}, Lcjq;->d(Lcjq;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcjq$2;->a:Lcjq;

    invoke-static {v0}, Lcjq;->c(Lcjq;)Lcjs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcjr;->a()Lcjr;

    move-result-object v0

    .line 1089
    invoke-virtual {v0, v2}, Lcjr;->a(Lcjr$a;)V

    .line 85
    iget-object v0, p0, Lcjq$2;->a:Lcjq;

    invoke-static {v0, v2}, Lcjq;->a(Lcjq;Lcjs;)Lcjs;

    goto :goto_0
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    return-void
.end method
