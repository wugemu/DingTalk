.class public Lcom/alibaba/lightapp/runtime/plugin/runtime/RuntimeInfo;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "RuntimeInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public status(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/runtime/RuntimeInfo;->getIPluginManagerContext()Lhde;

    move-result-object v0

    .line 21
    .local v0, "impl":Lhde;
    invoke-static {}, Lhqi;->a()Lhqi;

    move-result-object v3

    invoke-virtual {v3, v0}, Lhqi;->a(Ljava/lang/Object;)I

    move-result v1

    .line 22
    .local v1, "pageStatus":I
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .local v2, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "status"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string/jumbo v3, "keepAlive"

    :goto_0
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_1
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    return-object v3

    .line 24
    :cond_0
    :try_start_1
    const-string/jumbo v3, "active"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method
