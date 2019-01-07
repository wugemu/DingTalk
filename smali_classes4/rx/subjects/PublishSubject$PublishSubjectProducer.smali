.class final Lrx/subjects/PublishSubject$PublishSubjectProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "PublishSubject.java"

# interfaces
.implements Llgt;
.implements Llgu;
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/PublishSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSubjectProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Llgt",
        "<TT;>;",
        "Llgu;",
        "Llgz;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x59896c1df8e78b00L


# instance fields
.field final actual:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final parent:Lrx/subjects/PublishSubject$PublishSubjectState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject$PublishSubjectState",
            "<TT;>;"
        }
    .end annotation
.end field

.field produced:J


# direct methods
.method public constructor <init>(Lrx/subjects/PublishSubject$PublishSubjectState;Llgy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/PublishSubject$PublishSubjectState",
            "<TT;>;",
            "Llgy",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    .local p1, "parent":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    .local p2, "actual":Llgy;, "Llgy<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 265
    iput-object p1, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->parent:Lrx/subjects/PublishSubject$PublishSubjectState;

    .line 266
    iput-object p2, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->actual:Llgy;

    .line 267
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 287
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->get()J

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

.method public final onCompleted()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 321
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->actual:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V

    .line 324
    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 314
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->actual:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 317
    :cond_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 299
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->get()J

    move-result-wide v2

    .line 300
    .local v2, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 301
    iget-wide v0, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->produced:J

    .line 302
    .local v0, "p":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 303
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->produced:J

    .line 304
    iget-object v4, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->actual:Llgy;

    invoke-virtual {v4, p1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 310
    .end local v0    # "p":J
    :cond_0
    :goto_0
    return-void

    .line 306
    .restart local v0    # "p":J
    :cond_1
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->unsubscribe()V

    .line 307
    iget-object v4, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->actual:Llgy;

    new-instance v5, Lrx/exceptions/MissingBackpressureException;

    const-string/jumbo v6, "PublishSubject: could not emit value due to lack of requests"

    invoke-direct {v5, v6}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 271
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-static {p1, p2}, Llhn;->a(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 273
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->get()J

    move-result-wide v0

    .line 274
    .local v0, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 283
    .end local v0    # "r":J
    :cond_1
    :goto_0
    return-void

    .line 277
    .restart local v0    # "r":J
    :cond_2
    invoke-static {v0, v1, p1, p2}, Llhn;->b(JJ)J

    move-result-wide v2

    .line 278
    .local v2, "u":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    const-wide/high16 v2, -0x8000000000000000L

    .line 292
    invoke-virtual {p0, v2, v3}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->getAndSet(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->parent:Lrx/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0, p0}, Lrx/subjects/PublishSubject$PublishSubjectState;->remove(Lrx/subjects/PublishSubject$PublishSubjectProducer;)V

    .line 295
    :cond_0
    return-void
.end method
