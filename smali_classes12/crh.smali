.class public final Lcrh;
.super Ljava/lang/Object;
.source "DDDismissRequestContextLifeCycle.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrh$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcrh$a;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcrh;->a:Landroid/app/Activity;

    .line 18
    iput-object v0, p0, Lcrh;->b:Lcrh$a;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrh;->c:Z

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 67
    iput-object v1, p0, Lcrh;->b:Lcrh$a;

    .line 68
    iput-object v1, p0, Lcrh;->a:Landroid/app/Activity;

    .line 69
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcrh$a;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "request"    # Lcrh$a;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcrh;->a()V

    .line 41
    iput-object p1, p0, Lcrh;->a:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lcrh;->b:Lcrh$a;

    .line 44
    iget-object v0, p0, Lcrh;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrh;->b:Lcrh$a;

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 47
    :cond_0
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 112
    iget-object v0, p0, Lcrh;->a:Landroid/app/Activity;

    if-ne v0, p1, :cond_1

    .line 1054
    iget-object v0, p0, Lcrh;->b:Lcrh$a;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcrh;->b:Lcrh$a;

    invoke-interface {v0}, Lcrh$a;->onDismissRequest()V

    .line 1058
    :cond_0
    invoke-virtual {p0}, Lcrh;->a()V

    .line 115
    :cond_1
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 98
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 103
    return-void
.end method
