.class public final Ljpn;
.super Landroid/os/HandlerThread;
.source "WMLThread.java"


# instance fields
.field a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Ljpn;->start()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Ljpn;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ljpn;->a:Landroid/os/Handler;

    .line 16
    return-void
.end method


# virtual methods
.method public final quit()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 31
    iget-object v0, p0, Ljpn;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Ljpn;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method
