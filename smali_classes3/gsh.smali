.class public final Lgsh;
.super Landroid/os/HandlerThread;
.source "TPHandlerThread.java"


# instance fields
.field public a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lgsh;->start()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lgsh;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lgsh;->a:Landroid/os/Handler;

    .line 29
    return-void
.end method


# virtual methods
.method public final quit()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lgsh;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lgsh;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 65
    iput-object v1, p0, Lgsh;->a:Landroid/os/Handler;

    .line 67
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method
