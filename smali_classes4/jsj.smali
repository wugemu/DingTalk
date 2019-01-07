.class public final Ljsj;
.super Ljsi;
.source "InnerBridgeInvoker.java"


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/windmill/module/base/JSBridge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljrz;Ljava/lang/String;)V
    .locals 1
    .param p1, "instance"    # Ljrz;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljsi;-><init>(Ljrz;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljsj;->c:Ljava/util/Map;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljrm;)Ljava/lang/Object;
    .locals 14
    .param p1, "params"    # Ljrm;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 31
    iget-object v1, p1, Ljrm;->b:Ljava/lang/String;

    invoke-static {v1}, Ljrq;->b(Ljava/lang/String;)Ljrr;

    move-result-object v7

    .line 32
    .local v7, "bridge":Ljrr;
    if-nez v7, :cond_0

    .line 33
    const/4 v1, 0x0

    .line 2037
    :goto_0
    return-object v1

    .line 35
    :cond_0
    new-instance v0, Ljro;

    iget-object v1, p0, Ljsj;->a:Ljrz;

    invoke-interface {v1}, Ljrz;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljsj;->b:Ljava/lang/String;

    iget-object v3, p1, Ljrm;->b:Ljava/lang/String;

    iget-object v4, p1, Ljrm;->c:Ljava/lang/String;

    iget-object v5, p1, Ljrm;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ljro;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .local v0, "promise":Ljro;
    iget-object v1, p0, Ljsj;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljsj;->a(Ljava/lang/String;)Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    move-result-object v13

    .line 37
    .local v13, "wxsdkInstance":Lcom/taobao/weex/WXSDKInstance;
    new-instance v9, Ljsh;

    invoke-direct {v9, v13, v0}, Ljsh;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljro;)V

    .line 39
    .local v9, "context":Ljsh;
    invoke-virtual {v13}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljsh;->a(Landroid/content/Context;)Ljrh;

    move-result-object v1

    .line 40
    invoke-virtual {v13}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljrh;->a(Ljava/lang/String;)Ljrh;

    move-result-object v1

    new-instance v2, Ljrw;

    iget-object v3, p0, Ljsj;->a:Ljrz;

    .line 41
    invoke-interface {v3}, Ljrz;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljsj;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljrw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    iput-object v2, v1, Ljrh;->a:Ljrh$a;

    .line 45
    :try_start_0
    iget-object v1, p1, Ljrm;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 56
    .local v6, "args":Lcom/alibaba/fastjson/JSONObject;
    :try_start_1
    iget-object v1, p0, Ljsj;->c:Ljava/util/Map;

    iget-object v2, p1, Ljrm;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/windmill/module/base/JSBridge;

    .line 57
    .local v8, "bridgeInstance":Lcom/taobao/windmill/module/base/JSBridge;
    if-nez v8, :cond_1

    .line 58
    invoke-interface {v7}, Ljrr;->a()Lcom/taobao/windmill/module/base/JSBridge;

    move-result-object v8

    .line 59
    iget-object v1, p0, Ljsj;->c:Ljava/util/Map;

    iget-object v2, p1, Ljrm;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1
    iget-object v1, p1, Ljrm;->c:Ljava/lang/String;

    invoke-interface {v7, v1}, Ljrr;->a(Ljava/lang/String;)Ljru;

    move-result-object v1

    .line 2025
    iget-boolean v2, v1, Ljru;->b:Z

    if-eqz v2, :cond_3

    .line 2026
    invoke-static {}, Ljsb;->a()Ljsb;

    move-result-object v2

    new-instance v3, Ljru$1;

    invoke-direct {v3, v1, v8, v6, v9}, Ljru$1;-><init>(Ljru;Ljava/lang/Object;Ljava/util/Map;Ljrh;)V

    .line 2110
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v1, v4, :cond_2

    .line 2111
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2039
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 46
    .end local v6    # "args":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "bridgeInstance":Lcom/taobao/windmill/module/base/JSBridge;
    :catch_0
    move-exception v12

    .line 47
    .local v12, "t":Ljava/lang/Throwable;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v11, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "FAILED"

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "params is not a json object"

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v0, v11}, Ljro;->b(Ljava/lang/Object;)V

    .line 52
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2113
    .end local v11    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "t":Ljava/lang/Throwable;
    .restart local v6    # "args":Lcom/alibaba/fastjson/JSONObject;
    .restart local v8    # "bridgeInstance":Lcom/taobao/windmill/module/base/JSBridge;
    :cond_2
    :try_start_2
    iget-object v1, v2, Ljsb;->c:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 62
    .end local v8    # "bridgeInstance":Lcom/taobao/windmill/module/base/JSBridge;
    :catch_1
    move-exception v10

    .line 63
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2037
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "bridgeInstance":Lcom/taobao/windmill/module/base/JSBridge;
    :cond_3
    :try_start_3
    iget-object v1, v1, Ljru;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    invoke-virtual {v1, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto/16 :goto_0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 81
    .line 82
    move-object v0, p3

    .local v0, "res":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "res":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    .restart local v0    # "res":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v1, "requestCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string/jumbo v1, "resultCode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Ljsj;->a:Ljrz;

    invoke-interface {v1}, Ljrz;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 88
    invoke-super {p0, p1, p2, p3}, Ljsi;->a(IILandroid/content/Intent;)V

    .line 89
    return-void
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 70
    invoke-super {p0}, Ljsi;->f()V

    .line 71
    iget-object v1, p0, Ljsj;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Ljsj;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 73
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/windmill/module/base/JSBridge;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/windmill/module/base/JSBridge;

    invoke-virtual {v1}, Lcom/taobao/windmill/module/base/JSBridge;->onDestroy()V

    goto :goto_0

    .line 75
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/windmill/module/base/JSBridge;>;"
    :cond_0
    iget-object v1, p0, Ljsj;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 77
    :cond_1
    return-void
.end method
