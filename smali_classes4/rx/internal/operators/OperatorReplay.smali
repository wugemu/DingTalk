.class public final Lrx/internal/operators/OperatorReplay;
.super Llkc;
.source "OperatorReplay.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$Node;,
        Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$a;,
        Lrx/internal/operators/OperatorReplay$InnerProducer;,
        Lrx/internal/operators/OperatorReplay$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llkc",
        "<TT;>;",
        "Llgz;"
    }
.end annotation


# static fields
.field static final e:Llhj;


# instance fields
.field final b:Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorReplay$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final d:Llhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhj",
            "<+",
            "Lrx/internal/operators/OperatorReplay$a",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lrx/internal/operators/OperatorReplay$1;

    invoke-direct {v0}, Lrx/internal/operators/OperatorReplay$1;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorReplay;->e:Llhj;

    return-void
.end method

.method private constructor <init>(Llgs$a;Llgs;Ljava/util/concurrent/atomic/AtomicReference;Llhj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgs$a",
            "<TT;>;",
            "Llgs",
            "<+TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorReplay$b",
            "<TT;>;>;",
            "Llhj",
            "<+",
            "Lrx/internal/operators/OperatorReplay$a",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lrx/internal/operators/OperatorReplay;, "Lrx/internal/operators/OperatorReplay<TT;>;"
    .local p1, "onSubscribe":Llgs$a;, "Llgs$a<TT;>;"
    .local p2, "source":Llgs;, "Llgs<+TT;>;"
    .local p3, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorReplay$b<TT;>;>;"
    .local p4, "bufferFactory":Llhj;, "Llhj<+Lrx/internal/operators/OperatorReplay$a<TT;>;>;"
    invoke-direct {p0, p1}, Llkc;-><init>(Llgs$a;)V

    .line 252
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay;->b:Llgs;

    .line 253
    iput-object p3, p0, Lrx/internal/operators/OperatorReplay;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 254
    iput-object p4, p0, Lrx/internal/operators/OperatorReplay;->d:Llhj;

    .line 255
    return-void
.end method

.method public static a(Llgs;)Llkc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgs",
            "<+TT;>;)",
            "Llkc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "source":Llgs;, "Llgs<+TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorReplay;->e:Llhj;

    invoke-static {p0, v0}, Lrx/internal/operators/OperatorReplay;->a(Llgs;Llhj;)Llkc;

    move-result-object v0

    return-object v0
.end method

.method public static a(Llgs;I)Llkc;
    .locals 1
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgs",
            "<+TT;>;I)",
            "Llkc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "source":Llgs;, "Llgs<+TT;>;"
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1132
    sget-object v0, Lrx/internal/operators/OperatorReplay;->e:Llhj;

    invoke-static {p0, v0}, Lrx/internal/operators/OperatorReplay;->a(Llgs;Llhj;)Llkc;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/operators/OperatorReplay$2;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorReplay$2;-><init>(I)V

    invoke-static {p0, v0}, Lrx/internal/operators/OperatorReplay;->a(Llgs;Llhj;)Llkc;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Llgs;JLjava/util/concurrent/TimeUnit;Llgv;)Llkc;
    .locals 7
    .param p1, "maxAge"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Llgv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgs",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Llgv;",
            ")",
            "Llkc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "source":Llgs;, "Llgs<+TT;>;"
    const v6, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lrx/internal/operators/OperatorReplay;->a(Llgs;JLjava/util/concurrent/TimeUnit;Llgv;I)Llkc;

    move-result-object v0

    return-object v0
.end method

.method public static a(Llgs;JLjava/util/concurrent/TimeUnit;Llgv;I)Llkc;
    .locals 3
    .param p1, "maxAge"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Llgv;
    .param p5, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgs",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Llgv;",
            "I)",
            "Llkc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "source":Llgs;, "Llgs<+TT;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 184
    .local v0, "maxAgeInMillis":J
    new-instance v2, Lrx/internal/operators/OperatorReplay$3;

    invoke-direct {v2, p5, v0, v1, p4}, Lrx/internal/operators/OperatorReplay$3;-><init>(IJLlgv;)V

    invoke-static {p0, v2}, Lrx/internal/operators/OperatorReplay;->a(Llgs;Llhj;)Llkc;

    move-result-object v2

    return-object v2
.end method

.method private static a(Llgs;Llhj;)Llkc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgs",
            "<+TT;>;",
            "Llhj",
            "<+",
            "Lrx/internal/operators/OperatorReplay$a",
            "<TT;>;>;)",
            "Llkc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "source":Llgs;, "Llgs<+TT;>;"
    .local p1, "bufferFactory":Llhj;, "Llhj<+Lrx/internal/operators/OperatorReplay$a<TT;>;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 202
    .local v0, "curr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorReplay$b<TT;>;>;"
    new-instance v1, Lrx/internal/operators/OperatorReplay$4;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/OperatorReplay$4;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Llhj;)V

    .line 246
    .local v1, "onSubscribe":Llgs$a;, "Llgs$a<TT;>;"
    new-instance v2, Lrx/internal/operators/OperatorReplay;

    invoke-direct {v2, v1, p0, v0, p1}, Lrx/internal/operators/OperatorReplay;-><init>(Llgs$a;Llgs;Ljava/util/concurrent/atomic/AtomicReference;Llhj;)V

    return-object v2
.end method


# virtual methods
.method public final a(Llhg;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llhg",
            "<-",
            "Llgz;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay;, "Lrx/internal/operators/OperatorReplay<TT;>;"
    .local p1, "connection":Llhg;, "Llhg<-Llgz;>;"
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 275
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$b;

    .line 277
    .local v1, "ps":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$b;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    :cond_1
    new-instance v2, Lrx/internal/operators/OperatorReplay$b;

    iget-object v3, p0, Lrx/internal/operators/OperatorReplay;->d:Llhj;

    invoke-interface {v3}, Llhj;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorReplay$a;

    invoke-direct {v2, v3}, Lrx/internal/operators/OperatorReplay$b;-><init>(Lrx/internal/operators/OperatorReplay$a;)V

    .line 281
    .local v2, "u":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$b;->b()V

    .line 283
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    move-object v1, v2

    .line 292
    .end local v2    # "u":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    :cond_2
    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 308
    .local v0, "doConnect":Z
    :goto_0
    invoke-interface {p1, v1}, Llhg;->call(Ljava/lang/Object;)V

    .line 309
    if-eqz v0, :cond_3

    .line 310
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay;->b:Llgs;

    invoke-virtual {v3, v1}, Llgs;->a(Llgy;)Llgz;

    .line 312
    :cond_3
    return-void

    .end local v0    # "doConnect":Z
    :cond_4
    move v0, v4

    .line 292
    goto :goto_0
.end method

.method public final isUnsubscribed()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 264
    .local p0, "this":Lrx/internal/operators/OperatorReplay;, "Lrx/internal/operators/OperatorReplay<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$b;

    .line 265
    .local v0, "ps":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$b;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 259
    .local p0, "this":Lrx/internal/operators/OperatorReplay;, "Lrx/internal/operators/OperatorReplay<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 260
    return-void
.end method
