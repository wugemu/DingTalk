.class public Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "InternalRedPacket.java"


# static fields
.field private static final TRACE_PREFIX:Ljava/lang/String; = "[InternalRedPacket]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public nav2RedPacket(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 97
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v4, "f_js_api_pick_rp"

    .line 1083
    invoke-virtual {v1, v4, v9}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 97
    if-nez v1, :cond_0

    .line 98
    const-string/jumbo v1, "redpackets"

    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v5, "[InternalRedPacket]"

    aput-object v5, v4, v10

    const-string/jumbo v5, "nav2RedPacket disable,just return error"

    aput-object v5, v4, v9

    .line 99
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-static {v1, v8, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {v12, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 125
    :goto_0
    return-object v1

    .line 102
    :cond_0
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 103
    const-string/jumbo v1, "redpackets"

    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v5, "[InternalRedPacket]"

    aput-object v5, v4, v10

    const-string/jumbo v5, "nav2RedPacket args is null"

    aput-object v5, v4, v9

    .line 104
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-static {v1, v8, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {v12, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "senderId"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 108
    .local v2, "senderId":J
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "clusterId"

    invoke-virtual {v1, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "clusterId":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    :cond_2
    const-string/jumbo v1, "redpackets"

    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v5, "[InternalRedPacket]"

    aput-object v5, v4, v10

    const-string/jumbo v5, "nav2RedPacket args senderId is <= 0 or clusterId is null"

    aput-object v5, v4, v9

    .line 111
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-static {v1, v8, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {v12, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 115
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket$1;

    invoke-direct {v4, p0, v2, v3, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;JLjava/lang/String;)V

    invoke-virtual {v1, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 121
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto/16 :goto_0

    .line 123
    :cond_4
    const-string/jumbo v1, "redpackets"

    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v5, "[InternalRedPacket]"

    aput-object v5, v4, v10

    const-string/jumbo v5, "nav2RedPacket context is not activity"

    aput-object v5, v4, v9

    .line 124
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-static {v1, v8, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {v12, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalRedPacket;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 78
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 133
    return-void
.end method
