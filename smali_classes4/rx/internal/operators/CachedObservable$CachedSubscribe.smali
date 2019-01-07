.class final Lrx/internal/operators/CachedObservable$CachedSubscribe;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "CachedObservable.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CachedObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CachedSubscribe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Llgs$a",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x271aaa367272024eL


# instance fields
.field final state:Lrx/internal/operators/CachedObservable$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/CachedObservable$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/CachedObservable$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/CachedObservable$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "this":Lrx/internal/operators/CachedObservable$CachedSubscribe;, "Lrx/internal/operators/CachedObservable$CachedSubscribe<TT;>;"
    .local p1, "state":Lrx/internal/operators/CachedObservable$a;, "Lrx/internal/operators/CachedObservable$a<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 235
    iput-object p1, p0, Lrx/internal/operators/CachedObservable$CachedSubscribe;->state:Lrx/internal/operators/CachedObservable$a;

    .line 236
    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 230
    .local p0, "this":Lrx/internal/operators/CachedObservable$CachedSubscribe;, "Lrx/internal/operators/CachedObservable$CachedSubscribe<TT;>;"
    check-cast p1, Llgy;

    invoke-virtual {p0, p1}, Lrx/internal/operators/CachedObservable$CachedSubscribe;->call(Llgy;)V

    return-void
.end method

.method public final call(Llgy;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/CachedObservable$CachedSubscribe;, "Lrx/internal/operators/CachedObservable$CachedSubscribe<TT;>;"
    .local p1, "t":Llgy;, "Llgy<-TT;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 240
    new-instance v0, Lrx/internal/operators/CachedObservable$ReplayProducer;

    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CachedSubscribe;->state:Lrx/internal/operators/CachedObservable$a;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/CachedObservable$ReplayProducer;-><init>(Llgy;Lrx/internal/operators/CachedObservable$a;)V

    .line 241
    .local v0, "rp":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CachedSubscribe;->state:Lrx/internal/operators/CachedObservable$a;

    .line 1126
    iget-object v2, v1, Lrx/internal/operators/CachedObservable$a;->b:Llky;

    monitor-enter v2

    .line 1127
    :try_start_0
    iget-object v3, v1, Lrx/internal/operators/CachedObservable$a;->c:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 1128
    array-length v4, v3

    .line 1129
    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 1130
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v6, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1131
    aput-object v0, v5, v4

    .line 1132
    iput-object v5, v1, Lrx/internal/operators/CachedObservable$a;->c:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 1133
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-virtual {p1, v0}, Llgy;->a(Llgz;)V

    .line 244
    invoke-virtual {p1, v0}, Llgy;->a(Llgu;)V

    .line 247
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$CachedSubscribe;->get()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v8, v9}, Lrx/internal/operators/CachedObservable$CachedSubscribe;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CachedSubscribe;->state:Lrx/internal/operators/CachedObservable$a;

    .line 1168
    new-instance v2, Lrx/internal/operators/CachedObservable$a$1;

    invoke-direct {v2, v1}, Lrx/internal/operators/CachedObservable$a$1;-><init>(Lrx/internal/operators/CachedObservable$a;)V

    .line 1182
    iget-object v3, v1, Lrx/internal/operators/CachedObservable$a;->b:Llky;

    invoke-virtual {v3, v2}, Llky;->a(Llgz;)V

    .line 1183
    iget-object v3, v1, Lrx/internal/operators/CachedObservable$a;->a:Llgs;

    invoke-virtual {v3, v2}, Llgs;->a(Llgy;)Llgz;

    .line 1184
    iput-boolean v9, v1, Lrx/internal/operators/CachedObservable$a;->e:Z

    .line 252
    :cond_0
    return-void

    .line 1133
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
