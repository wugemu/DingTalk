.class public final Lbwq$3;
.super Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;
.source "LivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbwq;


# direct methods
.method public constructor <init>(Lbwq;)V
    .locals 0
    .param p1, "this$0"    # Lbwq;

    .prologue
    .line 248
    iput-object p1, p0, Lbwq$3;->a:Lbwq;

    invoke-direct {p0}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 267
    iget-object v0, p0, Lbwq$3;->a:Lbwq;

    invoke-static {v0}, Lbwq;->b(Lbwq;)Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 268
    iget-object v0, p0, Lbwq$3;->a:Lbwq;

    invoke-static {v0}, Lbwq;->g(Lbwq;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 269
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lbws;->a(Landroid/app/Activity;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->i()V

    .line 272
    :cond_0
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbws;->c(Z)V

    .line 274
    :cond_1
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 252
    iget-object v0, p0, Lbwq$3;->a:Lbwq;

    invoke-static {v0}, Lbwq;->b(Lbwq;)Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 253
    iget-object v0, p0, Lbwq$3;->a:Lbwq;

    invoke-static {v0}, Lbwq;->f(Lbwq;)V

    .line 255
    :cond_0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x2

    .line 259
    iget-object v0, p0, Lbwq$3;->a:Lbwq;

    invoke-static {v0}, Lbwq;->b(Lbwq;)Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 260
    iget-object v0, p0, Lbwq$3;->a:Lbwq;

    invoke-static {v0}, Lbwq;->g(Lbwq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    iget-object v0, p0, Lbwq$3;->a:Lbwq;

    invoke-static {v0}, Lbwq;->g(Lbwq;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 263
    :cond_0
    return-void
.end method
