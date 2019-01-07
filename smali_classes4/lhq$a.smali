.class final Llhq$a;
.super Llgy;
.source "OnSubscribeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llhq;
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
.field final a:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method public constructor <init>(Llgy;Llhk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TR;>;",
            "Llhk",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Llhq$a;, "Llhq$a<TT;TR;>;"
    .local p1, "actual":Llgy;, "Llgy<-TR;>;"
    .local p2, "mapper":Llhk;, "Llhk<-TT;+TR;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 60
    iput-object p1, p0, Llhq$a;->a:Llgy;

    .line 61
    iput-object p2, p0, Llhq$a;->b:Llhk;

    .line 62
    return-void
.end method


# virtual methods
.method public final a(Llgu;)V
    .locals 1
    .param p1, "p"    # Llgu;

    .prologue
    .line 102
    .local p0, "this":Llhq$a;, "Llhq$a<TT;TR;>;"
    iget-object v0, p0, Llhq$a;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->a(Llgu;)V

    .line 103
    return-void
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Llhq$a;, "Llhq$a<TT;TR;>;"
    iget-boolean v0, p0, Llhq$a;->c:Z

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Llhq$a;->a:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    .local p0, "this":Llhq$a;, "Llhq$a<TT;TR;>;"
    iget-boolean v0, p0, Llhq$a;->c:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p1}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llhq$a;->c:Z

    .line 88
    iget-object v0, p0, Llhq$a;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V

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
    .line 69
    .local p0, "this":Llhq$a;, "Llhq$a<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Llhq$a;->b:Llhk;

    invoke-interface {v2, p1}, Llhk;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    .local v1, "result":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Llhq$a;->a:Llgy;

    invoke-virtual {v2, v1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 78
    .end local v1    # "result":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 72
    invoke-virtual {p0}, Llhq$a;->unsubscribe()V

    .line 73
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Llhq$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
