.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Intent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Intent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->cleanData()V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private checkHost(Lcom/alibaba/lightapp/runtime/ActionRequest;)Z
    .locals 11
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "url"

    invoke-static {v6, v7}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "originUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    .local v1, "originUri":Landroid/net/Uri;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 104
    .local v5, "reqUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 106
    .local v4, "reqUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "originHost":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "reqHost":Ljava/lang/String;
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "Intent"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "originHost ="

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "reqHost= "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v3, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    return v6
.end method

.method private cleanData()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_IM_MESSAGE_CONTENT"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_IM_CONVERSATION_NAME"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_IM_CONVERSATION_ID"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_IM_ORGID"

    invoke-static {v0, v1, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_IM_MESSAGE_ID"

    invoke-static {v0, v1, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "url"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public fetchData(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->checkHost(Lcom/alibaba/lightapp/runtime/ActionRequest;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v6, "EXTRA_IM_CONVERSATION_ID"

    invoke-static {v3, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "chatId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v6, "EXTRA_IM_ORGID"

    const-wide/16 v8, 0x0

    invoke-static {v3, v6, v8, v9}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 37
    .local v4, "orgId":J
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "corpId":Ljava/lang/String;
    new-instance v2, Lhqt;

    invoke-direct {v2}, Lhqt;-><init>()V

    .line 39
    .local v2, "oapiAPI":Lhqs;
    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v2, v1, v0, v3}, Lhqs;->d(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 79
    .end local v0    # "chatId":Ljava/lang/String;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v2    # "oapiAPI":Lhqs;
    .end local v4    # "orgId":J
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    return-object v3

    .line 76
    :cond_0
    const/4 v3, 0x3

    const-string/jumbo v6, "check url fail"

    invoke-static {v3, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Intent;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
