.class public Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Performance.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidatePanel(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$5;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 76
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v0
.end method

.method public setData(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 82
    .local v1, "data":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "data":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .restart local v1    # "data":Lorg/json/JSONObject;
    :cond_0
    move-object v0, v1

    .line 86
    .local v0, "d":Lorg/json/JSONObject;
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$6;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$6;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v2
.end method

.method public setPageLoadTime(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 31
    .local v0, "time":D
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;D)V

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 38
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v2
.end method

.method public setPageName(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$4;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v1
.end method

.method public setResourceLoadTime(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 44
    .local v0, "time":D
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;D)V

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 51
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v2
.end method

.method public showPanel(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 18
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Performance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 25
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v0
.end method
