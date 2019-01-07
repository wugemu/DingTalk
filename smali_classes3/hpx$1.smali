.class final Lhpx$1;
.super Ljava/lang/Object;
.source "LightNotificationCenter.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhpx;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhpx;


# direct methods
.method constructor <init>(Lhpx;)V
    .locals 0
    .param p1, "this$0"    # Lhpx;

    .prologue
    .line 52
    iput-object p1, p0, Lhpx$1;->a:Lhpx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lhpx$1;->a:Lhpx;

    .line 1172
    iget-object v1, v0, Lhpx;->a:Landroid/app/Activity;

    if-ne v1, p1, :cond_0

    .line 1173
    const/4 v1, 0x0

    iput-object v1, v0, Lhpx;->a:Landroid/app/Activity;

    .line 84
    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v0, p0, Lhpx$1;->a:Lhpx;

    .line 1155
    iget-object v1, v0, Lhpx;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1156
    iget-object v1, v0, Lhpx;->c:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1158
    iput-object v3, v0, Lhpx;->a:Landroid/app/Activity;

    .line 1160
    iput-object v3, v0, Lhpx;->b:Lhpy;

    .line 69
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    iget-object v0, p0, Lhpx$1;->a:Lhpx;

    .line 1145
    iput-object p1, v0, Lhpx;->a:Landroid/app/Activity;

    .line 64
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    return-void
.end method
