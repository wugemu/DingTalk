.class final Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Llgu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BufferOverlapProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x37bb5316f95bb99bL


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;

    .prologue
    .line 311
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>.BufferOverlapProducer;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public final request(J)V
    .locals 21
    .param p1, "n"    # J

    .prologue
    .line 318
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>.BufferOverlapProducer;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->this$0:Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;

    .line 319
    .local v4, "parent":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    iget-object v5, v4, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->f:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v10, v4, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->e:Ljava/util/ArrayDeque;

    iget-object v11, v4, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->a:Llgy;

    .line 2055
    sget-object v12, Lrx/internal/util/UtilityFunctions$Identity;->INSTANCE:Lrx/internal/util/UtilityFunctions$Identity;

    .line 2219
    const-wide/16 v14, 0x0

    cmp-long v13, p1, v14

    if-gez v13, :cond_0

    .line 2220
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "n >= 0 required but it was "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2222
    :cond_0
    const-wide/16 v14, 0x0

    cmp-long v13, p1, v14

    if-nez v13, :cond_3

    .line 2223
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    const-wide/high16 v12, -0x8000000000000000L

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_2

    const/4 v5, 0x1

    .line 319
    :goto_0
    if-eqz v5, :cond_1

    .line 320
    const-wide/16 v10, 0x0

    cmp-long v5, p1, v10

    if-eqz v5, :cond_1

    .line 321
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->get()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 322
    iget v5, v4, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->c:I

    int-to-long v10, v5

    const-wide/16 v12, 0x1

    sub-long v12, p1, v12

    invoke-static {v10, v11, v12, v13}, Llhn;->a(JJ)J

    move-result-wide v6

    .line 323
    .local v6, "u":J
    iget v5, v4, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->b:I

    int-to-long v10, v5

    invoke-static {v6, v7, v10, v11}, Llhn;->b(JJ)J

    move-result-wide v8

    .line 325
    .local v8, "v":J
    invoke-static {v4, v8, v9}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->a(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;J)V

    .line 332
    .end local v6    # "u":J
    .end local v8    # "v":J
    :cond_1
    :goto_1
    return-void

    .line 2223
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 2227
    :cond_3
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    .line 2230
    const-wide/high16 v16, -0x8000000000000000L

    and-long v16, v16, v14

    .line 2232
    const-wide v18, 0x7fffffffffffffffL

    and-long v18, v18, v14

    .line 2236
    move-wide/from16 v0, v18

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Llhn;->b(JJ)J

    move-result-wide v18

    .line 2239
    or-long v18, v18, v16

    .line 2241
    move-wide/from16 v0, v18

    invoke-virtual {v5, v14, v15, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2244
    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v13, v14, v18

    if-nez v13, :cond_4

    .line 2245
    invoke-static {v5, v10, v11, v12}, Llhn;->a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Llgy;Llhk;)V

    .line 2246
    const/4 v5, 0x0

    goto :goto_0

    .line 2249
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v5, v16, v10

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 327
    :cond_6
    iget v5, v4, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->c:I

    int-to-long v10, v5

    move-wide/from16 v0, p1

    invoke-static {v10, v11, v0, v1}, Llhn;->a(JJ)J

    move-result-wide v6

    .line 328
    .restart local v6    # "u":J
    invoke-static {v4, v6, v7}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->b(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;J)V

    goto :goto_1
.end method
