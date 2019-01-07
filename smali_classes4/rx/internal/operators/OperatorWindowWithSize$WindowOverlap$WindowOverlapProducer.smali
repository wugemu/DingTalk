.class final Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Llgu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowOverlapProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x40322bd5c2bb9bacL


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;

    .prologue
    .line 474
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>.WindowOverlapProducer;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public final request(J)V
    .locals 11
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>.WindowOverlapProducer;"
    const-wide/16 v6, 0x0

    .line 480
    cmp-long v1, p1, v6

    if-gez v1, :cond_0

    .line 481
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "n >= 0 required but it was "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 483
    :cond_0
    cmp-long v1, p1, v6

    if-eqz v1, :cond_1

    .line 485
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;

    .line 487
    .local v0, "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;->get()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v1, v6}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    iget v1, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->c:I

    int-to-long v6, v1

    const-wide/16 v8, 0x1

    sub-long v8, p1, v8

    invoke-static {v6, v7, v8, v9}, Llhn;->a(JJ)J

    move-result-wide v2

    .line 489
    .local v2, "u":J
    iget v1, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->b:I

    int-to-long v6, v1

    invoke-static {v2, v3, v6, v7}, Llhn;->b(JJ)J

    move-result-wide v4

    .line 491
    .local v4, "v":J
    invoke-static {v0, v4, v5}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->a(Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;J)V

    .line 497
    .end local v4    # "v":J
    :goto_0
    iget-object v1, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v1, p1, p2}, Llhn;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 498
    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->b()V

    .line 500
    .end local v0    # "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    .end local v2    # "u":J
    :cond_1
    return-void

    .line 493
    .restart local v0    # "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    :cond_2
    iget v1, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->c:I

    int-to-long v6, v1

    invoke-static {v6, v7, p1, p2}, Llhn;->a(JJ)J

    move-result-wide v2

    .line 494
    .restart local v2    # "u":J
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;

    invoke-static {v1, v2, v3}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;->b(Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap;J)V

    goto :goto_0
.end method
