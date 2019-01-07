.class public Lcom/ali/user/enterprise/base/biz/token/DingLoginBusiness;
.super Ljava/lang/Object;
.source "DingLoginBusiness.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "login.AutoLoginBusiness"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public directLogin(Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;)V
    .locals 6
    .param p1, "requestCallback"    # Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 33
    new-instance v3, Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;

    invoke-direct {v3}, Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;-><init>()V

    .line 35
    .local v3, "request":Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;
    new-instance v2, Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;

    invoke-direct {v2}, Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;-><init>()V

    .line 36
    .local v2, "loginRequest":Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getAppkey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;->appName:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/ali/user/enterprise/base/info/AppInfo;->getInstance()Lcom/ali/user/enterprise/base/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ali/user/enterprise/base/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;->sdkVersion:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/ali/user/enterprise/base/info/AppInfo;->getInstance()Lcom/ali/user/enterprise/base/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ali/user/enterprise/base/info/AppInfo;->getUmidToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;->umidToken:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getSite()I

    move-result v4

    iput v4, v2, Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;->site:I

    .line 40
    invoke-static {}, Lcom/ali/user/enterprise/base/info/AppInfo;->getInstance()Lcom/ali/user/enterprise/base/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ali/user/enterprise/base/info/AppInfo;->getUtdid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;->utdid:Ljava/lang/String;

    .line 42
    const-string/jumbo v4, "tokenInfo"

    invoke-static {v2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    const-string/jumbo v4, "riskControlInfo"

    invoke-static {}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->buildWSecurityData()Lcom/ali/user/enterprise/base/storage/WSecurityData;

    move-result-object v5

    invoke-static {v5}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v1, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v4, "deviceName"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v4, "userId"

    invoke-static {}, Lcom/ali/user/enterprise/Login;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v4, "biz_type"

    invoke-static {}, Lcom/ali/user/enterprise/Login;->getBizType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v4, "corpId"

    invoke-static {}, Lcom/ali/user/enterprise/Login;->getCorpId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v4, "invoke_scene"

    const-string/jumbo v5, "ding_directLogin"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    const-string/jumbo v4, "ext"

    invoke-static {v1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Lcom/ali/user/enterprise/base/rpc/DingWrapper;->getInstance()Lcom/ali/user/enterprise/base/rpc/DingWrapper;

    move-result-object v4

    const-class v5, Lcom/ali/user/enterprise/base/data/LoginReturnData;

    invoke-virtual {v4, v3, v5, p1}, Lcom/ali/user/enterprise/base/rpc/DingWrapper;->post(Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;)V

    .line 61
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doLogin(Lcom/ali/user/enterprise/base/data/LoginParam;Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;)V
    .locals 6
    .param p1, "loginParam"    # Lcom/ali/user/enterprise/base/data/LoginParam;
    .param p2, "requestCallback"    # Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 64
    new-instance v3, Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;

    invoke-direct {v3}, Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;-><init>()V

    .line 66
    .local v3, "request":Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;
    new-instance v2, Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;

    invoke-direct {v2}, Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;-><init>()V

    .line 67
    .local v2, "loginRequest":Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getAppkey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;->appName:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/ali/user/enterprise/base/info/AppInfo;->getInstance()Lcom/ali/user/enterprise/base/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ali/user/enterprise/base/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;->sdkVersion:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/ali/user/enterprise/base/info/AppInfo;->getInstance()Lcom/ali/user/enterprise/base/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ali/user/enterprise/base/info/AppInfo;->getUmidToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;->umidToken:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getSite()I

    move-result v4

    iput v4, v2, Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;->site:I

    .line 71
    invoke-static {}, Lcom/ali/user/enterprise/base/info/AppInfo;->getInstance()Lcom/ali/user/enterprise/base/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ali/user/enterprise/base/info/AppInfo;->getUtdid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/ali/user/enterprise/base/biz/token/DingLoginRequest;->utdid:Ljava/lang/String;

    .line 73
    const-string/jumbo v4, "tokenInfo"

    invoke-static {v2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string/jumbo v4, "riskControlInfo"

    invoke-static {}, Lcom/ali/user/enterprise/base/storage/SecurityGuardManagerWraper;->buildWSecurityData()Lcom/ali/user/enterprise/base/storage/WSecurityData;

    move-result-object v5

    invoke-static {v5}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v1, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v4, "deviceName"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    if-eqz p1, :cond_0

    .line 85
    const-string/jumbo v4, "biz_type"

    iget-object v5, p1, Lcom/ali/user/enterprise/base/data/LoginParam;->biz_type:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v4, "corpId"

    iget-object v5, p1, Lcom/ali/user/enterprise/base/data/LoginParam;->corpId:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v4, "invoke_scene"

    iget-object v5, p1, Lcom/ali/user/enterprise/base/data/LoginParam;->invoke_scene:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string/jumbo v4, "userId"

    iget-object v5, p1, Lcom/ali/user/enterprise/base/data/LoginParam;->userId:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    const-string/jumbo v4, "ext"

    invoke-static {v1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/ali/user/enterprise/base/rpc/DingWrapper;->getInstance()Lcom/ali/user/enterprise/base/rpc/DingWrapper;

    move-result-object v4

    const-class v5, Lcom/ali/user/enterprise/base/data/LoginReturnData;

    invoke-virtual {v4, v3, v5, p2}, Lcom/ali/user/enterprise/base/rpc/DingWrapper;->post(Lcom/ali/user/enterprise/base/rpc/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/enterprise/base/rpc/model/RpcRequestCallback;)V

    .line 94
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
