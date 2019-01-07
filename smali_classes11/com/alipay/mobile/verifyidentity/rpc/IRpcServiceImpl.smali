.class public Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;
.super Ljava/lang/Object;
.source "IRpcServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;


# instance fields
.field ContextClass:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "IRpcServiceImpl"

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->a:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "com.alipay.mobile.verifyidentity.engine.MicroModuleContext"

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->ContextClass:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->b:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->c:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->ContextClass:Ljava/lang/String;

    .line 83
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 84
    const-string/jumbo v2, "getInstance"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 85
    const-string/jumbo v3, "getContext"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 86
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 87
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 88
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 89
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 100
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    move-object v0, v1

    .line 100
    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 96
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 98
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->a()Landroid/content/Context;

    move-result-object v2

    .line 39
    if-nez v2, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1104
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->b:Ljava/lang/String;

    .line 50
    :cond_1
    new-instance v3, Lcom/alipay/android/phone/mrpc/core/RpcParams;

    invoke-direct {v3}, Lcom/alipay/android/phone/mrpc/core/RpcParams;-><init>()V

    .line 51
    invoke-virtual {v3, v0}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->setGwUrl(Ljava/lang/String;)V

    .line 2066
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2067
    const-string/jumbo v0, "com.alipay.mobile.common.info.DeviceInfo"

    const-string/jumbo v1, "getInstance"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2068
    if-eqz v1, :cond_2

    .line 2069
    const-string/jumbo v0, "getmDid"

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2070
    const-string/jumbo v5, "getClientId"

    invoke-static {v1, v5}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2071
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v6, "did"

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2072
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v5, "clientId"

    invoke-direct {v0, v5, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2074
    :cond_2
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2075
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "TRACKERID"

    const-string/jumbo v5, ""

    invoke-direct {v0, v1, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->setHeaders(Ljava/util/List;)V

    .line 55
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;

    invoke-direct {v0, v2}, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v0, p1, v3}, Lcom/alipay/android/phone/mrpc/core/RpcClient;->getRpcProxy(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcParams;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public setGW(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->c:Ljava/lang/String;

    .line 63
    return-void
.end method
