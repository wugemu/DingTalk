.class public abstract Lifm;
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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mCallback:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMainThread:Z

.field protected mMid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lifm;, "Lifm<TT;>;"
    .local p1, "cb":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lifm;-><init>(Lcom/alibaba/wukong/Callback;Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/Callback;Z)V
    .locals 1
    .param p2, "mainThread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lifm;, "Lifm<TT;>;"
    .local p1, "cb":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<TT;>;"
    invoke-direct {p0}, Liyq;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lifm;->mMainThread:Z

    .line 1016
    sget-object v0, Lhzz$a;->a:Lhzz;

    .line 28
    invoke-virtual {p0, v0}, Lifm;->addBeforeFiler(Liyt;)V

    .line 29
    iput-object p1, p0, Lifm;->mCallback:Lcom/alibaba/wukong/Callback;

    .line 30
    iput-boolean p2, p0, Lifm;->mMainThread:Z

    .line 31
    return-void
.end method


# virtual methods
.method public caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "r"    # Lcom/laiwang/idl/service/ResultError;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 48
    .local p0, "this":Lifm;, "Lifm<TT;>;"
    if-nez p1, :cond_0

    const-string/jumbo v0, "101001"

    .line 49
    .local v0, "code":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_2

    if-nez p2, :cond_1

    const-string/jumbo v1, "UNKNOWN_ERR"

    .line 50
    .local v1, "reason":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lifm;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "[TAG] Rpc err"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[RPC] err "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "base"

    invoke-static {v3, v4, v5}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v0, v1}, Lifm;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 48
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "reason":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    goto :goto_0

    .line 49
    .restart local v0    # "code":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/laiwang/idl/service/ResultError;->reason:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMid()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 66
    .local p0, "this":Lifm;, "Lifm<TT;>;"
    iget-object v0, p0, Lifm;->mMid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/laiwang/protocol/core/MessageID;->genMid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lifm;->mMid:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "mid"

    iget-object v1, p0, Lifm;->mMid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lifm;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lifm;->mMid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 74
    .local p0, "this":Lifm;, "Lifm<TT;>;"
    invoke-virtual {p0}, Lifm;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 75
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Request$Builder;->url()Ljava/lang/String;

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 56
    .local p0, "this":Lifm;, "Lifm<TT;>;"
    iget-boolean v0, p0, Lifm;->mMainThread:Z

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lifm;->mCallback:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, p1, p2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lifm;->mCallback:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lifm;->mCallback:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 35
    .local p0, "this":Lifm;, "Lifm<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lifm;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "[TAG] Rpc succ"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[RPC] succ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "base"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-boolean v1, p0, Lifm;->mMainThread:Z

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lifm;->mCallback:Lcom/alibaba/wukong/Callback;

    invoke-static {v1, p1}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v1, p0, Lifm;->mCallback:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lifm;->mCallback:Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
