.class final Llgj;
.super Landroid/os/Handler;
.source "InvalidationHandler.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Llgf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgf;)V
    .locals 1
    .param p1, "gifDrawable"    # Llgf;

    .prologue
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Llgj;->a:Ljava/lang/ref/WeakReference;

    .line 18
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 22
    iget-object v2, p0, Llgj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgf;

    .line 23
    .local v0, "gifDrawable":Llgf;
    if-nez v0, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 27
    invoke-virtual {v0}, Llgf;->invalidateSelf()V

    goto :goto_0

    .line 29
    :cond_2
    iget-object v2, v0, Llgf;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llgb;

    .line 30
    .local v1, "listener":Llgb;
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-interface {v1}, Llgb;->a()V

    goto :goto_1
.end method
