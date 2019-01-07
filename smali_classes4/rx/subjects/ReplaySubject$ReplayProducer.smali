.class final Lrx/subjects/ReplaySubject$ReplayProducer;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ReplaySubject.java"

# interfaces
.implements Llgu;
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Llgu;",
        "Llgz;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4579a11aac8dacd7L


# instance fields
.field final actual:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field index:I

.field node:Ljava/lang/Object;

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final state:Lrx/subjects/ReplaySubject$ReplayState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplayState",
            "<TT;>;"
        }
    .end annotation
.end field

.field tailIndex:I


# direct methods
.method public constructor <init>(Llgy;Lrx/subjects/ReplaySubject$ReplayState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;",
            "Lrx/subjects/ReplaySubject$ReplayState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1248
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    .local p1, "actual":Llgy;, "Llgy<-TT;>;"
    .local p2, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 1249
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Llgy;

    .line 1250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1251
    iput-object p2, p0, Lrx/subjects/ReplaySubject$ReplayProducer;->state:Lrx/subjects/ReplaySubject$ReplayState;

    .line 1252
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 1261
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Llgy;

    invoke-virtual {v0}, Llgy;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    const-wide/16 v2, 0x0

    .line 1266
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 1267
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Llhn;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 1268
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayProducer;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$a;

    invoke-interface {v0, p0}, Lrx/subjects/ReplaySubject$a;->a(Lrx/subjects/ReplaySubject$ReplayProducer;)V

    .line 1272
    :cond_0
    return-void

    .line 1269
    :cond_1
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 1270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "n >= required but it was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 1256
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayProducer;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0, p0}, Lrx/subjects/ReplaySubject$ReplayState;->remove(Lrx/subjects/ReplaySubject$ReplayProducer;)V

    .line 1257
    return-void
.end method
