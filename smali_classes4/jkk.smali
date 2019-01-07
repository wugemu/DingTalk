.class public final Ljkk;
.super Landroid/os/HandlerThread;
.source "TBAVThread.java"


# instance fields
.field public a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Ljkk;->start()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Ljkk;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ljkk;->a:Landroid/os/Handler;

    .line 39
    return-void
.end method


# virtual methods
.method public final quit()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Ljkk;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Ljkk;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 75
    iput-object v1, p0, Ljkk;->a:Landroid/os/Handler;

    .line 77
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method
