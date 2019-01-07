.class public Lcom/alibaba/lightapp/runtime/plugin/channel/Open;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Open.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/channel/Open;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/channel/Open;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/channel/Open;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/channel/Open;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/channel/Open;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/channel/Open;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/channel/Open;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/channel/Open;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/channel/Open;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/channel/Open;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/channel/Open;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/channel/Open;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public profile(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    :try_start_0
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "emplId"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 29
    .local v7, "staffId":Ljava/lang/String;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v9

    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 30
    invoke-virtual {v9, v10}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v3

    .line 31
    .local v3, "session":Lhqe$d;
    if-eqz v3, :cond_0

    .line 1488
    iget-object v6, v3, Lhqe$d;->b:Ljava/lang/String;

    .line 32
    .local v6, "sessionCorpId":Ljava/lang/String;
    :goto_0
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "corpId"

    const-string/jumbo v11, ""

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "argCorpId":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 35
    move-object v1, v0

    .line 44
    .local v1, "corpId":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->f(Ljava/lang/String;)J

    move-result-wide v4

    .line 45
    .local v4, "orgId":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v8, "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v9

    new-instance v10, Lcom/alibaba/lightapp/runtime/plugin/channel/Open$1;

    invoke-direct {v10, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/channel/Open$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/channel/Open;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {v9, v4, v5, v8, v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(JLjava/util/List;Lcma;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v9

    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v3    # "session":Lhqe$d;
    .end local v4    # "orgId":J
    .end local v6    # "sessionCorpId":Ljava/lang/String;
    .end local v7    # "staffId":Ljava/lang/String;
    .end local v8    # "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return-object v9

    .line 31
    .restart local v3    # "session":Lhqe$d;
    .restart local v7    # "staffId":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 37
    .restart local v0    # "argCorpId":Ljava/lang/String;
    .restart local v6    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 38
    move-object v1, v6

    .restart local v1    # "corpId":Ljava/lang/String;
    goto :goto_1

    .line 40
    .end local v1    # "corpId":Ljava/lang/String;
    :cond_2
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v11, 0x8

    invoke-static {v11, v0}, Lcom/alibaba/lightapp/runtime/plugin/channel/Open;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 71
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v3    # "session":Lhqe$d;
    .end local v6    # "sessionCorpId":Ljava/lang/String;
    .end local v7    # "staffId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 73
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_2
.end method
