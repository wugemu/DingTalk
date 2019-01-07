.class public abstract Lhzy;
.super Liyq;
.source "RPCRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Liyq",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static mMainHandler:Landroid/os/Handler;


# instance fields
.field protected mListener:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<TV;>;"
        }
    .end annotation
.end field

.field private mLocalTimeout:Z

.field private mRunnable:Ljava/lang/Runnable;

.field protected mid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lhzy;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lhzy;, "Lhzy<TT;TV;>;"
    .local p1, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<TV;>;"
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;J)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/Callback;J)V
    .locals 2
    .param p2, "localTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lhzy;, "Lhzy<TT;TV;>;"
    .local p1, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<TV;>;"
    invoke-direct {p0}, Liyq;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhzy;->mLocalTimeout:Z

    .line 40
    iput-object p1, p0, Lhzy;->mListener:Lcom/alibaba/wukong/Callback;

    .line 1016
    sget-object v0, Lhzz$a;->a:Lhzz;

    .line 41
    invoke-virtual {p0, v0}, Lhzy;->addBeforeFiler(Liyt;)V

    .line 42
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhzy;->mLocalTimeout:Z

    .line 44
    new-instance v0, Lhzy$1;

    invoke-direct {v0, p0, p2, p3}, Lhzy$1;-><init>(Lhzy;J)V

    invoke-virtual {p0, v0}, Lhzy;->addBeforeFiler(Liyt;)V

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lhzy;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lhzy;

    .prologue
    .line 25
    iget-object v0, p0, Lhzy;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lhzy;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lhzy;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 25
    iput-object p1, p0, Lhzy;->mRunnable:Ljava/lang/Runnable;

    return-object p1
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
    .line 83
    .local p0, "this":Lhzy;, "Lhzy<TT;TV;>;"
    if-nez p1, :cond_0

    const-string/jumbo v0, "101001"

    .line 84
    .local v0, "code":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_2

    if-nez p2, :cond_1

    const-string/jumbo v1, "UNKNOWN_ERR"

    .line 85
    .local v1, "reason":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lhzy;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 86
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

    .line 87
    invoke-virtual {p0, v0, v1}, Lhzy;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void

    .line 83
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "reason":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    goto :goto_0

    .line 84
    .restart local v0    # "code":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/laiwang/idl/service/ResultError;->reason:Ljava/lang/String;

    goto :goto_1
.end method

.method public abstract convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation
.end method

.method public getMid()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 93
    .local p0, "this":Lhzy;, "Lhzy<TT;TV;>;"
    iget-object v0, p0, Lhzy;->mid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/laiwang/protocol/core/MessageID;->genMid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhzy;->mid:Ljava/lang/String;

    .line 95
    const-string/jumbo v0, "mid"

    iget-object v1, p0, Lhzy;->mid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lhzy;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lhzy;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    .local p0, "this":Lhzy;, "Lhzy<TT;TV;>;"
    invoke-virtual {p0}, Lhzy;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 102
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Request$Builder;->url()Ljava/lang/String;

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 61
    .local p0, "this":Lhzy;, "Lhzy<TT;TV;>;"
    iget-boolean v0, p0, Lhzy;->mLocalTimeout:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lhzy;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhzy;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lhzy;->mListener:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lhzy;->mListener:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    return-void
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
    .line 71
    .local p0, "this":Lhzy;, "Lhzy<TT;TV;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lhzy;->mLocalTimeout:Z

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lhzy;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lhzy;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lhzy;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 75
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

    .line 76
    iget-object v1, p0, Lhzy;->mListener:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lhzy;->mListener:Lcom/alibaba/wukong/Callback;

    invoke-virtual {p0, p1}, Lhzy;->convertDo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 79
    :cond_1
    return-void
.end method
