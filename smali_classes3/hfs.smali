.class public final Lhfs;
.super Ljava/lang/Object;
.source "FastWebConfigHandler.java"

# interfaces
.implements Lhfq;


# static fields
.field private static a:Lhfs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lhfq;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lhfs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhfs;->a:Lhfs;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lhfs;

    invoke-direct {v0}, Lhfs;-><init>()V

    sput-object v0, Lhfs;->a:Lhfs;

    .line 42
    :cond_0
    sget-object v0, Lhfs;->a:Lhfs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 47
    const-string/jumbo v3, "WebConfig"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "FastWebConfigHandler-handleConfig"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "configData":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    invoke-static {p1}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1063
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "WebConfig"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "FastWebConfigHandler-requestData"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1065
    const-string/jumbo v3, "REQUEST"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/request/Request;

    .line 1066
    const-string/jumbo v4, "User-Agent"

    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alibaba/doraemon/request/Request;->setRequestParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 1067
    invoke-interface {v3, v7}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 1068
    invoke-interface {v3, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 1069
    new-instance v4, Lhfs$1;

    invoke-direct {v4, p0}, Lhfs$1;-><init>(Lhfs;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 1091
    invoke-interface {v3}, Lcom/alibaba/doraemon/request/Request;->start()V

    .line 60
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Lcom/alibaba/fastjson/JSONException;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto :goto_0
.end method
