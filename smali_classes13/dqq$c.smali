.class public abstract Ldqq$c;
.super Ldqq$b;
.source "ChatMsgListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldqq$b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Ldqq;


# direct methods
.method public constructor <init>(Ldqq;)V
    .locals 0
    .param p1, "this$0"    # Ldqq;

    .prologue
    .line 1496
    .local p0, "this":Ldqq$c;, "Ldqq$c<TT;>;"
    iput-object p1, p0, Ldqq$c;->d:Ldqq;

    invoke-direct {p0, p1}, Ldqq$b;-><init>(Ldqq;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1500
    .local p0, "this":Ldqq$c;, "Ldqq$c<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ldqq$c;->d:Ldqq;

    .line 2040
    iget-object v0, v0, Ldqq;->a:Ldqq$e;

    .line 1500
    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Ldqq$c;->d:Ldqq;

    .line 3040
    iget-object v0, v0, Ldqq;->a:Ldqq$e;

    .line 1501
    invoke-interface {v0, p1, p0}, Ldqq$e;->a(Ljava/lang/Object;Ldqq$c;)V

    .line 1506
    :goto_0
    return-void

    .line 1503
    :cond_0
    invoke-virtual {p0, p1}, Ldqq$c;->a_(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract a_(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final bridge synthetic b()V
    .locals 0

    .prologue
    .line 1496
    .local p0, "this":Ldqq$c;, "Ldqq$c<TT;>;"
    invoke-super {p0}, Ldqq$b;->b()V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1509
    .line 3250
    .local p0, "this":Ldqq$c;, "Ldqq$c<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Ldqq$b;->f:Z

    .line 1509
    if-eqz v0, :cond_0

    .line 1525
    :goto_0
    return-void

    .line 1512
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    invoke-virtual {v0}, Lhcv;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1513
    invoke-virtual {p0, p1}, Ldqq$c;->a_(Ljava/lang/Object;)V

    goto :goto_0

    .line 1515
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldqq$c$1;

    invoke-direct {v1, p0, p1}, Ldqq$c$1;-><init>(Ldqq$c;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1496
    .local p0, "this":Ldqq$c;, "Ldqq$c<TT;>;"
    invoke-super {p0, p1, p2}, Ldqq$b;->onException(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1496
    .local p0, "this":Ldqq$c;, "Ldqq$c<TT;>;"
    invoke-super {p0, p1, p2}, Ldqq$b;->onProgress(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1496
    .local p0, "this":Ldqq$c;, "Ldqq$c<TT;>;"
    invoke-super {p0, p1}, Ldqq$b;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
