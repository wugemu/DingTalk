.class final Lrx/internal/operators/OnSubscribeAmb$a;
.super Llgy;
.source "OnSubscribeAmb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
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
.field private final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Lrx/internal/operators/OnSubscribeAmb$Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeAmb$Selection",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method constructor <init>(JLlgy;Lrx/internal/operators/OnSubscribeAmb$Selection;)V
    .locals 2
    .param p1, "requested"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Llgy",
            "<-TT;>;",
            "Lrx/internal/operators/OnSubscribeAmb$Selection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$a;, "Lrx/internal/operators/OnSubscribeAmb$a<TT;>;"
    .local p3, "subscriber":Llgy;, "Llgy<-TT;>;"
    .local p4, "selection":Lrx/internal/operators/OnSubscribeAmb$Selection;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 285
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeAmb$a;->a:Llgy;

    .line 286
    iput-object p4, p0, Lrx/internal/operators/OnSubscribeAmb$a;->b:Lrx/internal/operators/OnSubscribeAmb$Selection;

    .line 288
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeAmb$a;->a(J)V

    .line 289
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/OnSubscribeAmb$a;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeAmb$a;
    .param p1, "x1"    # J

    .prologue
    .line 278
    .line 1292
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$a;->a(J)V

    .line 278
    return-void
.end method

.method private b()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$a;, "Lrx/internal/operators/OnSubscribeAmb$a<TT;>;"
    const/4 v0, 0x1

    .line 317
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeAmb$a;->c:Z

    if-eqz v1, :cond_0

    .line 332
    :goto_0
    return v0

    .line 320
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$a;->b:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-virtual {v1}, Lrx/internal/operators/OnSubscribeAmb$Selection;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 322
    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeAmb$a;->c:Z

    goto :goto_0

    .line 325
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$a;->b:Lrx/internal/operators/OnSubscribeAmb$Selection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lrx/internal/operators/OnSubscribeAmb$Selection;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$a;->b:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-virtual {v1, p0}, Lrx/internal/operators/OnSubscribeAmb$Selection;->unsubscribeOthers(Lrx/internal/operators/OnSubscribeAmb$a;)V

    .line 327
    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeAmb$a;->c:Z

    goto :goto_0

    .line 331
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$a;->b:Lrx/internal/operators/OnSubscribeAmb$Selection;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeAmb$Selection;->unsubscribeLosers()V

    .line 332
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 304
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$a;, "Lrx/internal/operators/OnSubscribeAmb$a<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OnSubscribeAmb$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$a;->a:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V

    .line 307
    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 311
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$a;, "Lrx/internal/operators/OnSubscribeAmb$a<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OnSubscribeAmb$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$a;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 314
    :cond_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$a;, "Lrx/internal/operators/OnSubscribeAmb$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/internal/operators/OnSubscribeAmb$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAmb$a;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 300
    :cond_0
    return-void
.end method
