.class public Lcom/alipay/android/phone/mrpc/core/HttpCaller;
.super Lcom/alipay/android/phone/mrpc/core/AbstractRpcCaller;
.source "HttpCaller.java"


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"


# instance fields
.field private mConfig:Lcom/alipay/android/phone/mrpc/core/Config;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/Config;Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)V
    .locals 7
    .param p1, "config"    # Lcom/alipay/android/phone/mrpc/core/Config;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "id"    # I
    .param p4, "op"    # Ljava/lang/String;
    .param p5, "reqBizDatas"    # [B
    .param p6, "resetCookie"    # Z

    .prologue
    .line 37
    const-string/jumbo v5, "application/x-www-form-urlencoded"

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/mrpc/core/AbstractRpcCaller;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Z)V

    .line 38
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpCaller;->mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

    .line 39
    return-void
.end method

.method private addHeader(Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;)V
    .locals 7
    .param p1, "request"    # Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v5, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 145
    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/HttpCaller;->mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

    invoke-interface {v4}, Lcom/alipay/android/phone/mrpc/core/Config;->getRpcParams()Lcom/alipay/android/phone/mrpc/core/RpcParams;

    move-result-object v3

    .line 146
    .local v3, "rpcParams":Lcom/alipay/android/phone/mrpc/core/RpcParams;
    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->getHeaders()Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 149
    .local v0, "header":Lorg/apache/http/Header;
    invoke-virtual {p1, v0}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 152
    .end local v0    # "header":Lorg/apache/http/Header;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private getTransport()Lcom/alipay/android/phone/mrpc/core/Transport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpCaller;->mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

    invoke-interface {v0}, Lcom/alipay/android/phone/mrpc/core/Config;->getTransport()Lcom/alipay/android/phone/mrpc/core/Transport;

    move-result-object v0

    return-object v0
.end method

.method private transferCode(I)I
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 102
    move v0, p1

    .line 103
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 133
    :goto_0
    return v0

    .line 105
    :pswitch_0
    const/4 v0, 0x4

    .line 106
    goto :goto_0

    .line 108
    :pswitch_1
    const/4 v0, 0x7

    .line 109
    goto :goto_0

    .line 111
    :pswitch_2
    const/16 v0, 0x8

    .line 112
    goto :goto_0

    .line 114
    :pswitch_3
    const/4 v0, 0x6

    .line 115
    goto :goto_0

    .line 117
    :pswitch_4
    const/4 v0, 0x5

    .line 118
    goto :goto_0

    .line 120
    :pswitch_5
    const/4 v0, 0x3

    .line 121
    goto :goto_0

    .line 123
    :pswitch_6
    const/4 v0, 0x2

    .line 124
    goto :goto_0

    .line 126
    :pswitch_7
    const/16 v0, 0x10

    .line 127
    goto :goto_0

    .line 129
    :pswitch_8
    const/16 v0, 0xf

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v11, 0xd

    const/16 v10, 0x9

    .line 43
    new-instance v3, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;

    iget-object v6, p0, Lcom/alipay/android/phone/mrpc/core/HttpCaller;->mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

    invoke-interface {v6}, Lcom/alipay/android/phone/mrpc/core/Config;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    .line 45
    .local v3, "request":Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;
    iget-object v6, p0, Lcom/alipay/android/phone/mrpc/core/HttpCaller;->mReqData:[B

    invoke-virtual {v3, v6}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->setReqData([B)V

    .line 46
    iget-object v6, p0, Lcom/alipay/android/phone/mrpc/core/HttpCaller;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->setContentType(Ljava/lang/String;)V

    .line 47
    iget-boolean v6, p0, Lcom/alipay/android/phone/mrpc/core/HttpCaller;->mResetCookie:Z

    invoke-virtual {v3, v6}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->setResetCookie(Z)V

    .line 48
    const-string/jumbo v6, "id"

    iget v7, p0, Lcom/alipay/android/phone/mrpc/core/HttpCaller;->mId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v6, "operationType"

    iget-object v7, p0, Lcom/alipay/android/phone/mrpc/core/HttpCaller;->mOperationType:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v6, "gzip"

    iget-object v7, p0, Lcom/alipay/android/phone/mrpc/core/HttpCaller;->mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

    invoke-interface {v7}, Lcom/alipay/android/phone/mrpc/core/Config;->isGzip()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, v3}, Lcom/alipay/android/phone/mrpc/core/HttpCaller;->addHeader(Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;)V

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "threadid = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/HttpUrlRequest;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/HttpCaller;->getTransport()Lcom/alipay/android/phone/mrpc/core/Transport;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/alipay/android/phone/mrpc/core/Transport;->execute(Lcom/alipay/android/phone/mrpc/core/Request;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 65
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/alipay/android/phone/mrpc/core/Response;>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/android/phone/mrpc/core/Response;

    .line 67
    .local v4, "response":Lcom/alipay/android/phone/mrpc/core/Response;
    if-nez v4, :cond_0

    .line 68
    new-instance v6, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, "response is null"

    invoke-direct {v6, v7, v8}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/alipay/android/phone/mrpc/core/Response;>;"
    .end local v4    # "response":Lcom/alipay/android/phone/mrpc/core/Response;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v6, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v6

    .line 72
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/alipay/android/phone/mrpc/core/Response;>;"
    .restart local v4    # "response":Lcom/alipay/android/phone/mrpc/core/Response;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/alipay/android/phone/mrpc/core/Response;->getResData()[B
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    return-object v6

    .line 76
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/alipay/android/phone/mrpc/core/Response;>;"
    .end local v4    # "response":Lcom/alipay/android/phone/mrpc/core/Response;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 78
    .local v5, "throwable":Ljava/lang/Throwable;
    if-eqz v5, :cond_1

    instance-of v6, v5, Lcom/alipay/android/phone/mrpc/core/HttpException;

    if-eqz v6, :cond_1

    move-object v2, v5

    .line 79
    check-cast v2, Lcom/alipay/android/phone/mrpc/core/HttpException;

    .line 80
    .local v2, "httpException":Lcom/alipay/android/phone/mrpc/core/HttpException;
    new-instance v6, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getCode()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/alipay/android/phone/mrpc/core/HttpCaller;->transferCode(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v6

    .line 83
    .end local v2    # "httpException":Lcom/alipay/android/phone/mrpc/core/HttpException;
    :cond_1
    new-instance v6, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v6

    .line 88
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 89
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    new-instance v6, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v6
.end method
