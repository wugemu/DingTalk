.class public Ljpl;
.super Ljava/lang/Object;
.source "WMLBridgeManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljpl$a;
    }
.end annotation


# static fields
.field private static c:Ljpl;


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Ljpj;

.field private d:Lcom/taobao/windmill/bridge/WMLBridge;

.field private e:Landroid/os/Handler;

.field private f:Ljpn;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/taobao/windmill/bridge/WMLBridge;

    invoke-direct {v0}, Lcom/taobao/windmill/bridge/WMLBridge;-><init>()V

    iput-object v0, p0, Ljpl;->d:Lcom/taobao/windmill/bridge/WMLBridge;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->getJSLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ljpl;->e:Landroid/os/Handler;

    .line 44
    new-instance v0, Ljpn;

    const-string/jumbo v1, "WMLBridgeThread"

    invoke-direct {v0, v1}, Ljpn;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljpl;->f:Ljpn;

    .line 45
    iget-object v0, p0, Ljpl;->f:Ljpn;

    .line 1026
    iget-object v0, v0, Ljpn;->a:Landroid/os/Handler;

    .line 45
    iput-object v0, p0, Ljpl;->a:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method static synthetic a(Ljpl;)Lcom/taobao/windmill/bridge/WMLBridge;
    .locals 1
    .param p0, "x0"    # Ljpl;

    .prologue
    .line 18
    iget-object v0, p0, Ljpl;->d:Lcom/taobao/windmill/bridge/WMLBridge;

    return-object v0
.end method

.method public static a()Ljpl;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Ljpl;->c:Ljpl;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Ljpl;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Ljpl;->c:Ljpl;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljpl;

    invoke-direct {v0}, Ljpl;-><init>()V

    sput-object v0, Ljpl;->c:Ljpl;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Ljpl;->c:Ljpl;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 193
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method static synthetic a(Ljpl;Ljava/util/Map;)[Lcom/taobao/weex/bridge/WXJSObject;
    .locals 5
    .param p0, "x0"    # Ljpl;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 18
    .line 3069
    if-eqz p1, :cond_1

    .line 3070
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3071
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3072
    new-instance v3, Lcom/taobao/weex/bridge/WXJSObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(Ljava/lang/Object;)V

    .line 3073
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/taobao/weex/bridge/WXJSObject;->key:Ljava/lang/String;

    .line 3074
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3076
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/taobao/weex/bridge/WXJSObject;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/bridge/WXJSObject;

    :goto_1
    return-object v0

    .line 3078
    :cond_1
    const/4 v0, 0x0

    .line 18
    goto :goto_1
.end method

.method static synthetic b(Ljpl;)Ljpj;
    .locals 1
    .param p0, "x0"    # Ljpl;

    .prologue
    .line 18
    iget-object v0, p0, Ljpl;->b:Ljpj;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x2

    .line 148
    const-string/jumbo v0, "__receive_message__"

    .line 2160
    new-array v1, v4, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v2, 0x0

    new-instance v3, Lcom/taobao/weex/bridge/WXJSObject;

    invoke-direct {v3, v4, p2}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v4, 0x3

    .line 2162
    invoke-static {p3}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    aput-object v3, v1, v2

    .line 2164
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Ljpl;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Ljpl$a;)V

    .line 2165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "call js: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] with data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Ljpl$a;)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;
    .param p3, "args"    # [Lcom/taobao/weex/bridge/WXJSObject;
    .param p4, "callback"    # Ljpl$a;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 121
    new-instance v0, Ljpl$3;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ljpl$3;-><init>(Ljpl;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Ljpl$a;)V

    .line 1193
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method
