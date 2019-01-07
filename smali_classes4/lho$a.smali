.class final Llho$a;
.super Llgy;
.source "OnSubscribeDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llho;
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

.field private final b:Llgt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgt",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method constructor <init>(Llgy;Llgt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;",
            "Llgt",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Llho$a;, "Llho$a<TT;>;"
    .local p1, "subscriber":Llgy;, "Llgy<-TT;>;"
    .local p2, "doOnEachObserver":Llgt;, "Llgt<-TT;>;"
    invoke-direct {p0, p1}, Llgy;-><init>(Llgy;)V

    .line 53
    iput-object p1, p0, Llho$a;->a:Llgy;

    .line 54
    iput-object p2, p0, Llho$a;->b:Llgt;

    .line 55
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 59
    .local p0, "this":Llho$a;, "Llho$a<TT;>;"
    iget-boolean v1, p0, Llho$a;->c:Z

    if-eqz v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object v1, p0, Llho$a;->b:Llgt;

    invoke-interface {v1}, Llgt;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Llho$a;->c:Z

    .line 70
    iget-object v1, p0, Llho$a;->a:Llgy;

    invoke-virtual {v1}, Llgy;->onCompleted()V

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Llhe;->a(Ljava/lang/Throwable;Llgt;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Llho$a;, "Llho$a<TT;>;"
    const/4 v5, 0x1

    .line 75
    iget-boolean v1, p0, Llho$a;->c:Z

    if-eqz v1, :cond_0

    .line 76
    invoke-static {p1}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-boolean v5, p0, Llho$a;->c:Z

    .line 81
    :try_start_0
    iget-object v1, p0, Llho$a;->b:Llgt;

    invoke-interface {v1, p1}, Llgt;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    iget-object v1, p0, Llho$a;->a:Llgy;

    invoke-virtual {v1, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e2":Ljava/lang/Throwable;
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 84
    iget-object v1, p0, Llho$a;->a:Llgy;

    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 92
    .local p0, "this":Llho$a;, "Llho$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Llho$a;->c:Z

    if-eqz v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-object v1, p0, Llho$a;->b:Llgt;

    invoke-interface {v1, p1}, Llgt;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    iget-object v1, p0, Llho$a;->a:Llgy;

    invoke-virtual {v1, p1}, Llgy;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Llhe;->a(Ljava/lang/Throwable;Llgt;Ljava/lang/Object;)V

    goto :goto_0
.end method
