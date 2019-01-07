.class final Lrx/internal/operators/OnSubscribeCombineLatest$a;
.super Llgy;
.source "OnSubscribeCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field final b:I

.field c:Z


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;I)V
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator",
            "<TT;TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$a;, "Lrx/internal/operators/OnSubscribeCombineLatest$a<TT;TR;>;"
    .local p1, "parent":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 365
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$a;->a:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    .line 366
    iput p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$a;->b:I

    .line 367
    iget v0, p1, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->bufferSize:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeCombineLatest$a;->a(J)V

    .line 368
    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 2
    .param p1, "n"    # J

    .prologue
    .line 399
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$a;, "Lrx/internal/operators/OnSubscribeCombineLatest$a<TT;TR;>;"
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeCombineLatest$a;->a(J)V

    .line 400
    return-void
.end method

.method public final onCompleted()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 391
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$a;, "Lrx/internal/operators/OnSubscribeCombineLatest$a<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$a;->c:Z

    if-eqz v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$a;->c:Z

    .line 395
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$a;->a:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    const/4 v1, 0x0

    iget v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$a;->b:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combine(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 380
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$a;, "Lrx/internal/operators/OnSubscribeCombineLatest$a<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$a;->c:Z

    if-eqz v0, :cond_0

    .line 381
    invoke-static {p1}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$a;->a:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->onError(Ljava/lang/Throwable;)V

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$a;->c:Z

    .line 386
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$a;->a:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    const/4 v1, 0x0

    iget v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$a;->b:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combine(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 372
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$a;, "Lrx/internal/operators/OnSubscribeCombineLatest$a<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$a;->c:Z

    if-eqz v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$a;->a:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$a;->b:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combine(Ljava/lang/Object;I)V

    goto :goto_0
.end method
