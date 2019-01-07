.class public Lcom/mybank/android/phone/common/service/impl/ServiceLoader;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;->a:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/mybank/android/phone/common/service/impl/ServiceLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/ServiceLoader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/mybank/android/phone/common/service/impl/ServiceLoader;)Ljava/util/List;
    .locals 6
    .param p0, "x0"    # Lcom/mybank/android/phone/common/service/impl/ServiceLoader;

    .prologue
    .line 39
    .line 4179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4181
    invoke-static {}, Lijn;->a()Lijn;

    move-result-object v1

    .line 4182
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "productId"

    invoke-virtual {v1}, Lijn;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4183
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "clientVersion"

    .line 4218
    iget-object v4, v1, Lijn;->b:Ljava/lang/String;

    .line 4183
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4184
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "channelId"

    .line 4222
    iget-object v4, v1, Lijn;->c:Ljava/lang/String;

    .line 4184
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4185
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "did"

    invoke-static {}, Lijo;->a()Lijo;

    move-result-object v4

    invoke-virtual {v4}, Lijo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4186
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "User-Agent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AliBank/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5218
    iget-object v5, v1, Lijn;->b:Ljava/lang/String;

    .line 4186
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (android)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4187
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "AppId"

    invoke-virtual {v1}, Lijn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4189
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "appkey"

    invoke-static {}, Ljez;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4190
    iget-object v1, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v1

    .line 4191
    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v1

    .line 4192
    if-eqz v1, :cond_0

    .line 4193
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "umidToken"

    iget-object v4, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4194
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "apdidToken"

    iget-object v1, v1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    const-class v0, Lcom/mybank/android/phone/common/service/api/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljfl;

    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;->a:Landroid/content/Context;

    .line 1093
    new-instance v3, Lcom/alipay/android/phone/mrpc/core/RpcParams;

    invoke-direct {v3}, Lcom/alipay/android/phone/mrpc/core/RpcParams;-><init>()V

    .line 1094
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;->a:Landroid/content/Context;

    const-string/jumbo v5, "gateway_url"

    invoke-static {v4, v5}, Ljev;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->setGwUrl(Ljava/lang/String;)V

    .line 2071
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2073
    invoke-static {}, Lijn;->a()Lijn;

    move-result-object v5

    .line 2074
    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v7, "productId"

    invoke-virtual {v5}, Lijn;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2075
    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v7, "productVersion"

    .line 2218
    iget-object v8, v5, Lijn;->b:Ljava/lang/String;

    .line 2075
    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2076
    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v7, "channelId"

    .line 2222
    iget-object v8, v5, Lijn;->c:Ljava/lang/String;

    .line 2076
    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2077
    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v7, "did"

    invoke-static {}, Lijo;->a()Lijo;

    move-result-object v8

    invoke-virtual {v8}, Lijo;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2078
    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v7, "AppId"

    invoke-virtual {v5}, Lijn;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2079
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v6, "appkey"

    invoke-static {}, Ljez;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2081
    iget-object v5, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v5

    .line 2082
    invoke-virtual {v5}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v5

    .line 2083
    if-eqz v5, :cond_0

    .line 2084
    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v7, "umidToken"

    iget-object v8, v5, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2085
    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v7, "apdidToken"

    iget-object v5, v5, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_0
    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->setHeaders(Ljava/util/List;)V

    .line 1097
    new-instance v4, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$1;

    invoke-direct {v4, p0, v3}, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$1;-><init>(Lcom/mybank/android/phone/common/service/impl/ServiceLoader;Lcom/alipay/android/phone/mrpc/core/RpcParams;)V

    .line 51
    invoke-direct {v1, v2, v4}, Ljfl;-><init>(Landroid/content/Context;Lcom/alipay/android/phone/mrpc/core/Config;)V

    invoke-static {v0, v1}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 52
    const-class v0, Lcom/mybank/android/phone/common/service/api/AlipayRpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljfl;

    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;->a:Landroid/content/Context;

    .line 3202
    new-instance v3, Lcom/alipay/android/phone/mrpc/core/RpcParams;

    invoke-direct {v3}, Lcom/alipay/android/phone/mrpc/core/RpcParams;-><init>()V

    .line 3203
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;->a:Landroid/content/Context;

    const-string/jumbo v5, "alipay_gateway_url"

    invoke-static {v4, v5}, Ljev;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->setGwUrl(Ljava/lang/String;)V

    .line 3206
    new-instance v4, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$2;

    invoke-direct {v4, p0, v3}, Lcom/mybank/android/phone/common/service/impl/ServiceLoader$2;-><init>(Lcom/mybank/android/phone/common/service/impl/ServiceLoader;Lcom/alipay/android/phone/mrpc/core/RpcParams;)V

    .line 52
    invoke-direct {v1, v2, v4}, Ljfl;-><init>(Landroid/content/Context;Lcom/alipay/android/phone/mrpc/core/Config;)V

    invoke-static {v0, v1}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 53
    const-class v0, Lcom/mybank/android/phone/common/service/api/DeviceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;

    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mybank/android/phone/common/service/impl/DeviceServiceImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 54
    const-class v0, Lcom/mybank/android/phone/common/service/login/LoginService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 55
    const-class v0, Lcom/mybank/android/phone/common/service/api/ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;

    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 56
    const-class v0, Lcom/mybank/android/phone/common/service/api/CipherService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;

    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mybank/android/phone/common/service/impl/CipherServiceImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 58
    return-void
.end method
