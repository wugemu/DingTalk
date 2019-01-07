.class public Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;
.super Lcom/taobao/windmill/module/base/JSBridge;
.source "BroadcastBridge.java"


# static fields
.field private static final CHANNEL_INSTANCE_ID:Ljava/lang/String; = "instanceId"

.field private static final CHANNEL_KEY:Ljava/lang/String; = "name"

.field private static final CHANNEL_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"


# instance fields
.field private messageTokenChannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lhsd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/taobao/windmill/module/base/JSBridge;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->messageTokenChannels:Ljava/util/Map;

    return-void
.end method

.method private _onMessage_(ILjrh;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "context"    # Ljrh;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->messageTokenChannels:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->messageTokenChannels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsd;

    .line 120
    .local v0, "messageChannel":Lhsd;
    if-nez v0, :cond_2

    .line 121
    if-eqz p2, :cond_0

    .line 122
    const-string/jumbo v1, "-1 "

    const-string/jumbo v2, "channel token not exist"

    invoke-direct {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->generateMsg(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljrh;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_2
    new-instance v1, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge$1;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge$1;-><init>(Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;Ljrh;)V

    .line 1035
    iput-object v1, v0, Lhsd;->c:Lhsd$a;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->generateMsg(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private generateMsg(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 25
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "result"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string/jumbo v1, "message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-object v0
.end method


# virtual methods
.method public close(Ljava/util/Map;Ljrh;)V
    .locals 5
    .param p2, "context"    # Ljrh;
    .annotation runtime Lcom/taobao/windmill/module/base/JSBridgeMethod;
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

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "instanceId"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 100
    if-eqz p2, :cond_0

    .line 101
    const-string/jumbo v3, "-1"

    const-string/jumbo v4, " post message args error"

    invoke-direct {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->generateMsg(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljrh;->b(Ljava/lang/Object;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 106
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "instanceId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 107
    .local v2, "token":I
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->messageTokenChannels:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsd;

    .line 108
    .local v0, "channel":Lhsd;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lhsd;->a()V

    .line 110
    if-eqz p2, :cond_0

    .line 111
    const-string/jumbo v3, "0"

    const-string/jumbo v4, " close channel success"

    invoke-direct {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->generateMsg(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public createChannel(Ljava/util/Map;Ljrh;)V
    .locals 6
    .param p2, "context"    # Ljrh;
    .annotation runtime Lcom/taobao/windmill/module/base/JSBridgeMethod;
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "name"

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "instanceId"

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 33
    :cond_0
    const-string/jumbo v4, "createChannel error:"

    const-string/jumbo v5, " channel args error"

    invoke-direct {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->generateMsg(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljrh;->b(Ljava/lang/Object;)V

    .line 54
    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 38
    .local v1, "json":Lorg/json/JSONObject;
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->messageTokenChannels:Ljava/util/Map;

    if-nez v4, :cond_2

    .line 40
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->messageTokenChannels:Ljava/util/Map;

    .line 42
    :cond_2
    const-string/jumbo v4, "name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "channel":Ljava/lang/String;
    const-string/jumbo v4, "instanceId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 44
    .local v3, "token":I
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->messageTokenChannels:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 45
    const-string/jumbo v4, "-1"

    const-string/jumbo v5, " channel error token has been used"

    invoke-direct {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->generateMsg(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljrh;->b(Ljava/lang/Object;)V

    .line 46
    monitor-exit p0

    goto :goto_0

    .line 54
    .end local v0    # "channel":Ljava/lang/String;
    .end local v3    # "token":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 49
    .restart local v0    # "channel":Ljava/lang/String;
    .restart local v3    # "token":I
    :cond_3
    :try_start_1
    new-instance v2, Lhsd;

    invoke-virtual {p2}, Ljrh;->a()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v0, v5}, Lhsd;-><init>(Landroid/content/Context;Ljava/lang/String;Lhsd$a;)V

    .line 50
    .local v2, "messageChannel":Lhsd;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->messageTokenChannels:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v4, "0"

    const-string/jumbo v5, " channel create success"

    invoke-direct {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->generateMsg(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljrh;->a(Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0, v3, p2}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->_onMessage_(ILjrh;)V

    .line 54
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onMessage(Ljava/util/Map;Ljrh;)V
    .locals 4
    .param p2, "context"    # Ljrh;
    .annotation runtime Lcom/taobao/windmill/module/base/JSBridgeMethod;
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "instanceId"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    const-string/jumbo v2, "-1:"

    const-string/jumbo v3, " channel id is null"

    invoke-direct {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->generateMsg(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljrh;->b(Ljava/lang/Object;)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 64
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "instanceId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "token":I
    invoke-direct {p0, v1, p2}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->_onMessage_(ILjrh;)V

    goto :goto_0
.end method

.method public postMessage(Ljava/util/Map;Ljrh;)V
    .locals 6
    .param p2, "context"    # Ljrh;
    .annotation runtime Lcom/taobao/windmill/module/base/JSBridgeMethod;
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->messageTokenChannels:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 71
    const-string/jumbo v4, "-1:"

    const-string/jumbo v5, " message queue is null"

    invoke-direct {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->generateMsg(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljrh;->b(Ljava/lang/Object;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string/jumbo v4, "instanceId"

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 76
    const-string/jumbo v4, "-1:"

    const-string/jumbo v5, " channel id is null"

    invoke-direct {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->generateMsg(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljrh;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 82
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "instanceId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 83
    .local v3, "token":I
    const-string/jumbo v4, "message"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 84
    .local v1, "message":Ljava/lang/Object;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->messageTokenChannels:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhsd;

    .line 85
    .local v2, "messageChannel":Lhsd;
    if-nez v2, :cond_3

    .line 86
    if-eqz p2, :cond_0

    .line 87
    const-string/jumbo v4, "-1"

    const-string/jumbo v5, " channel token not exist"

    invoke-direct {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->generateMsg(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljrh;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 1020
    :cond_3
    iget-object v4, v2, Lhsd;->b:Landroid/content/Context;

    invoke-static {v4}, Lhse;->a(Landroid/content/Context;)Lhse;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lhse;->a(Lhsd;Ljava/lang/Object;)V

    .line 92
    if-eqz p2, :cond_0

    .line 93
    const-string/jumbo v4, "0"

    const-string/jumbo v5, " post message success"

    invoke-direct {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->generateMsg(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
