.class public abstract Lcom/alibaba/wukong/sync/SyncRequestHandler;
.super Liyq;
.source "SyncRequestHandler.java"


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


# instance fields
.field protected mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncRequestHandler;, "Lcom/alibaba/wukong/sync/SyncRequestHandler<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/sync/SyncRequestHandler;-><init>(Ljava/util/Map;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncRequestHandler;, "Lcom/alibaba/wukong/sync/SyncRequestHandler<TT;>;"
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Liyq;-><init>()V

    .line 1017
    sget-object v0, Lifp$a;->a:Lifp;

    .line 33
    invoke-virtual {p0, v0}, Lcom/alibaba/wukong/sync/SyncRequestHandler;->addBeforeFiler(Liyt;)V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/wukong/sync/SyncRequestHandler;->mStartTime:J

    .line 35
    iput-object p1, p0, Lcom/alibaba/wukong/sync/SyncRequestHandler;->mExtras:Ljava/util/Map;

    .line 36
    return-void
.end method


# virtual methods
.method public final caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "r"    # Lcom/laiwang/idl/service/ResultError;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncRequestHandler;, "Lcom/alibaba/wukong/sync/SyncRequestHandler<TT;>;"
    if-eqz p1, :cond_2

    .line 41
    iget-object v0, p1, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    .line 42
    .local v0, "code":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/laiwang/protocol/core/Constants$Status;->REQUEST_TIMEOUT:Lcom/laiwang/protocol/core/Constants$Status;

    iget v5, v5, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/laiwang/protocol/core/Constants$Status;->NETWORK_BROKEN:Lcom/laiwang/protocol/core/Constants$Status;

    iget v5, v5, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/wukong/sync/SyncRequestHandler;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/laiwang/protocol/core/Request$Builder;->build()Lcom/laiwang/protocol/core/Request;

    move-result-object v2

    .line 45
    .local v2, "request":Lcom/laiwang/protocol/core/Request;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/laiwang/protocol/core/Request;->payload()[B

    move-result-object v4

    invoke-static {v4}, Lifr;->a([B)Ljava/lang/String;

    move-result-object v3

    .local v3, "tag":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 46
    new-instance v1, Lift;

    invoke-direct {v1}, Lift;-><init>()V

    .line 47
    .local v1, "object":Lift;
    invoke-virtual {v2}, Lcom/laiwang/protocol/core/Request;->url()Ljava/lang/String;

    move-result-object v4

    .line 1033
    iput-object v4, v1, Lift;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {v2}, Lcom/laiwang/protocol/core/Request;->payload()[B

    move-result-object v4

    .line 1037
    iput-object v4, v1, Lift;->b:[B

    .line 1041
    iput-object v3, v1, Lift;->c:Ljava/lang/String;

    .line 50
    invoke-virtual {v2}, Lcom/laiwang/protocol/core/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    .line 1045
    iput-object v4, v1, Lift;->d:Ljava/util/Map;

    .line 51
    iget-wide v4, p0, Lcom/alibaba/wukong/sync/SyncRequestHandler;->mStartTime:J

    .line 1049
    iput-wide v4, v1, Lift;->e:J

    .line 52
    iget-object v4, p0, Lcom/alibaba/wukong/sync/SyncRequestHandler;->mExtras:Ljava/util/Map;

    .line 1053
    iput-object v4, v1, Lift;->f:Ljava/util/Map;

    .line 53
    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->a()Lcom/alibaba/wukong/sync/upstream/g;

    new-instance v4, Lcom/alibaba/wukong/sync/upstream/g$c;

    invoke-direct {v4, v1}, Lcom/alibaba/wukong/sync/upstream/g$c;-><init>(Lift;)V

    invoke-static {v4}, Lcom/alibaba/wukong/sync/upstream/g;->a(Lcom/alibaba/wukong/sync/upstream/g$c;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    invoke-static {}, Lcom/alibaba/wukong/sync/upstream/g;->a()Lcom/alibaba/wukong/sync/upstream/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/sync/upstream/g;->b()V

    .line 58
    .end local v1    # "object":Lift;
    .end local v2    # "request":Lcom/laiwang/protocol/core/Request;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    iget-object v4, p1, Lcom/laiwang/idl/service/ResultError;->code:Ljava/lang/String;

    iget-object v5, p1, Lcom/laiwang/idl/service/ResultError;->reason:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/wukong/sync/SyncRequestHandler;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .end local v0    # "code":Ljava/lang/String;
    :goto_0
    return-void

    .line 60
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/laiwang/protocol/core/Constants$Status;->UNKNOWN:Lcom/laiwang/protocol/core/Constants$Status;

    iget v5, v5, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "unknown error"

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/wukong/sync/SyncRequestHandler;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 64
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncRequestHandler;, "Lcom/alibaba/wukong/sync/SyncRequestHandler<TT;>;"
    return-void
.end method
