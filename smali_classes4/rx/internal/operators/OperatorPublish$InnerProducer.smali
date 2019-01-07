.class final Lrx/internal/operators/OperatorPublish$InnerProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorPublish.java"

# interfaces
.implements Llgu;
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorPublish;
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
.field static final NOT_REQUESTED:J = -0x4000000000000000L

.field static final UNSUBSCRIBED:J = -0x8000000000000000L

.field private static final serialVersionUID:J = -0x3dcf6c3b2e70d8baL


# instance fields
.field final child:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final parent:Lrx/internal/operators/OperatorPublish$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorPublish$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorPublish$a;Llgy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorPublish$a",
            "<TT;>;",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 671
    .local p0, "this":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .local p1, "parent":Lrx/internal/operators/OperatorPublish$a;, "Lrx/internal/operators/OperatorPublish$a<TT;>;"
    .local p2, "child":Llgy;, "Llgy<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 672
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$InnerProducer;->parent:Lrx/internal/operators/OperatorPublish$a;

    .line 673
    iput-object p2, p0, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Llgy;

    .line 674
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorPublish$InnerProducer;->lazySet(J)V

    .line 675
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 762
    .local p0, "this":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

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
    .local p0, "this":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    const-wide/16 v8, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    .line 730
    cmp-long v6, p1, v8

    if-gtz v6, :cond_0

    .line 731
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Cant produce zero or less"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 735
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v0

    .line 738
    .local v0, "r":J
    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    .line 739
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Produced without request"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 742
    :cond_1
    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    move-wide v2, v4

    .line 754
    :goto_0
    return-wide v2

    .line 746
    :cond_2
    sub-long v2, v0, p1

    .line 748
    .local v2, "u":J
    cmp-long v6, v2, v8

    if-gez v6, :cond_3

    .line 749
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

    .line 752
    :cond_3
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorPublish$InnerProducer;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method public final request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    const-wide/16 v6, 0x0

    .line 680
    cmp-long v4, p1, v6

    if-gez v4, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v0

    .line 690
    .local v0, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 694
    cmp-long v4, v0, v6

    if-ltz v4, :cond_2

    cmp-long v4, p1, v6

    if-eqz v4, :cond_0

    .line 699
    :cond_2
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    cmp-long v4, v0, v4

    if-nez v4, :cond_4

    .line 701
    move-wide v2, p1

    .line 712
    .local v2, "u":J
    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorPublish$InnerProducer;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 715
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish$InnerProducer;->parent:Lrx/internal/operators/OperatorPublish$a;

    invoke-virtual {v4}, Lrx/internal/operators/OperatorPublish$a;->b()V

    goto :goto_0

    .line 704
    .end local v2    # "u":J
    :cond_4
    add-long v2, v0, p1

    .line 706
    .restart local v2    # "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_3

    .line 708
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_1
.end method

.method public final unsubscribe()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    const-wide/high16 v6, -0x8000000000000000L

    const/4 v5, 0x0

    .line 766
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v0

    .line 768
    .local v0, "r":J
    cmp-long v2, v0, v6

    if-eqz v2, :cond_1

    .line 773
    invoke-virtual {p0, v6, v7}, Lrx/internal/operators/OperatorPublish$InnerProducer;->getAndSet(J)J

    move-result-wide v0

    .line 775
    cmp-long v2, v0, v6

    if-eqz v2, :cond_1

    .line 777
    iget-object v6, p0, Lrx/internal/operators/OperatorPublish$InnerProducer;->parent:Lrx/internal/operators/OperatorPublish$a;

    .line 1350
    :goto_0
    iget-object v2, v6, Lrx/internal/operators/OperatorPublish$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 1352
    sget-object v3, Lrx/internal/operators/OperatorPublish$a;->d:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    if-eq v2, v3, :cond_0

    sget-object v3, Lrx/internal/operators/OperatorPublish$a;->e:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    if-ne v2, v3, :cond_2

    .line 782
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$InnerProducer;->parent:Lrx/internal/operators/OperatorPublish$a;

    invoke-virtual {v2}, Lrx/internal/operators/OperatorPublish$a;->b()V

    .line 785
    :cond_1
    return-void

    .line 1357
    :cond_2
    const/4 v4, -0x1

    .line 1358
    array-length v7, v2

    move v3, v5

    .line 1359
    :goto_1
    if-ge v3, v7, :cond_3

    .line 1360
    aget-object v8, v2, v3

    invoke-virtual {v8, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v4, v3

    .line 1366
    :cond_3
    if-ltz v4, :cond_0

    .line 1373
    const/4 v3, 0x1

    if-ne v7, v3, :cond_5

    .line 1374
    sget-object v3, Lrx/internal/operators/OperatorPublish$a;->d:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 1384
    :goto_2
    iget-object v4, v6, Lrx/internal/operators/OperatorPublish$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1359
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1377
    :cond_5
    add-int/lit8 v3, v7, -0x1

    new-array v3, v3, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 1379
    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1381
    add-int/lit8 v8, v4, 0x1

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v2, v8, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method
