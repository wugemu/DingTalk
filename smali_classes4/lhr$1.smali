.class final Llhr$1;
.super Llgy;
.source "OperatorAny.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llhr;->a(Llgy;)Llgy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Lrx/internal/producers/SingleDelayedProducer;

.field final synthetic d:Llgy;

.field final synthetic e:Llhr;


# direct methods
.method constructor <init>(Llhr;Lrx/internal/producers/SingleDelayedProducer;Llgy;)V
    .locals 0
    .param p1, "this$0"    # Llhr;

    .prologue
    .line 43
    .local p0, "this":Llhr$1;, "Llhr$1;"
    iput-object p1, p0, Llhr$1;->e:Llhr;

    iput-object p2, p0, Llhr$1;->c:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Llhr$1;->d:Llgy;

    invoke-direct {p0}, Llgy;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 81
    .local p0, "this":Llhr$1;, "Llhr$1;"
    iget-boolean v0, p0, Llhr$1;->b:Z

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Llhr$1;->b:Z

    .line 83
    iget-boolean v0, p0, Llhr$1;->a:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Llhr$1;->c:Lrx/internal/producers/SingleDelayedProducer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Llhr$1;->c:Lrx/internal/producers/SingleDelayedProducer;

    iget-object v1, p0, Llhr$1;->e:Llhr;

    iget-boolean v1, v1, Llhr;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    .local p0, "this":Llhr$1;, "Llhr$1;"
    iget-boolean v0, p0, Llhr$1;->b:Z

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Llhr$1;->b:Z

    .line 73
    iget-object v0, p0, Llhr$1;->d:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {p1}, Llkm;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Llhr$1;, "Llhr$1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    .line 49
    iget-boolean v2, p0, Llhr$1;->b:Z

    if-eqz v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iput-boolean v3, p0, Llhr$1;->a:Z

    .line 55
    :try_start_0
    iget-object v2, p0, Llhr$1;->e:Llhr;

    iget-object v2, v2, Llhr;->a:Llhk;

    invoke-interface {v2, p1}, Llhk;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 61
    iput-boolean v3, p0, Llhr$1;->b:Z

    .line 62
    iget-object v4, p0, Llhr$1;->c:Lrx/internal/producers/SingleDelayedProducer;

    iget-object v2, p0, Llhr$1;->e:Llhr;

    iget-boolean v2, v2, Llhr;->b:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v2}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Llhr$1;->unsubscribe()V

    goto :goto_0

    .line 56
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Llhe;->a(Ljava/lang/Throwable;Llgt;Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "result":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
