.class final Llhv$a;
.super Llgy;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llhv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;",
        "Llhf;"
    }
.end annotation


# instance fields
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Z

.field final c:Llgv$a;

.field d:Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs",
            "<TT;>;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Llgy;ZLlgv$a;Llgs;)V
    .locals 0
    .param p2, "requestOn"    # Z
    .param p3, "worker"    # Llgv$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;Z",
            "Llgv$a;",
            "Llgs",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Llhv$a;, "Llhv$a<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-TT;>;"
    .local p4, "source":Llgs;, "Llgs<TT;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 66
    iput-object p1, p0, Llhv$a;->a:Llgy;

    .line 67
    iput-boolean p2, p0, Llhv$a;->b:Z

    .line 68
    iput-object p3, p0, Llhv$a;->c:Llgv$a;

    .line 69
    iput-object p4, p0, Llhv$a;->d:Llgs;

    .line 70
    return-void
.end method


# virtual methods
.method public final a(Llgu;)V
    .locals 2
    .param p1, "p"    # Llgu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 105
    .local p0, "this":Llhv$a;, "Llhv$a<TT;>;"
    iget-object v0, p0, Llhv$a;->a:Llgy;

    new-instance v1, Llhv$a$1;

    invoke-direct {v1, p0, p1}, Llhv$a$1;-><init>(Llhv$a;Llgu;)V

    invoke-virtual {v0, v1}, Llgy;->a(Llgu;)V

    .line 120
    return-void
.end method

.method public final call()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 97
    .local p0, "this":Llhv$a;, "Llhv$a<TT;>;"
    iget-object v0, p0, Llhv$a;->d:Llgs;

    .line 98
    .local v0, "src":Llgs;, "Llgs<TT;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Llhv$a;->d:Llgs;

    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Llhv$a;->e:Ljava/lang/Thread;

    .line 100
    invoke-virtual {v0, p0}, Llgs;->a(Llgy;)Llgz;

    .line 101
    return-void
.end method

.method public final onCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    .local p0, "this":Llhv$a;, "Llhv$a<TT;>;"
    :try_start_0
    iget-object v0, p0, Llhv$a;->a:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Llhv$a;->c:Llgv$a;

    invoke-virtual {v0}, Llgv$a;->unsubscribe()V

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    iget-object v1, p0, Llhv$a;->c:Llgv$a;

    invoke-virtual {v1}, Llgv$a;->unsubscribe()V

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 80
    .local p0, "this":Llhv$a;, "Llhv$a<TT;>;"
    :try_start_0
    iget-object v0, p0, Llhv$a;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v0, p0, Llhv$a;->c:Llgv$a;

    invoke-virtual {v0}, Llgv$a;->unsubscribe()V

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    iget-object v1, p0, Llhv$a;->c:Llgv$a;

    invoke-virtual {v1}, Llgv$a;->unsubscribe()V

    throw v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Llhv$a;, "Llhv$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Llhv$a;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 75
    return-void
.end method
