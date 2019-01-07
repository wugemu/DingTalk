.class public Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "UIC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public directLogin(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x2

    .line 87
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "corpId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "corpId":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "userId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "targetUserID":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "biz_type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "biz_type":Ljava/lang/String;
    new-instance v3, Lcom/ali/user/enterprise/base/data/LoginParam;

    invoke-direct {v3}, Lcom/ali/user/enterprise/base/data/LoginParam;-><init>()V

    .line 92
    .local v3, "loginParam":Lcom/ali/user/enterprise/base/data/LoginParam;
    iput-object v1, v3, Lcom/ali/user/enterprise/base/data/LoginParam;->corpId:Ljava/lang/String;

    .line 93
    iput-object v4, v3, Lcom/ali/user/enterprise/base/data/LoginParam;->userId:Ljava/lang/String;

    .line 94
    iput-object v0, v3, Lcom/ali/user/enterprise/base/data/LoginParam;->biz_type:Ljava/lang/String;

    .line 95
    const-string/jumbo v5, "ding_directLogin"

    iput-object v5, v3, Lcom/ali/user/enterprise/base/data/LoginParam;->invoke_scene:Ljava/lang/String;

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    :cond_0
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x2

    const-string/jumbo v8, "invalid args"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 133
    .end local v0    # "biz_type":Ljava/lang/String;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v3    # "loginParam":Lcom/ali/user/enterprise/base/data/LoginParam;
    .end local v4    # "targetUserID":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 100
    .restart local v0    # "biz_type":Ljava/lang/String;
    .restart local v1    # "corpId":Ljava/lang/String;
    .restart local v3    # "loginParam":Lcom/ali/user/enterprise/base/data/LoginParam;
    .restart local v4    # "targetUserID":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lhli;->a()Lhli;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/biz/UIC$2;

    invoke-direct {v6, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/UIC$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {v5, v3, v6}, Lhli;->a(Lcom/ali/user/enterprise/base/data/LoginParam;Lcom/ali/user/enterprise/login/MultiLoginCallback;)V

    .line 130
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 131
    .end local v0    # "biz_type":Ljava/lang/String;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v3    # "loginParam":Lcom/ali/user/enterprise/base/data/LoginParam;
    .end local v4    # "targetUserID":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 133
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v7, "invalid args"

    invoke-static {v9, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public doLogin(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    .line 30
    :try_start_0
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "corpId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "corpId":Ljava/lang/String;
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "biz_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "biz_type":Ljava/lang/String;
    new-instance v3, Lcom/ali/user/enterprise/base/data/LoginParam;

    invoke-direct {v3}, Lcom/ali/user/enterprise/base/data/LoginParam;-><init>()V

    .line 33
    .local v3, "loginParam":Lcom/ali/user/enterprise/base/data/LoginParam;
    iput-object v1, v3, Lcom/ali/user/enterprise/base/data/LoginParam;->corpId:Ljava/lang/String;

    .line 34
    iput-object v0, v3, Lcom/ali/user/enterprise/base/data/LoginParam;->biz_type:Ljava/lang/String;

    .line 35
    const-string/jumbo v4, "ding_doLogin"

    iput-object v4, v3, Lcom/ali/user/enterprise/base/data/LoginParam;->invoke_scene:Ljava/lang/String;

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v6, 0x2

    const-string/jumbo v7, "invalid args"

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 79
    .end local v0    # "biz_type":Ljava/lang/String;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v3    # "loginParam":Lcom/ali/user/enterprise/base/data/LoginParam;
    :goto_0
    return-object v4

    .line 39
    .restart local v0    # "biz_type":Ljava/lang/String;
    .restart local v1    # "corpId":Ljava/lang/String;
    .restart local v3    # "loginParam":Lcom/ali/user/enterprise/base/data/LoginParam;
    :cond_0
    invoke-static {}, Lhli;->a()Lhli;

    move-result-object v4

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/biz/UIC$1;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/UIC$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {v4, v3, v5}, Lhli;->a(Lcom/ali/user/enterprise/base/data/LoginParam;Lcom/ali/user/enterprise/login/MultiLoginCallback;)V

    .line 76
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 77
    .end local v0    # "biz_type":Ljava/lang/String;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v3    # "loginParam":Lcom/ali/user/enterprise/base/data/LoginParam;
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 79
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v6, "invalid args"

    invoke-static {v8, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/UIC;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
