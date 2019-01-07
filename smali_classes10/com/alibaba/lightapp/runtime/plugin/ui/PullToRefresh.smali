.class public Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;
.super Lcom/alibaba/lightapp/runtime/Component;
.source "PullToRefresh.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/lightapp/runtime/Component",
        "<",
        "Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENT_SWIPE_REFRESH:Ljava/lang/String; = "pullToRefresh"


# instance fields
.field private mIsEnabled:Z

.field private mRefreshCallbackId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Component;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->mIsEnabled:Z

    return-void
.end method


# virtual methods
.method public disable(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 62
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->mIsEnabled:Z

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->mRefreshCallbackId:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;

    .line 65
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;->setEnabled(Z)Z

    .line 68
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v1
.end method

.method public enable(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 50
    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->mIsEnabled:Z

    .line 51
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->mRefreshCallbackId:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;

    .line 53
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;->setEnabled(Z)Z

    .line 56
    :cond_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1
.end method

.method public getDelegateModelType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->mIsEnabled:Z

    return v0
.end method

.method public onRefresh()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->mIsEnabled:Z

    if-eqz v1, :cond_0

    .line 35
    const-string/jumbo v1, "pullToRefresh"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 36
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 37
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 38
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->mRefreshCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 40
    .end local v0    # "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_0
    return-void
.end method

.method public setColors(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    :try_start_0
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "colors"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 76
    .local v3, "jsonColors":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v0, v6, [I

    .line 77
    .local v0, "colors":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 78
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    const/4 v5, 0x0

    .line 81
    .local v5, "result":Z
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;

    .line 82
    .local v4, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;
    if-eqz v4, :cond_1

    .line 83
    invoke-virtual {v4, v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;->setColors([I)Z

    move-result v5

    .line 85
    :cond_1
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v6, v7, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "colors":[I
    .end local v2    # "i":I
    .end local v3    # "jsonColors":Lorg/json/JSONArray;
    .end local v4    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;
    .end local v5    # "result":Z
    :goto_1
    return-object v6

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 88
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v8, 0x2

    .line 89
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method public start(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;

    .line 98
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;
    if-eqz v0, :cond_0

    .line 99
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;->setRefreshing(Z)Z

    move-result v1

    .line 101
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Z)V

    return-object v2
.end method

.method public stop(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/PullToRefresh;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;

    .line 109
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;
    if-eqz v0, :cond_0

    .line 110
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;->setRefreshing(Z)Z

    move-result v1

    .line 112
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Z)V

    return-object v2
.end method
