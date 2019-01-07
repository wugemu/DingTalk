.class public final Lhfr;
.super Ljava/lang/Object;
.source "FastHpmConfigHandler.java"

# interfaces
.implements Lhfq;


# static fields
.field private static a:Lhfr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lhfq;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lhfr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhfr;->a:Lhfr;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lhfr;

    invoke-direct {v0}, Lhfr;-><init>()V

    sput-object v0, Lhfr;->a:Lhfr;

    .line 48
    :cond_0
    sget-object v0, Lhfr;->a:Lhfr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 53
    const-string/jumbo v3, "WebConfig"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "FastHpmConfigHandler-handleConfig"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p1, v8, v5

    invoke-static {v3, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1154
    const-class v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v6, "dt_function"

    const-string/jumbo v7, "dt_fuc_fastConfig_hpm_demotion_v352_disabled"

    invoke-interface {v3, v6, v7}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v3

    .line 1155
    if-eqz v3, :cond_2

    .line 1156
    invoke-interface {v3}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 1157
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1158
    invoke-static {v3}, Ligb;->f(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 55
    :goto_0
    if-nez v3, :cond_3

    .line 56
    const-string/jumbo v3, "WebConfig"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "FastHpmConfigHandler-handleConfig switch off"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v5

    .line 1158
    goto :goto_0

    :cond_2
    move v3, v4

    .line 1161
    goto :goto_0

    .line 60
    :cond_3
    const/4 v0, 0x0

    .line 62
    .local v0, "configData":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    invoke-static {p1}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2075
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "WebConfig"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "FastHpmConfigHandler-requestData"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v3, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2077
    const-string/jumbo v3, "REQUEST"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/request/Request;

    .line 2078
    const-string/jumbo v5, "User-Agent"

    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/alibaba/doraemon/request/Request;->setRequestParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 2079
    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 2080
    invoke-interface {v3, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 2081
    new-instance v4, Lhfr$1;

    invoke-direct {v4, p0}, Lhfr$1;-><init>(Lhfr;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 2103
    invoke-interface {v3}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto :goto_1

    .line 64
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Lcom/alibaba/fastjson/JSONException;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto :goto_2
.end method
