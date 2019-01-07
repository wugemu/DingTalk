.class final Lrx/internal/operators/OperatorReplay$InnerProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorReplay.java"

# interfaces
.implements Llgu;
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Llgu;",
        "Llgz;"
    }
.end annotation


# static fields
.field static final UNSUBSCRIBED:J = -0x8000000000000000L

.field private static final serialVersionUID:J = -0x3dcf6c3b2e70d8baL


# instance fields
.field child:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field index:Ljava/lang/Object;

.field missed:Z

.field final parent:Lrx/internal/operators/OperatorReplay$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorReplay$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field final totalRequested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorReplay$b;Llgy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$b",
            "<TT;>;",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    .local p1, "parent":Lrx/internal/operators/OperatorReplay$b;, "Lrx/internal/operators/OperatorReplay$b<TT;>;"
    .local p2, "child":Llgy;, "Llgy<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 678
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lrx/internal/operators/OperatorReplay$b;

    .line 679
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Llgy;

    .line 680
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 681
    return-void
.end method


# virtual methods
.method final addTotalRequested(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 732
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 733
    .local v0, "r":J
    add-long v2, v0, p1

    .line 734
    .local v2, "u":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 735
    const-wide v2, 0x7fffffffffffffffL

    .line 737
    :cond_1
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 738
    return-void
.end method

.method final index()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()TU;"
        }
    .end annotation

    .prologue
    .line 809
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    return-object v0
.end method

.method public final isUnsubscribed()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 777
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final produced(J)J
    .locals 11
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const-wide/16 v8, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    .line 750
    cmp-long v6, p1, v8

    if-gtz v6, :cond_0

    .line 751
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Cant produce zero or less"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 755
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    .line 757
    .local v0, "r":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    move-wide v2, v4

    .line 769
    :goto_0
    return-wide v2

    .line 761
    :cond_1
    sub-long v2, v0, p1

    .line 763
    .local v2, "u":J
    cmp-long v6, v2, v8

    if-gez v6, :cond_2

    .line 764
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "More produced ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") than requested ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 767
    :cond_2
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$InnerProducer;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method public final request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const-wide/16 v6, 0x0

    .line 686
    cmp-long v4, p1, v6

    if-gez v4, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    .line 696
    .local v0, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 700
    cmp-long v4, v0, v6

    if-ltz v4, :cond_2

    cmp-long v4, p1, v6

    if-eqz v4, :cond_0

    .line 704
    :cond_2
    add-long v2, v0, p1

    .line 706
    .local v2, "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_3

    .line 708
    const-wide v2, 0x7fffffffffffffffL

    .line 711
    :cond_3
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$InnerProducer;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 713
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorReplay$InnerProducer;->addTotalRequested(J)V

    .line 716
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lrx/internal/operators/OperatorReplay$b;

    invoke-virtual {v4, p0}, Lrx/internal/operators/OperatorReplay$b;->b(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 718
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lrx/internal/operators/OperatorReplay$b;

    iget-object v4, v4, Lrx/internal/operators/OperatorReplay$b;->a:Lrx/internal/operators/OperatorReplay$a;

    invoke-interface {v4, p0}, Lrx/internal/operators/OperatorReplay$a;->replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const-wide/high16 v4, -0x8000000000000000L

    .line 781
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    .line 783
    .local v0, "r":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 788
    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/OperatorReplay$InnerProducer;->getAndSet(J)J

    move-result-wide v0

    .line 790
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 792
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lrx/internal/operators/OperatorReplay$b;

    .line 1422
    iget-boolean v2, v3, Lrx/internal/operators/OperatorReplay$b;->e:Z

    if-nez v2, :cond_0

    .line 1425
    iget-object v4, v3, Lrx/internal/operators/OperatorReplay$b;->f:Llil;

    monitor-enter v4

    .line 1426
    :try_start_0
    iget-boolean v2, v3, Lrx/internal/operators/OperatorReplay$b;->e:Z

    if-eqz v2, :cond_2

    .line 1427
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    :cond_0
    :goto_0
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lrx/internal/operators/OperatorReplay$b;

    invoke-virtual {v2, p0}, Lrx/internal/operators/OperatorReplay$b;->b(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 799
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Llgy;

    .line 802
    :cond_1
    return-void

    .line 1429
    :cond_2
    :try_start_1
    iget-object v5, v3, Lrx/internal/operators/OperatorReplay$b;->f:Llil;

    .line 2094
    iget-object v6, v5, Llil;->e:[Ljava/lang/Object;

    .line 2095
    iget v7, v5, Llil;->b:I

    .line 2096
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Llil;->a(I)I

    move-result v2

    and-int/2addr v2, v7

    .line 2097
    aget-object v8, v6, v2

    .line 2098
    if-nez v8, :cond_5

    .line 1430
    :cond_3
    :goto_1
    iget-object v2, v3, Lrx/internal/operators/OperatorReplay$b;->f:Llil;

    .line 2200
    iget v2, v2, Llil;->c:I

    if-nez v2, :cond_7

    const/4 v2, 0x1

    .line 1430
    :goto_2
    if-eqz v2, :cond_4

    .line 1431
    sget-object v2, Lrx/internal/operators/OperatorReplay$b;->c:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    iput-object v2, v3, Lrx/internal/operators/OperatorReplay$b;->g:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 1433
    :cond_4
    iget-wide v6, v3, Lrx/internal/operators/OperatorReplay$b;->h:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v3, Lrx/internal/operators/OperatorReplay$b;->h:J

    .line 1434
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2101
    :cond_5
    :try_start_2
    invoke-virtual {v8, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2102
    invoke-virtual {v5, v2, v6, v7}, Llil;->a(I[Ljava/lang/Object;I)Z

    goto :goto_1

    .line 2105
    :cond_6
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v7

    .line 2106
    aget-object v8, v6, v2

    .line 2107
    if-eqz v8, :cond_3

    .line 2110
    invoke-virtual {v8, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2111
    invoke-virtual {v5, v2, v6, v7}, Llil;->a(I[Ljava/lang/Object;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2200
    :cond_7
    const/4 v2, 0x0

    goto :goto_2
.end method
