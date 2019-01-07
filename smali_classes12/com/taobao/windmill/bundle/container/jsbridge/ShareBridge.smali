.class public Lcom/taobao/windmill/bundle/container/jsbridge/ShareBridge;
.super Lcom/taobao/windmill/module/base/JSBridge;
.source "ShareBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/taobao/windmill/module/base/JSBridge;-><init>()V

    return-void
.end method


# virtual methods
.method public doShare(Lcom/alibaba/fastjson/JSONObject;Ljrh;)V
    .locals 4
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "context"    # Ljrh;
    .annotation runtime Lcom/taobao/windmill/module/base/JSBridgeMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 19
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v2

    .line 1141
    iget-object v2, v2, Ljpo;->c:Ljpo$a;

    iget-object v1, v2, Ljpo$a;->f:Ljpy;

    .line 20
    .local v1, "shareAdapter":Ljpy;
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 22
    :try_start_0
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljpy;->share(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    new-instance v2, Lfk;

    invoke-direct {v2}, Lfk;-><init>()V

    invoke-virtual {p2, v2}, Ljrh;->a(Ljava/lang/Object;)V

    .line 33
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "Bridge"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object v2, Lcom/taobao/windmill/module/base/Status;->EXCEPTION:Lcom/taobao/windmill/module/base/Status;

    invoke-virtual {p2, v2}, Ljrh;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    sget-object v2, Lcom/taobao/windmill/module/base/Status;->NOT_SUPPORTED:Lcom/taobao/windmill/module/base/Status;

    invoke-virtual {p2, v2}, Ljrh;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method
