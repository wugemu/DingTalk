.class final Lrx/internal/operators/OperatorWindowWithSize$a;
.super Llgy;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize;
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
            "<-",
            "Llgs",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final d:Llgz;

.field e:I

.field f:Llkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llkv",
            "<TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgy;I)V
    .locals 2
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-",
            "Llgs",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$a;, "Lrx/internal/operators/OperatorWindowWithSize$a<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-Llgs<TT;>;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 92
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->a:Llgy;

    .line 93
    iput p2, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->b:I

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    invoke-static {p0}, Llkz;->a(Llhf;)Llgz;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->d:Llgz;

    .line 96
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->d:Llgz;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithSize$a;->a(Llgz;)V

    .line 97
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithSize$a;->a(J)V

    .line 98
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/OperatorWindowWithSize$a;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorWindowWithSize$a;
    .param p1, "x1"    # J

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$a;->a(J)V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 1

    .prologue
    .line 165
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$a;, "Lrx/internal/operators/OperatorWindowWithSize$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$a;->unsubscribe()V

    .line 168
    :cond_0
    return-void
.end method

.method public final onCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$a;, "Lrx/internal/operators/OperatorWindowWithSize$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->f:Llkv;

    .line 141
    .local v0, "w":Llkv;, "Llkv<TT;TT;>;"
    if-eqz v0, :cond_0

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->f:Llkv;

    .line 143
    invoke-virtual {v0}, Llkv;->onCompleted()V

    .line 145
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->a:Llgy;

    invoke-virtual {v1}, Llgy;->onCompleted()V

    .line 146
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$a;, "Lrx/internal/operators/OperatorWindowWithSize$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->f:Llkv;

    .line 130
    .local v0, "w":Llkv;, "Llkv<TT;TT;>;"
    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->f:Llkv;

    .line 132
    invoke-virtual {v0, p1}, Llkv;->onError(Ljava/lang/Throwable;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->a:Llgy;

    invoke-virtual {v1, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$a;, "Lrx/internal/operators/OperatorWindowWithSize$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->e:I

    .line 104
    .local v0, "i":I
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->f:Llkv;

    .line 105
    .local v1, "w":Llkv;, "Llkv<TT;TT;>;"
    if-nez v0, :cond_0

    .line 106
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 108
    iget v2, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->b:I

    invoke-static {v2, p0}, Lrx/subjects/UnicastSubject;->a(ILlhf;)Lrx/subjects/UnicastSubject;

    move-result-object v1

    .line 109
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->f:Llkv;

    .line 111
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->a:Llgy;

    invoke-virtual {v2, v1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 115
    invoke-virtual {v1, p1}, Llkv;->onNext(Ljava/lang/Object;)V

    .line 117
    iget v2, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->b:I

    if-ne v0, v2, :cond_1

    .line 118
    const/4 v2, 0x0

    iput v2, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->e:I

    .line 119
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->f:Llkv;

    .line 120
    invoke-virtual {v1}, Llkv;->onCompleted()V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_1
    iput v0, p0, Lrx/internal/operators/OperatorWindowWithSize$a;->e:I

    goto :goto_0
.end method
