.class final Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;
.super Llgy;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferOverlap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap$BufferOverlapProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I

.field d:J

.field final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicLong;

.field g:J


# direct methods
.method public constructor <init>(Llgy;II)V
    .locals 2
    .param p2, "count"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-Ljava/util/List<TT;>;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 251
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->a:Llgy;

    .line 252
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->b:I

    .line 253
    iput p3, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->c:I

    .line 254
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->e:Ljava/util/ArrayDeque;

    .line 255
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 256
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->a(J)V

    .line 257
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;
    .param p1, "x1"    # J

    .prologue
    .line 237
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->a(J)V

    return-void
.end method

.method static synthetic b(Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;
    .param p1, "x1"    # J

    .prologue
    .line 237
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->a(J)V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 294
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    iget-wide v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->g:J

    .line 296
    .local v0, "p":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 298
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->a:Llgy;

    new-instance v3, Lrx/exceptions/MissingBackpressureException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "More produced than requested? "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 305
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->f:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 304
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->f:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->e:Ljava/util/ArrayDeque;

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->a:Llgy;

    invoke-static {v2, v3, v4}, Llhn;->a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Llgy;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 287
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 289
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 290
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;, "Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const-wide/16 v8, 0x1

    const-wide/16 v6, 0x0

    .line 261
    iget-wide v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->d:J

    .line 262
    .local v2, "i":J
    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 266
    .end local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    add-long/2addr v2, v8

    .line 267
    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->c:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 268
    iput-wide v6, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->d:J

    .line 273
    :goto_0
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 274
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    iput-wide v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->d:J

    goto :goto_0

    .line 277
    :cond_2
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 278
    .restart local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->b:I

    if-ne v4, v5, :cond_3

    .line 279
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 280
    iget-wide v4, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->g:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->g:J

    .line 281
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferOverlap;->a:Llgy;

    invoke-virtual {v4, v0}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 283
    :cond_3
    return-void
.end method
