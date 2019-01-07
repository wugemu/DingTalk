.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Data;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Data.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Data;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Data;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Data;->getUrlFromMediaId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Data;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Data;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Data;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Data;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Data;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Data;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method private getUrlFromMediaId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "thumb"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 99
    move-object v3, p1

    .line 100
    .local v3, "url":Ljava/lang/String;
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1, p2, v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpWithParas(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 115
    :cond_0
    :goto_0
    return-object v3

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 109
    .local v2, "extIndex":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 110
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "ext":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "_"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public getAvatar(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    const-string/jumbo v1, ""

    .line 35
    .local v1, "corpId":Ljava/lang/String;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v8

    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v5

    .line 37
    .local v5, "session":Lhqe$d;
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "corpId"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 38
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "corpId"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "argCorpId":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1488
    iget-object v8, v5, Lhqe$d;->b:Ljava/lang/String;

    .line 39
    if-eqz v8, :cond_0

    .line 2488
    iget-object v8, v5, Lhqe$d;->b:Ljava/lang/String;

    .line 40
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 41
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v10, 0x8

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "invalid corpId: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 42
    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Data;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 95
    .end local v0    # "argCorpId":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 45
    .restart local v0    # "argCorpId":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 51
    .end local v0    # "argCorpId":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "users"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 52
    .local v7, "users":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v6, "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    .line 54
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 55
    .local v4, "jsonArrayLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_3

    .line 57
    :try_start_0
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 47
    .end local v3    # "i":I
    .end local v4    # "jsonArrayLength":I
    .end local v6    # "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "users":Lorg/json/JSONArray;
    :cond_2
    if-eqz v5, :cond_1

    .line 3488
    iget-object v8, v5, Lhqe$d;->b:Ljava/lang/String;

    .line 47
    if-eqz v8, :cond_1

    .line 4488
    iget-object v1, v5, Lhqe$d;->b:Ljava/lang/String;

    .line 48
    goto :goto_1

    .line 58
    .restart local v3    # "i":I
    .restart local v4    # "jsonArrayLength":I
    .restart local v6    # "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "users":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 63
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "i":I
    .end local v4    # "jsonArrayLength":I
    :cond_3
    if-eqz v7, :cond_4

    .line 64
    const-class v8, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-static {v8}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    new-instance v9, Lcom/alibaba/lightapp/runtime/plugin/biz/Data$1;

    invoke-direct {v9, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Data$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Data;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v8, v1, v6, v9}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidEmployeListMapByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V

    .line 95
    :cond_4
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v8

    goto :goto_0
.end method
