.class public final Lrx/internal/producers/SingleProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SingleProducer.java"

# interfaces
.implements Llgu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Llgu;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2e8a53b866dafe2cL


# instance fields
.field final child:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgy;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/producers/SingleProducer;, "Lrx/internal/producers/SingleProducer<TT;>;"
    .local p1, "child":Llgy;, "Llgy<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 41
    iput-object p1, p0, Lrx/internal/producers/SingleProducer;->child:Llgy;

    .line 42
    iput-object p2, p0, Lrx/internal/producers/SingleProducer;->value:Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public final request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/producers/SingleProducer;, "Lrx/internal/producers/SingleProducer<TT;>;"
    const-wide/16 v4, 0x0

    .line 47
    cmp-long v3, p1, v4

    if-gez v3, :cond_0

    .line 48
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "n >= 0 required"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    :cond_0
    cmp-long v3, p1, v4

    if-nez v3, :cond_2

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lrx/internal/producers/SingleProducer;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    iget-object v0, p0, Lrx/internal/producers/SingleProducer;->child:Llgy;

    .line 59
    .local v0, "c":Llgy;, "Llgy<-TT;>;"
    invoke-virtual {v0}, Llgy;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    iget-object v2, p0, Lrx/internal/producers/SingleProducer;->value:Ljava/lang/Object;

    .line 65
    .local v2, "v":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {v0, v2}, Llgy;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    invoke-virtual {v0}, Llgy;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    invoke-virtual {v0}, Llgy;->onCompleted()V

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0, v2}, Llhe;->a(Ljava/lang/Throwable;Llgt;Ljava/lang/Object;)V

    goto :goto_0
.end method
