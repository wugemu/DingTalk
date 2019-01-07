.class public Lcom/taobao/windmill/bundle/container/jsbridge/WindmillEnv;
.super Lcom/taobao/windmill/bundle/container/jsbridge/ContainerBaseBridge;
.source "WindmillEnv.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/jsbridge/ContainerBaseBridge;-><init>()V

    return-void
.end method


# virtual methods
.method public isWindmill(Ljava/util/Map;Ljrh;)V
    .locals 1
    .param p2, "context"    # Ljrh;
    .annotation runtime Lcom/taobao/windmill/module/base/JSBridgeMethod;
        uiThread = true
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

    .prologue
    .line 16
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Ljqd;

    if-eqz v0, :cond_0

    .line 17
    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljrh;->a(Ljava/lang/Object;)V

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljrh;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method
