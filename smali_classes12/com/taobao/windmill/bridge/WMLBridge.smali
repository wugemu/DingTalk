.class public Lcom/taobao/windmill/bridge/WMLBridge;
.super Ljava/lang/Object;
.source "WMLBridge.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method


# virtual methods
.method public native createAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public native destoryAppContext(Ljava/lang/String;)I
.end method

.method public dispatchMessage(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 7
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "params"    # [B
    .param p4, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    invoke-static {}, Ljpl;->a()Ljpl;

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    .line 2169
    iget-object v6, v1, Ljpl;->a:Landroid/os/Handler;

    new-instance v0, Ljpl$5;

    move-object v2, p2

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljpl$5;-><init>(Ljpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method public native execJsOnApp(Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I
.end method

.method public native execJsOnAppWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation
.end method

.method public native initAppFramework(Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I
.end method

.method public postMessage(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "data"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    invoke-static {}, Ljpl;->a()Ljpl;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    .line 1181
    iget-object v2, v0, Ljpl;->a:Landroid/os/Handler;

    new-instance v3, Ljpl$6;

    invoke-direct {v3, v0, p1, v1}, Ljpl$6;-><init>(Ljpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method
