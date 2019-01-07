.class public Lcom/alipay/android/phone/mrpc/core/RpcInvoker;
.super Ljava/lang/Object;
.source "RpcInvoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mrpc/core/RpcInvoker$Handle;
    }
.end annotation


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
.field private mMode:B

.field private mRpcFactory:Lcom/alipay/android/phone/mrpc/core/RpcFactory;

.field private rpcSequence:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    .line 43
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/RpcFactory;)V
    .locals 1
    .param p1, "rpcFactory"    # Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->mMode:B

    .line 69
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->mRpcFactory:Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->rpcSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static addProtocolArgs(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 258
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 259
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 261
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void
.end method

.method private exceptionHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcException;)V
    .locals 9
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "rawResult"    # [B
    .param p4, "method"    # Ljava/lang/reflect/Method;
    .param p5, "args"    # [Ljava/lang/Object;
    .param p6, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p7, "exception"    # Lcom/alipay/mobile/common/rpc/RpcException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/alipay/mobile/common/rpc/RpcException;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;-><init>(Lcom/alipay/android/phone/mrpc/core/RpcInvoker;Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;)V

    invoke-direct {p0, p6, v0}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->handleAnnotations([Ljava/lang/annotation/Annotation;Lcom/alipay/android/phone/mrpc/core/RpcInvoker$Handle;)Z

    move-result v8

    .line 177
    .local v8, "processed":Z
    if-eqz v8, :cond_0

    .line 178
    throw p7

    .line 180
    :cond_0
    return-void
.end method

.method private handleAnnotations([Ljava/lang/annotation/Annotation;Lcom/alipay/android/phone/mrpc/core/RpcInvoker$Handle;)Z
    .locals 8
    .param p1, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p2, "handle"    # Lcom/alipay/android/phone/mrpc/core/RpcInvoker$Handle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 300
    const/4 v5, 0x1

    .line 301
    .local v5, "ret":Z
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v4, p1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 302
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    .line 303
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v7, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->mRpcFactory:Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    invoke-virtual {v7, v2}, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->findRpcInterceptor(Ljava/lang/Class;)Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;

    move-result-object v6

    .line 304
    .local v6, "rpcInterceptor":Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;
    if-eqz v6, :cond_0

    .line 310
    invoke-interface {p2, v6, v0}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$Handle;->handle(Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;Ljava/lang/annotation/Annotation;)Z

    move-result v5

    .line 311
    if-eqz v5, :cond_0

    .line 301
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v6    # "rpcInterceptor":Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;
    :cond_0
    return v5
.end method

.method private postHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V
    .locals 7
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "rawResult"    # [B
    .param p4, "method"    # Ljava/lang/reflect/Method;
    .param p5, "args"    # [Ljava/lang/Object;
    .param p6, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$1;-><init>(Lcom/alipay/android/phone/mrpc/core/RpcInvoker;Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-direct {p0, p6, v0}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->handleAnnotations([Ljava/lang/annotation/Annotation;Lcom/alipay/android/phone/mrpc/core/RpcInvoker$Handle;)Z

    .line 146
    return-void
.end method

.method private preHandle(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .param p4, "args"    # [Ljava/lang/Object;
    .param p5, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$3;-><init>(Lcom/alipay/android/phone/mrpc/core/RpcInvoker;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-direct {p0, p5, v0}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->handleAnnotations([Ljava/lang/annotation/Annotation;Lcom/alipay/android/phone/mrpc/core/RpcInvoker$Handle;)Z

    .line 207
    return-void
.end method

.method private singleCall(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;IZ)[B
    .locals 9
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
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
    .line 223
    invoke-virtual {p0, p4, p3, p2}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->getSerializer(ILjava/lang/String;[Ljava/lang/Object;)Lcom/alipay/android/phone/mrpc/core/gwprotocol/Serializer;

    move-result-object v8

    .line 225
    .local v8, "serializer":Lcom/alipay/android/phone/mrpc/core/gwprotocol/Serializer;
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/Serializer;->setExtParam(Ljava/lang/Object;)V

    .line 229
    :cond_0
    invoke-interface {v8}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/Serializer;->packet()[B

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->getTransport(Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)Lcom/alipay/android/phone/mrpc/core/RpcCaller;

    move-result-object v6

    .line 230
    .local v6, "caller":Lcom/alipay/android/phone/mrpc/core/RpcCaller;
    invoke-interface {v6}, Lcom/alipay/android/phone/mrpc/core/RpcCaller;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v7, v0

    check-cast v7, [B

    .line 232
    .local v7, "data":[B
    sget-object v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 234
    return-object v7
.end method


# virtual methods
.method public batchBegin()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->mMode:B

    .line 242
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
    .line 248
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->mMode:B

    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeserializer(Ljava/lang/reflect/Type;[B)Lcom/alipay/android/phone/mrpc/core/gwprotocol/Deserializer;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "data"    # [B

    .prologue
    .line 296
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    return-object v0
.end method

.method public getSerializer(ILjava/lang/String;[Ljava/lang/Object;)Lcom/alipay/android/phone/mrpc/core/gwprotocol/Serializer;
    .locals 4
    .param p1, "id"    # I
    .param p2, "operationType"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 285
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;

    invoke-direct {v1, p1, p2, p3}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/JsonSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->mRpcFactory:Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->mRpcFactory:Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->getConfig()Lcom/alipay/android/phone/mrpc/core/Config;

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
    .line 273
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/HttpCaller;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->mRpcFactory:Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->getConfig()Lcom/alipay/android/phone/mrpc/core/Config;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/mrpc/core/HttpCaller;-><init>(Lcom/alipay/android/phone/mrpc/core/Config;Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)V

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/ThreadUtil;->checkMainThread()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    new-instance v3, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v4, "can\'t in main thread call rpc ."

    invoke-direct {v3, v4}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_0
    const-class v3, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v25

    check-cast v25, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    .line 85
    .local v25, "operationType":Lcom/alipay/mobile/framework/service/annotation/OperationType;
    const-class v3, Lcom/alipay/mobile/framework/service/annotation/ResetCookie;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v14, 0x1

    .line 86
    .local v14, "resetCookie":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v26

    .line 87
    .local v26, "retType":Ljava/lang/reflect/Type;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    .line 88
    .local v8, "annotations":[Ljava/lang/annotation/Annotation;
    sget-object v3, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 89
    sget-object v3, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 91
    if-nez v25, :cond_2

    .line 92
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "OperationType must be set."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    .end local v8    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v14    # "resetCookie":Z
    .end local v26    # "retType":Ljava/lang/reflect/Type;
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 94
    .restart local v8    # "annotations":[Ljava/lang/annotation/Annotation;
    .restart local v14    # "resetCookie":Z
    .restart local v26    # "retType":Ljava/lang/reflect/Type;
    :cond_2
    invoke-interface/range {v25 .. v25}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, "operationTypeValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->rpcSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v13

    .local v13, "id":I
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 98
    invoke-direct/range {v3 .. v8}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->preHandle(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    .line 101
    const/16 v17, 0x0

    .line 103
    .local v17, "data":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->mMode:B

    if-nez v3, :cond_3

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 104
    invoke-direct/range {v9 .. v14}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->singleCall(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;IZ)[B

    move-result-object v17

    .line 105
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->getDeserializer(Ljava/lang/reflect/Type;[B)Lcom/alipay/android/phone/mrpc/core/gwprotocol/Deserializer;

    move-result-object v23

    .line 106
    .local v23, "deserializer":Lcom/alipay/android/phone/mrpc/core/gwprotocol/Deserializer;
    invoke-interface/range {v23 .. v23}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/Deserializer;->parser()Ljava/lang/Object;

    move-result-object v24

    .line 107
    .local v24, "object":Ljava/lang/Object;
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    if-eq v0, v3, :cond_3

    .line 108
    sget-object v3, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v23    # "deserializer":Lcom/alipay/android/phone/mrpc/core/gwprotocol/Deserializer;
    .end local v24    # "object":Ljava/lang/Object;
    :cond_3
    :goto_1
    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v21, v8

    .line 116
    invoke-direct/range {v15 .. v21}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->postHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    .line 118
    sget-object v3, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 111
    :catch_0
    move-exception v22

    .line 112
    .local v22, "exception":Lcom/alipay/mobile/common/rpc/RpcException;
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/alipay/mobile/common/rpc/RpcException;->setOperationType(Ljava/lang/String;)V

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v21, v8

    .line 113
    invoke-direct/range {v15 .. v22}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->exceptionHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcException;)V

    goto :goto_1
.end method
