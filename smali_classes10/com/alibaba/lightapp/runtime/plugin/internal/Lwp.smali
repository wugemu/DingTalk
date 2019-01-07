.class public Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Lwp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->processSuiteModel(Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->success(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method private buySuiteForOrg(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 247
    :try_start_0
    const-string/jumbo v0, "corpId"

    const-string/jumbo v5, ""

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "corpId":Ljava/lang/String;
    const-string/jumbo v0, "productCode"

    const-string/jumbo v5, ""

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "productCode":Ljava/lang/String;
    const-string/jumbo v0, "allowContact"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 250
    .local v4, "allowContact":Ljava/lang/Boolean;
    const-string/jumbo v0, "orderId"

    const-string/jumbo v5, ""

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "orderId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$4;

    invoke-direct {v5, p0, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1    # "productCode":Ljava/lang/String;
    .end local v2    # "orderId":Ljava/lang/String;
    .end local v3    # "corpId":Ljava/lang/String;
    .end local v4    # "allowContact":Ljava/lang/Boolean;
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v6

    .line 278
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    const/4 v0, 0x3

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSuiteInfo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    :try_start_0
    const-string/jumbo v5, "corpId"

    const-string/jumbo v6, ""

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "corpId":Ljava/lang/String;
    const-string/jumbo v5, "productCode"

    const-string/jumbo v6, ""

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "productCode":Ljava/lang/String;
    const-class v5, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-static {v5}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    .line 177
    .local v2, "mUserDataSource":Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;
    invoke-interface {v2, v0}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 178
    .local v3, "orgId":Ljava/lang/Long;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$2;

    invoke-direct {v6, p0, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v3, v6}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;Ljava/lang/Long;Lcma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v2    # "mUserDataSource":Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;
    .end local v3    # "orgId":Ljava/lang/Long;
    .end local v4    # "productCode":Ljava/lang/String;
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    const/4 v5, 0x3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSuiteList(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 10
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    :try_start_0
    const-string/jumbo v6, "corpId"

    const-string/jumbo v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "corpId":Ljava/lang/String;
    const-string/jumbo v6, "curPage"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 134
    .local v1, "curPage":I
    const-string/jumbo v6, "pageSize"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 136
    .local v5, "pageSize":I
    const-class v6, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-static {v6}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    .line 137
    .local v3, "mUserDataSource":Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;
    invoke-interface {v3, v0}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 138
    .local v4, "orgId":Ljava/lang/Long;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$1;

    invoke-direct {v9, p0, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Ljava/lang/String;)V

    invoke-virtual {v6, v4, v7, v8, v9}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v1    # "curPage":I
    .end local v3    # "mUserDataSource":Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;
    .end local v4    # "orgId":Ljava/lang/Long;
    .end local v5    # "pageSize":I
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    const/4 v6, 0x3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processSuiteModel(Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;)V
    .locals 6
    .param p1, "tryOutModel"    # Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    :try_start_0
    iget-object v4, p1, Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;->logo:Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;->logo:Ljava/lang/String;

    .line 117
    iget-object v4, p1, Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;->microAppList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;->microAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 118
    iget-object v4, p1, Lcom/alibaba/dingtalk/oabase/idl/TryOutSuiteModel;->microAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/idl/MicroAPP;

    .line 119
    .local v0, "app":Lcom/alibaba/dingtalk/oabase/idl/MicroAPP;
    iget-object v2, v0, Lcom/alibaba/dingtalk/oabase/idl/MicroAPP;->icon:Ljava/lang/String;

    .line 120
    .local v2, "icon":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/laiwang/protocol/media/MediaIdManager;->transferTo(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v5, "utf-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/dingtalk/oabase/idl/MicroAPP;->icon:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v0    # "app":Lcom/alibaba/dingtalk/oabase/idl/MicroAPP;
    .end local v2    # "icon":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private tryOutSuiteForOrg(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "args"    # Lorg/json/JSONObject;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    :try_start_0
    const-string/jumbo v4, "corpId"

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "corpId":Ljava/lang/String;
    const-string/jumbo v4, "productCode"

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "productCode":Ljava/lang/String;
    const-string/jumbo v4, "allowContact"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 214
    .local v0, "allowContact":Ljava/lang/Boolean;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$3;

    invoke-direct {v5, p0, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v1, v0, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v0    # "allowContact":Ljava/lang/Boolean;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v3    # "productCode":Ljava/lang/String;
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v2

    .line 240
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    const/4 v4, 0x3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public call(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x3

    .line 59
    :try_start_0
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 60
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "scheme":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "host":Ljava/lang/String;
    const-string/jumbo v8, "lwp_api_check_scheme"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 64
    const-string/jumbo v8, "https"

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ".dingtalk.com"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 66
    :cond_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v8

    invoke-virtual {v8}, Lgvi;->warnUnauthorized()V

    .line 67
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v10, 0x7

    const-string/jumbo v11, "Wrong Domain"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 100
    .end local v3    # "host":Ljava/lang/String;
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v8

    .line 70
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ".dingtalk.com"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 71
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v8

    invoke-virtual {v8}, Lgvi;->warnUnauthorized()V

    .line 72
    const/4 v8, 0x7

    const-string/jumbo v9, "Wrong Domain"

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 76
    .end local v3    # "host":Ljava/lang/String;
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 80
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 82
    .local v1, "args":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v8, "action"

    const-string/jumbo v9, ""

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "params"

    const-string/jumbo v9, ""

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "paramStr":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    .local v5, "params":Lorg/json/JSONObject;
    const-string/jumbo v8, "getSuiteList"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 86
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->getSuiteList(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "paramStr":Ljava/lang/String;
    .end local v5    # "params":Lorg/json/JSONObject;
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v8

    goto :goto_0

    .line 87
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v4    # "paramStr":Ljava/lang/String;
    .restart local v5    # "params":Lorg/json/JSONObject;
    :cond_3
    :try_start_2
    const-string/jumbo v8, "getSuiteInfo"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 88
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->getSuiteInfo(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 96
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "paramStr":Ljava/lang/String;
    .end local v5    # "params":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 97
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 98
    const/4 v8, 0x2

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 89
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v4    # "paramStr":Ljava/lang/String;
    .restart local v5    # "params":Lorg/json/JSONObject;
    :cond_4
    :try_start_3
    const-string/jumbo v8, "tryOutSuiteForOrg"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 90
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->tryOutSuiteForOrg(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :cond_5
    const-string/jumbo v8, "buySuiteForOrg"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 92
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->buySuiteForOrg(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_6
    const/4 v8, 0x3

    const-string/jumbo v9, "invalid action"

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/Lwp;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public setSessionIdCookie(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "sid":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "dd_sid="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "; HttpOnly; secure"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "cookieStr":Ljava/lang/String;
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v2

    const-string/jumbo v3, "https://static.dingtalk.com"

    invoke-virtual {v2, v3, v0}, Lcom/uc/webview/export/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v2

    const-string/jumbo v3, "https://down.dingtalk.com"

    invoke-virtual {v2, v3, v0}, Lcom/uc/webview/export/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v2
.end method
