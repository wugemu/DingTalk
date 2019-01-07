.class public Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;
.super Lcom/taobao/weex/common/WXModule;
.source "UniWeexBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge$a;
    }
.end annotation


# instance fields
.field private mPluginManager:Lhgs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 20
    new-instance v0, Lhgs;

    invoke-direct {v0}, Lhgs;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;->mPluginManager:Lhgs;

    .line 78
    return-void
.end method


# virtual methods
.method public exec(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 17
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 30
    :cond_0
    :try_start_0
    const-string/jumbo v2, "jsApi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 31
    .local v9, "api":Ljava/lang/String;
    const-string/jumbo v2, "args"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 33
    .local v10, "args":Lcom/alibaba/fastjson/JSONObject;
    new-instance v8, Lhgp;

    invoke-direct {v8, v9, v10}, Lhgp;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 34
    .local v8, "actionRequest":Lhgp;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 35
    .local v12, "ctx":Landroid/content/Context;
    if-eqz v12, :cond_1

    instance-of v2, v12, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 36
    check-cast v12, Landroid/app/Activity;

    .line 1034
    .end local v12    # "ctx":Landroid/content/Context;
    iput-object v12, v8, Lhgp;->c:Landroid/app/Activity;

    .line 39
    :cond_1
    new-instance v11, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge$a;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v1}, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge$a;-><init>(Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 41
    .local v11, "bridgeCallback":Lhgr;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;->mPluginManager:Lhgs;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1182
    :try_start_1
    new-instance v7, Lhgo;

    invoke-direct {v7, v11}, Lhgo;-><init>(Lhgr;)V

    .line 2030
    iget-object v2, v8, Lhgp;->c:Landroid/app/Activity;

    .line 2063
    iput-object v2, v7, Lhgo;->a:Landroid/app/Activity;

    .line 3022
    iget-object v2, v8, Lhgp;->a:Ljava/lang/String;

    .line 1043
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1044
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1046
    const/4 v2, 0x2

    const-string/jumbo v3, "cannot find separator"

    invoke-virtual {v7, v2, v3}, Lhgo;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1085
    :catch_0
    move-exception v2

    .line 1086
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 43
    .end local v8    # "actionRequest":Lhgp;
    .end local v9    # "api":Ljava/lang/String;
    .end local v10    # "args":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "bridgeCallback":Lhgr;
    :catch_1
    move-exception v13

    .line 44
    .local v13, "t":Ljava/lang/Throwable;
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1050
    .end local v13    # "t":Ljava/lang/Throwable;
    .restart local v8    # "actionRequest":Lhgp;
    .restart local v9    # "api":Ljava/lang/String;
    .restart local v10    # "args":Lcom/alibaba/fastjson/JSONObject;
    .restart local v11    # "bridgeCallback":Lhgr;
    :cond_2
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1051
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1053
    invoke-virtual {v3, v5}, Lhgs;->a(Ljava/lang/String;)Lhgk;

    move-result-object v4

    .line 1054
    if-nez v4, :cond_3

    .line 1055
    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cannot find plugin:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Lhgo;->a(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1060
    :cond_3
    const/4 v2, 0x0

    .line 1062
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Lcom/alibaba/fastjson/JSONObject;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Lhgj;

    aput-object v16, v14, v15

    invoke-virtual {v5, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1063
    if-eqz v2, :cond_4

    const-class v5, Lcom/alibaba/lightapp/runtime/eapp/api/annotation/UniPluginAction;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result v5

    if-nez v5, :cond_4

    .line 1064
    const/4 v2, 0x0

    :cond_4
    move-object v5, v2

    .line 1068
    :goto_1
    if-nez v5, :cond_5

    .line 1069
    const/4 v2, 0x3

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cannot find method:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Lhgo;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v5

    move-object v5, v2

    goto :goto_1

    .line 3026
    :cond_5
    iget-object v6, v8, Lhgp;->b:Lcom/alibaba/fastjson/JSONObject;

    .line 1076
    const-class v2, Lcom/alibaba/lightapp/runtime/eapp/api/annotation/UniPluginAction;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/eapp/api/annotation/UniPluginAction;

    invoke-interface {v2}, Lcom/alibaba/lightapp/runtime/eapp/api/annotation/UniPluginAction;->uiThread()Z

    move-result v14

    .line 1078
    new-instance v2, Lhgs$1;

    invoke-direct/range {v2 .. v7}, Lhgs$1;-><init>(Lhgs;Lhgk;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/JSONObject;Lhgo;)V

    .line 3201
    if-eqz v14, :cond_6

    .line 3202
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcaa;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3205
    :cond_6
    const-string/jumbo v3, "UniPluginManager"

    const/16 v4, 0xa

    sget-object v5, Lcom/alibaba/doraemon/Priority;->HIGH:Lcom/alibaba/doraemon/Priority;

    invoke-static {v3, v4, v5}, Lhcn;->a(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    .line 3206
    invoke-interface {v3, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;->mPluginManager:Lhgs;

    invoke-virtual {v0}, Lhgs;->a()V

    .line 71
    return-void
.end method

.method public onActivityPause()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;->mPluginManager:Lhgs;

    invoke-virtual {v0}, Lhgs;->e()V

    .line 56
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;->mPluginManager:Lhgs;

    invoke-virtual {v0, p1, p2, p3}, Lhgs;->a(IILandroid/content/Intent;)V

    .line 76
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;->mPluginManager:Lhgs;

    invoke-virtual {v0}, Lhgs;->d()V

    .line 51
    return-void
.end method

.method public onActivityStart()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;->mPluginManager:Lhgs;

    invoke-virtual {v0}, Lhgs;->b()V

    .line 61
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;->mPluginManager:Lhgs;

    invoke-virtual {v0}, Lhgs;->c()V

    .line 66
    return-void
.end method
