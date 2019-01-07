.class public Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;
.super Ljava/lang/Object;
.source "MYBankRpcBridge.java"

# interfaces
.implements Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$JsPluginHandler;
    }
.end annotation


# static fields
.field private static final NOTIFY_RESULT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "MYBankRpcBridge"

.field private static s_alipayUid:Ljava/lang/String;

.field private static scheduledExecutorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mAlipayGw:Ljava/lang/String;

.field private mCookieManager:Landroid/webkit/CookieManager;

.field private mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

.field private mHandler:Landroid/os/Handler;

.field private mIsAlipay:Z

.field private mLoginInterceptor:Lcom/mybank/android/phone/common/interceptor/LoginInterceptor;

.field private mRequestDataMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->scheduledExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;-><init>(Landroid/content/Context;Z)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isAlipay"    # Z

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v4, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mIsAlipay:Z

    .line 53
    new-instance v2, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$JsPluginHandler;

    invoke-direct {v2}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$JsPluginHandler;-><init>()V

    iput-object v2, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v2, Lcom/mybank/android/phone/common/interceptor/LoginInterceptor;

    invoke-direct {v2, p1}, Lcom/mybank/android/phone/common/interceptor/LoginInterceptor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mLoginInterceptor:Lcom/mybank/android/phone/common/interceptor/LoginInterceptor;

    .line 82
    new-instance v2, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    invoke-direct {v2, p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    .line 83
    iput-boolean p2, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mIsAlipay:Z

    .line 84
    if-eqz p2, :cond_1

    .line 85
    const-class v2, Lcom/mybank/android/phone/common/service/api/AlipayRpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mybank/android/phone/common/service/api/AlipayRpcService;

    .line 86
    .local v1, "rpcService":Lcom/mybank/android/phone/common/service/api/AlipayRpcService;
    if-eqz v1, :cond_0

    .line 87
    iget-object v2, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    invoke-virtual {v1}, Lcom/mybank/android/phone/common/service/api/AlipayRpcService;->getConfig()Lcom/alipay/android/phone/mrpc/core/Config;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->setConfig(Lcom/alipay/android/phone/mrpc/core/Config;)V

    .line 96
    .end local v1    # "rpcService":Lcom/mybank/android/phone/common/service/api/AlipayRpcService;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    invoke-virtual {v2, p0}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->addRpcListener(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcListener;)V

    .line 97
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;

    aput-object v2, v0, v4

    .line 99
    .local v0, "parameterTypes":[Ljava/lang/Class;
    :try_start_0
    const-class v2, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

    const-string/jumbo v3, "requestData"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mRequestDataMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_1
    return-void

    .line 91
    .end local v0    # "parameterTypes":[Ljava/lang/Class;
    :cond_1
    const-class v2, Lcom/mybank/android/phone/common/service/api/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mybank/android/phone/common/service/api/RpcService;

    .line 92
    .local v1, "rpcService":Lcom/mybank/android/phone/common/service/api/RpcService;
    if-eqz v1, :cond_0

    .line 93
    iget-object v2, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    invoke-virtual {v1}, Lcom/mybank/android/phone/common/service/api/RpcService;->getConfig()Lcom/alipay/android/phone/mrpc/core/Config;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->setConfig(Lcom/alipay/android/phone/mrpc/core/Config;)V

    goto :goto_0

    .line 106
    .end local v1    # "rpcService":Lcom/mybank/android/phone/common/service/api/RpcService;
    .restart local v0    # "parameterTypes":[Ljava/lang/Class;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;Ljava/lang/String;)Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->parseParams(Ljava/lang/String;)Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;
    .param p1, "x1"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->dispatchToMainThread(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;)V

    return-void
.end method

.method private dispatchToMainThread(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;)V
    .locals 2
    .param p1, "result"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 207
    return-void
.end method

.method public static doCallback(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;)V
    .locals 3
    .param p0, "result"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;

    .prologue
    .line 72
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->getBridgeContext()Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->getBridgeContext()Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->isSuccess()Z

    move-result v1

    invoke-virtual {p0}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->getResult()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;->sendBridgeResult(ZLorg/json/JSONObject;)Z

    .line 75
    :cond_0
    return-void
.end method

.method public static getAlipayUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->s_alipayUid:Ljava/lang/String;

    return-object v0
.end method

.method private getCookieManager()Landroid/webkit/CookieManager;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mCookieManager:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mCookieManager:Landroid/webkit/CookieManager;

    .line 393
    :goto_0
    return-object v0

    .line 392
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mCookieManager:Landroid/webkit/CookieManager;

    .line 393
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mCookieManager:Landroid/webkit/CookieManager;

    goto :goto_0
.end method

.method private parseParams(Ljava/lang/String;)Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;
    .locals 3
    .param p1, "params"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 210
    new-instance v1, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;

    invoke-direct {v1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;-><init>()V

    .line 213
    .local v1, "serverParam":Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v2, "gateway"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const-string/jumbo v2, "gateway"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->setGwUrl(Ljava/lang/String;)V

    .line 218
    :cond_0
    const-string/jumbo v2, "checkLogin"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    const-string/jumbo v2, "checkLogin"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->setCheckLogin(Z)V

    .line 221
    :cond_1
    const-string/jumbo v2, "compress"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    const-string/jumbo v2, "compress"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->setGzip(Z)V

    .line 224
    :cond_2
    const-string/jumbo v2, "operationType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    const-string/jumbo v2, "operationType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->setOperationType(Ljava/lang/String;)V

    .line 228
    :cond_3
    const-string/jumbo v2, "requestData"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 229
    const-string/jumbo v2, "requestData"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->setRequestData(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0    # "jsonObj":Lorg/json/JSONObject;
    :cond_4
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setAlipayUid(Ljava/lang/String;)V
    .locals 0
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 155
    sput-object p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->s_alipayUid:Ljava/lang/String;

    .line 156
    return-void
.end method


# virtual methods
.method public alipayExceptionHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;Ljava/lang/annotation/Annotation;)Z
    .locals 7
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p3, "retRawValue"    # [B
    .param p5, "method"    # Ljava/lang/reflect/Method;
    .param p6, "args"    # [Ljava/lang/Object;
    .param p7, "exception"    # Lcom/alipay/mobile/common/rpc/RpcException;
    .param p8, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/alipay/mobile/common/rpc/RpcException;",
            "Ljava/lang/annotation/Annotation;",
            ")Z"
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
    .line 164
    .local p2, "retValue":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Object;>;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 165
    .local v2, "processed":Z
    invoke-virtual {p7}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v4

    const/16 v5, 0x7d0

    if-ne v4, v5, :cond_1

    .line 167
    const/4 v4, 0x0

    invoke-static {}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->getAlipayUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->requestAutoAlipay(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;Ljava/lang/String;)Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;

    move-result-object v3

    .line 168
    .local v3, "rpcResult":Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;->isSuccess()Z

    .line 172
    :cond_0
    :try_start_0
    invoke-virtual {p5, p1, p6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 173
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {p2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const/4 v2, 0x0

    .line 179
    .end local v1    # "object":Ljava/lang/Object;
    .end local v3    # "rpcResult":Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;
    :cond_1
    return v2

    .line 175
    .restart local v3    # "rpcResult":Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v4
.end method

.method public onException(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;Ljava/lang/ThreadLocal;Lcom/alipay/mobile/common/rpc/RpcException;)Z
    .locals 10
    .param p1, "param"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;
    .param p3, "exception"    # Lcom/alipay/mobile/common/rpc/RpcException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/common/rpc/RpcException;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "threadLocal":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Object;>;"
    const/4 v0, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 183
    iget-object v1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mRequestDataMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 201
    :goto_0
    return v9

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->getOperationType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljfk;->c(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->isCheckLogin()Z

    move-result v1

    if-nez v1, :cond_1

    move v9, v0

    .line 189
    goto :goto_0

    .line 191
    :cond_1
    new-array v6, v0, [Ljava/lang/Object;

    aput-object p1, v6, v9

    .line 192
    .local v6, "rpcParams":[Ljava/lang/Object;
    iget-boolean v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mIsAlipay:Z

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p3}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_2

    .line 194
    iget-object v5, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mRequestDataMethod:Ljava/lang/reflect/Method;

    move-object v0, p0

    move-object v1, p0

    move-object v2, p2

    move-object v4, v3

    move-object v7, p3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->alipayExceptionHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;Ljava/lang/annotation/Annotation;)Z

    move-result v9

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mLoginInterceptor:Lcom/mybank/android/phone/common/interceptor/LoginInterceptor;

    iget-object v5, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mRequestDataMethod:Ljava/lang/reflect/Method;

    move-object v1, p0

    move-object v2, p2

    move-object v4, v3

    move-object v7, p3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/mybank/android/phone/common/interceptor/LoginInterceptor;->exceptionHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;Ljava/lang/annotation/Annotation;)Z

    move-result v9

    .line 201
    .local v9, "ret":Z
    goto :goto_0
.end method

.method public onPostExecute(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;Ljava/lang/ThreadLocal;)Z
    .locals 8
    .param p1, "param"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "threadLocal":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Object;>;"
    const/4 v7, 0x1

    .line 126
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 130
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 131
    .local v3, "result":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v5, "success"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    const-string/jumbo v5, "success"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 134
    .local v4, "success":Z
    if-nez v4, :cond_3

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "resultView:"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "resultView"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "resultView"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", resultDesc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v5, "resultDesc"

    .line 137
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "resultDesc"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", resultCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v5, "resultCode"

    .line 138
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "resultCode"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->getOperationType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljfk;->c(Ljava/lang/String;)V

    .line 151
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "success":Z
    :goto_3
    return v7

    .line 136
    .restart local v1    # "jsonObj":Lorg/json/JSONObject;
    .restart local v3    # "result":Ljava/lang/String;
    .restart local v4    # "success":Z
    :cond_0
    const-string/jumbo v5, ""

    goto :goto_0

    .line 137
    :cond_1
    const-string/jumbo v5, ""

    goto :goto_1

    .line 138
    :cond_2
    const-string/jumbo v5, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "success":Z
    :catch_0
    move-exception v5

    .line 150
    :cond_3
    invoke-virtual {p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->getOperationType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljfk;->b(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onPreExecute(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;)Z
    .locals 9
    .param p1, "param"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljfk;->a(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->isCheckLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    .line 115
    :cond_0
    new-instance v7, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$1;

    invoke-direct {v7, p0}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$1;-><init>(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;)V

    .line 121
    .local v7, "ano":Ljava/lang/annotation/Annotation;
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mLoginInterceptor:Lcom/mybank/android/phone/common/interceptor/LoginInterceptor;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v8, v1

    invoke-virtual/range {v0 .. v8}, Lcom/mybank/android/phone/common/interceptor/LoginInterceptor;->preHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;Ljava/lang/ThreadLocal;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestAutoAlipay(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;Ljava/lang/String;)Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcResult;
    .locals 1
    .param p1, "context"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestData(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;)Ljava/lang/String;
    .locals 6
    .param p1, "rpcParam"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 282
    if-nez p1, :cond_0

    .line 283
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "param is null"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->mFactory:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;

    invoke-virtual {v0}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcFactory;->getRpcInvoker()Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->getOperationType()Ljava/lang/String;

    move-result-object v2

    const-class v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;->getRequestData()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcInvoker;->invoke(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;Ljava/lang/String;ZLjava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public sendAutoAlipay(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;)V
    .locals 2
    .param p1, "context"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    sget-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->scheduledExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$3;

    invoke-direct {v1, p0, p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$3;-><init>(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 302
    return-void
.end method

.method public sendRequest(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;
    .param p2, "params"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    sget-object v0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->scheduledExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$2;-><init>(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;Ljava/lang/String;Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 278
    return-void
.end method
