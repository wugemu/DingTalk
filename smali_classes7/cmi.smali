.class public abstract Lcmi;
.super Liyq;
.source "RequestCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Liyq",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    .local p0, "this":Lcmi;, "Lcmi<TT;>;"
    invoke-direct {p0}, Liyq;-><init>()V

    .line 1014
    sget-object v0, Lcmh;->a:Lcmh;

    if-nez v0, :cond_0

    .line 1015
    new-instance v0, Lcmh;

    invoke-direct {v0}, Lcmh;-><init>()V

    sput-object v0, Lcmh;->a:Lcmh;

    .line 1017
    :cond_0
    sget-object v0, Lcmh;->a:Lcmh;

    .line 11
    invoke-virtual {p0, v0}, Lcmi;->addBeforeFiler(Liyt;)V

    .line 12
    return-void
.end method


# virtual methods
.method public caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "r"    # Lcom/laiwang/idl/service/ResultError;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 16
    .local p0, "this":Lcmi;, "Lcmi<TT;>;"
    invoke-super {p0, p1, p2}, Liyq;->caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    .line 17
    invoke-virtual {p0, p1, p2}, Lcmi;->handleCaught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method

.method protected caughtImpl(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "r"    # Lcom/laiwang/idl/service/ResultError;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 31
    .local p0, "this":Lcmi;, "Lcmi<TT;>;"
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p1, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    iget-object v1, p1, Lcom/laiwang/idl/service/ResultError;->reason:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lcmi;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1, p2}, Lcmi;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public handleCaught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "r"    # Lcom/laiwang/idl/service/ResultError;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 21
    .local p0, "this":Lcmi;, "Lcmi<TT;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcmi$1;

    invoke-direct {v1, p0, p1, p2}, Lcmi$1;-><init>(Lcmi;Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method

.method public abstract onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract onLoadSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 41
    .local p0, "this":Lcmi;, "Lcmi<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcmi$2;

    invoke-direct {v1, p0, p1}, Lcmi$2;-><init>(Lcmi;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method
