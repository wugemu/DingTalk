.class public Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;
.super Ljava/lang/Object;
.source "MYBankRpcInvoker.java"


# static fields
.field private static final EXT_PARAM:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MODE_BATCH:B = 0x1t

.field private static final MODE_DEFAULT:B

.field private static final RETURN_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

.field private mMode:B

.field private rpcSequence:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    .line 26
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;)V
    .locals 1
    .param p1, "factory"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->mMode:B

    .line 42
    iput-object p1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->rpcSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    return-void
.end method

.method public static addProtocolArgs(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 158
    sget-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    sget-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 161
    :cond_0
    sget-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method private exceptionHandle(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;Lcom/alipay/mobile/common/rpc/RpcException;)V
    .locals 4
    .param p1, "param"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;
    .param p2, "exception"    # Lcom/alipay/mobile/common/rpc/RpcException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    const/4 v1, 0x1

    .line 100
    .local v1, "ret":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    invoke-virtual {v2}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->getRpcListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    invoke-virtual {v2}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->getRpcListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcListener;

    sget-object v3, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    invoke-interface {v2, p1, v3, p2}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcListener;->onException(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;Ljava/lang/ThreadLocal;Lcom/alipay/mobile/common/rpc/RpcException;)Z

    move-result v1

    .line 102
    if-nez v1, :cond_0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    if-eqz v1, :cond_1

    .line 107
    throw p2

    .line 109
    :cond_1
    return-void
.end method

.method private postExecute(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;)V
    .locals 4
    .param p1, "param"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    invoke-virtual {v1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->getRpcListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    invoke-virtual {v1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->getRpcListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcListener;

    sget-object v2, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    invoke-interface {v1, p1, v2}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcListener;->onPostExecute(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;Ljava/lang/ThreadLocal;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "postHandle stop this call."

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method private preExecute(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;)V
    .locals 4
    .param p1, "param"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    invoke-virtual {v1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->getRpcListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    invoke-virtual {v1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->getRpcListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcListener;

    invoke-interface {v1, p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcListener;->onPreExecute(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "preHandle stop this call."

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method

.method private singleCall(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;IZ)[B
    .locals 9
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # Ljava/lang/String;
    .param p3, "operationTypeValue"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "resetCookie"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    invoke-virtual {p0, p4, p3, p2}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->getSerializer(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/mrpc/core/gwprotocol/Serializer;

    move-result-object v8

    .line 130
    .local v8, "serializer":Lcom/alipay/android/phone/mrpc/core/gwprotocol/Serializer;
    sget-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/Serializer;->setExtParam(Ljava/lang/Object;)V

    .line 134
    :cond_0
    invoke-interface {v8}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/Serializer;->packet()[B

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->getTransport(Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)Lcom/alipay/android/phone/mrpc/core/RpcCaller;

    move-result-object v6

    .line 135
    .local v6, "caller":Lcom/alipay/android/phone/mrpc/core/RpcCaller;
    invoke-interface {v6}, Lcom/alipay/android/phone/mrpc/core/RpcCaller;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v7, v0

    check-cast v7, [B

    .line 137
    .local v7, "data":[B
    sget-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 139
    return-object v7
.end method


# virtual methods
.method public batchBegin()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->mMode:B

    .line 145
    return-void
.end method

.method public batchCommit()Ljava/util/concurrent/FutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->mMode:B

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeserializer(Ljava/lang/reflect/Type;[B)Lcom/alipay/android/phone/mrpc/core/gwprotocol/Deserializer;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "data"    # [B

    .prologue
    .line 176
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    return-object v0
.end method

.method public getSerializer(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/mrpc/core/gwprotocol/Serializer;
    .locals 4
    .param p1, "id"    # I
    .param p2, "operationType"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;

    new-instance v1, Lcom/mybank/android/phone/common/h5container/plugin/rpc/RpcPluginJsonSerializer;

    invoke-direct {v1, p1, p2, p3}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/RpcPluginJsonSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    invoke-virtual {v2}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    invoke-virtual {v3}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->getConfig()Lcom/alipay/android/phone/mrpc/core/Config;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;-><init>(Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;Landroid/content/Context;Lcom/alipay/android/phone/mrpc/core/Config;)V

    return-object v0
.end method

.method public getTransport(Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)Lcom/alipay/android/phone/mrpc/core/RpcCaller;
    .locals 7
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "id"    # I
    .param p3, "operationType"    # Ljava/lang/String;
    .param p4, "reqData"    # [B
    .param p5, "resetCookie"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpCaller;

    iget-object v1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    invoke-virtual {v1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->getConfig()Lcom/alipay/android/phone/mrpc/core/Config;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/mrpc/core/HttpCaller;-><init>(Lcom/alipay/android/phone/mrpc/core/Config;Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)V

    return-object v0
.end method

.method public invoke(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;Ljava/lang/String;ZLjava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p1, "param"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;
    .param p2, "operationType"    # Ljava/lang/String;
    .param p3, "resetCookie"    # Z
    .param p4, "retType"    # Ljava/lang/reflect/Type;
    .param p5, "args"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/ThreadUtil;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "can\'t in main thread call rpc ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    sget-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 54
    if-eqz p2, :cond_1

    const-string/jumbo v0, ""

    if-ne p2, v0, :cond_2

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "OperationType must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->rpcSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    .line 59
    .local v4, "id":I
    invoke-direct {p0, p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->preExecute(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;)V

    .line 62
    :try_start_0
    iget-byte v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->mMode:B

    if-nez v0, :cond_3

    .line 63
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p5

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->singleCall(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;IZ)[B

    move-result-object v6

    .line 64
    .local v6, "data":[B
    invoke-virtual {p0, p4, v6}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->getDeserializer(Ljava/lang/reflect/Type;[B)Lcom/alipay/android/phone/mrpc/core/gwprotocol/Deserializer;

    move-result-object v7

    .line 65
    .local v7, "deserializer":Lcom/alipay/android/phone/mrpc/core/gwprotocol/Deserializer;
    invoke-interface {v7}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/Deserializer;->parser()Ljava/lang/Object;

    move-result-object v9

    .line 66
    .local v9, "object":Ljava/lang/Object;
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p4, v0, :cond_3

    .line 67
    sget-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v6    # "data":[B
    .end local v7    # "deserializer":Lcom/alipay/android/phone/mrpc/core/gwprotocol/Deserializer;
    .end local v9    # "object":Ljava/lang/Object;
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->postExecute(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;)V

    .line 76
    sget-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 70
    :catch_0
    move-exception v8

    .line 71
    .local v8, "exception":Lcom/alipay/mobile/common/rpc/RpcException;
    invoke-virtual {v8, p2}, Lcom/alipay/mobile/common/rpc/RpcException;->setOperationType(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, p1, v8}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->exceptionHandle(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;Lcom/alipay/mobile/common/rpc/RpcException;)V

    goto :goto_0
.end method
