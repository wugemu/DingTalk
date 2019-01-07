.class public Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;
.super Ljava/lang/Object;
.source "MICRpcServiceBizBase.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->b:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->b:Ljava/lang/String;

    .line 26
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static a()Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->getInstance()Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->getRpcService()Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;-><init>()V

    .line 87
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->a()Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;->setGW(Ljava/lang/String;)V

    .line 33
    const-class v1, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;

    .line 34
    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;

    .line 35
    invoke-interface {v0, p1}, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;->dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    throw v0
.end method

.method public initVerifyTask(Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 2

    .prologue
    .line 52
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->a()Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;->setGW(Ljava/lang/String;)V

    .line 54
    const-class v1, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;

    .line 55
    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;

    .line 56
    invoke-interface {v0, p1}, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;->initVerifyTask(Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    throw v0
.end method

.method public report(Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;)Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;-><init>()V

    .line 67
    const-class v1, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;

    .line 68
    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;

    .line 69
    invoke-interface {v0, p1}, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;->report(Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;)Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    throw v0
.end method
