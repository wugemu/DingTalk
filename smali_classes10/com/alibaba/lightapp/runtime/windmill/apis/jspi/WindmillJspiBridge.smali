.class public Lcom/alibaba/lightapp/runtime/windmill/apis/jspi/WindmillJspiBridge;
.super Lcom/taobao/windmill/module/base/JSBridge;
.source "WindmillJspiBridge.java"


# static fields
.field private static final ACTION_KEY:Ljava/lang/String; = "action"

.field private static final ARGS_KEY:Ljava/lang/String; = "args"

.field private static final PLUGIN_KEY:Ljava/lang/String; = "plugin"


# instance fields
.field private mPluginManager:Lhsg;

.field private mWMLInstance:Lhsf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/taobao/windmill/module/base/JSBridge;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/Map;Ljrh;)V
    .locals 13
    .param p2, "context"    # Ljrh;
    .annotation runtime Lcom/taobao/windmill/module/base/JSBridgeMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljrh;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "plugin"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    const-string/jumbo v0, "plugin params lost"

    invoke-virtual {p2, v0}, Ljrh;->b(Ljava/lang/Object;)V

    .line 81
    :goto_0
    return-void

    .line 39
    :cond_0
    const-string/jumbo v0, "action"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 40
    const-string/jumbo v0, "action params lost"

    invoke-virtual {p2, v0}, Ljrh;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :cond_1
    const-string/jumbo v0, "args"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "args"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_2

    .line 44
    const-string/jumbo v0, "args params should be map"

    invoke-virtual {p2, v0}, Ljrh;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_2
    const-string/jumbo v0, "args"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 48
    .local v9, "args":Ljava/util/Map;
    if-nez v9, :cond_3

    .line 49
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "args":Ljava/util/Map;
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 52
    .restart local v9    # "args":Ljava/util/Map;
    :cond_3
    const-string/jumbo v0, "plugin"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "serviceName":Ljava/lang/String;
    const-string/jumbo v0, "action"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "actionName":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 56
    .local v4, "argsJson":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 61
    :goto_1
    invoke-virtual {p2}, Ljrh;->b()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "url":Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 63
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Ljqd;

    .line 64
    .local v11, "wmlContext":Ljqd;
    invoke-interface {v11}, Ljqd;->getAppCode()Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v8

    .line 65
    .local v8, "appCodeModel":Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    if-eqz v8, :cond_4

    .line 66
    iget-object v1, v8, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->orgUrl:Ljava/lang/String;

    .line 70
    .end local v8    # "appCodeModel":Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .end local v11    # "wmlContext":Ljqd;
    :cond_4
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/jspi/WindmillJspiBridge;->mWMLInstance:Lhsf;

    if-nez v0, :cond_5

    .line 71
    new-instance v0, Lhsf;

    invoke-direct {v0}, Lhsf;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/jspi/WindmillJspiBridge;->mWMLInstance:Lhsf;

    .line 73
    :cond_5
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/jspi/WindmillJspiBridge;->mWMLInstance:Lhsf;

    .line 1100
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    sget v7, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v6, v7, :cond_7

    if-eqz p2, :cond_6

    .line 1101
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1102
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/lightapp/runtime/weex/activity/IDDWMLContext;

    if-nez v6, :cond_7

    .line 1103
    :cond_6
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v6, "context must be IDDWMLContext"

    invoke-direct {v0, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    .end local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 58
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1105
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v1    # "url":Ljava/lang/String;
    :cond_7
    iput-object p2, v0, Lhsf;->a:Ljrh;

    .line 74
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/jspi/WindmillJspiBridge;->mWMLInstance:Lhsf;

    .line 1109
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1110
    const-string/jumbo v7, "-"

    const-string/jumbo v12, ""

    invoke-virtual {v6, v7, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1111
    iget-object v0, v0, Lhsf;->b:Ljava/util/Map;

    invoke-interface {v0, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .local v5, "callbackId":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/jspi/WindmillJspiBridge;->mPluginManager:Lhsg;

    if-nez v0, :cond_8

    .line 76
    new-instance v0, Lhsg;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/jspi/WindmillJspiBridge;->mWMLInstance:Lhsf;

    invoke-direct {v0, v6}, Lhsg;-><init>(Lhsf;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/jspi/WindmillJspiBridge;->mPluginManager:Lhsg;

    .line 77
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/jspi/WindmillJspiBridge;->mPluginManager:Lhsg;

    sget-object v6, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 1184
    iput-object v6, v0, Lcom/alibaba/lightapp/runtime/PluginManager;->f:Ljava/util/concurrent/Executor;

    .line 80
    :cond_8
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/jspi/WindmillJspiBridge;->mPluginManager:Lhsg;

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-virtual/range {v0 .. v7}, Lhsg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    goto/16 :goto_0
.end method
