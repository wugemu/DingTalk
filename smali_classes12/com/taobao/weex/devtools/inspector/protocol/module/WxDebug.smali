.class public Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;
.super Ljava/lang/Object;
.source "WxDebug.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$Task;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$CallJS;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$CallNative;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$SyncCallResponseParams;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$SyncCallResponse;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WxDebug"

.field private static final sLevelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/utils/LogLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 39
    sput-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;->sLevelMap:Ljava/util/HashMap;

    const-string/jumbo v1, "all"

    sget-object v2, Lcom/taobao/weex/utils/LogLevel;->ALL:Lcom/taobao/weex/utils/LogLevel;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;->sLevelMap:Ljava/util/HashMap;

    const-string/jumbo v1, "verbose"

    sget-object v2, Lcom/taobao/weex/utils/LogLevel;->VERBOSE:Lcom/taobao/weex/utils/LogLevel;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;->sLevelMap:Ljava/util/HashMap;

    const-string/jumbo v1, "info"

    sget-object v2, Lcom/taobao/weex/utils/LogLevel;->INFO:Lcom/taobao/weex/utils/LogLevel;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;->sLevelMap:Ljava/util/HashMap;

    const-string/jumbo v1, "debug"

    sget-object v2, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;->sLevelMap:Ljava/util/HashMap;

    const-string/jumbo v1, "warn"

    sget-object v2, Lcom/taobao/weex/utils/LogLevel;->WARN:Lcom/taobao/weex/utils/LogLevel;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;->sLevelMap:Ljava/util/HashMap;

    const-string/jumbo v1, "error"

    sget-object v2, Lcom/taobao/weex/utils/LogLevel;->ERROR:Lcom/taobao/weex/utils/LogLevel;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/taobao/weex/devtools/json/ObjectMapper;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/json/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    .line 51
    return-void
.end method


# virtual methods
.method public callAddElement(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WxDebug-new >>>> callAddElement="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 130
    if-nez p2, :cond_0

    .line 131
    const-string/jumbo v0, "WxDebug"

    const-string/jumbo v1, "callAddElement: params==null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string/jumbo v0, "instance"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "instanceInd":Ljava/lang/String;
    const-string/jumbo v0, "ref"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "ref":Ljava/lang/String;
    const-string/jumbo v0, "index"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "index":Ljava/lang/String;
    const-string/jumbo v0, "dom"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "dom":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v6

    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$2;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public callAddEvent(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 320
    if-nez p2, :cond_0

    .line 321
    const-string/jumbo v3, "WxDebug"

    const-string/jumbo v4, "callAddEvent: params==null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return-void

    .line 324
    :cond_0
    const-string/jumbo v3, "instance"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "instanceInd":Ljava/lang/String;
    const-string/jumbo v3, "ref"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "ref":Ljava/lang/String;
    const-string/jumbo v3, "event"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "event":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    new-instance v4, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$11;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$11;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public callCreateBody(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    if-nez p2, :cond_1

    .line 159
    const-string/jumbo v2, "WxDebug"

    const-string/jumbo v3, "callCreateBody: params==null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const-string/jumbo v2, "WxDebug"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "callCreateBody: params=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string/jumbo v2, "instance"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "instanceInd":Ljava/lang/String;
    const-string/jumbo v2, "domStr"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "domStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    new-instance v3, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$3;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public callCreateFinish(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    if-nez p2, :cond_0

    .line 205
    const-string/jumbo v1, "WxDebug"

    const-string/jumbo v2, "callCreateFinish: params==null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string/jumbo v1, "instance"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "instanceInd":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$5;

    invoke-direct {v2, p0, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$5;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public callMoveElement(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 301
    if-nez p2, :cond_0

    .line 302
    const-string/jumbo v0, "WxDebug"

    const-string/jumbo v1, "callMoveElement: params==null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    return-void

    .line 305
    :cond_0
    const-string/jumbo v0, "instance"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "instanceInd":Ljava/lang/String;
    const-string/jumbo v0, "ref"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "ref":Ljava/lang/String;
    const-string/jumbo v0, "parentRef"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "parentRef":Ljava/lang/String;
    const-string/jumbo v0, "index_str"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "index_str":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v6

    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$10;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public callNative(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "WxDebug-new >>>> callNative="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 108
    if-eqz p2, :cond_0

    .line 114
    const-string/jumbo v3, "instance"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "instance":Ljava/lang/String;
    const-string/jumbo v3, "tasks"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 116
    .local v2, "tasks":[B
    const-string/jumbo v3, "callback"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "callback":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    new-instance v4, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$1;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;Ljava/lang/String;[BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 124
    .end local v0    # "callback":Ljava/lang/String;
    .end local v1    # "instance":Ljava/lang/String;
    .end local v2    # "tasks":[B
    :cond_0
    return-void
.end method

.method public callRefreshFinish(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    if-nez p2, :cond_1

    .line 224
    const-string/jumbo v3, "WxDebug"

    const-string/jumbo v4, "callRefreshFinish: params==null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const-string/jumbo v3, "instance"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "instanceInd":Ljava/lang/String;
    const-string/jumbo v3, "callback"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "callback":Ljava/lang/String;
    const-string/jumbo v3, "tasks"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "task":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 235
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    new-instance v4, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$6;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$6;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public callRemoveElement(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    if-nez p2, :cond_0

    .line 284
    const-string/jumbo v2, "WxDebug"

    const-string/jumbo v3, "callRemoveElement: params==null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_0
    return-void

    .line 288
    :cond_0
    const-string/jumbo v2, "instance"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "instanceInd":Ljava/lang/String;
    const-string/jumbo v2, "ref"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "ref":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    new-instance v3, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$9;

    invoke-direct {v3, p0, v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$9;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public callRemoveEvent(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 338
    if-nez p2, :cond_0

    .line 339
    const-string/jumbo v3, "WxDebug"

    const-string/jumbo v4, "callRemoveEvent: params==null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    return-void

    .line 344
    :cond_0
    const-string/jumbo v3, "instance"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "instanceInd":Ljava/lang/String;
    const-string/jumbo v3, "ref"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "ref":Ljava/lang/String;
    const-string/jumbo v3, "event"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "event":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    new-instance v4, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$12;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$12;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public callUpdateAttrs(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    if-nez p2, :cond_0

    .line 246
    const-string/jumbo v3, "WxDebug"

    const-string/jumbo v4, "callUpdateAttrs: params==null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string/jumbo v3, "instance"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "instanceInd":Ljava/lang/String;
    const-string/jumbo v3, "ref"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "ref":Ljava/lang/String;
    const-string/jumbo v3, "data"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "data":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    new-instance v4, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$7;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$7;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public callUpdateFinish(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    if-nez p2, :cond_1

    .line 180
    const-string/jumbo v3, "WxDebug"

    const-string/jumbo v4, "callUpdateFinish: params==null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string/jumbo v3, "instance"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "instanceInd":Ljava/lang/String;
    const-string/jumbo v3, "domStr"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "domStr":Ljava/lang/String;
    const-string/jumbo v3, "tasks"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "task":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    new-instance v4, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$4;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$4;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public callUpdateStyle(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    if-nez p2, :cond_0

    .line 265
    const-string/jumbo v3, "WxDebug"

    const-string/jumbo v4, "callUpdateStyle: params==null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    return-void

    .line 269
    :cond_0
    const-string/jumbo v3, "instance"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "instanceInd":Ljava/lang/String;
    const-string/jumbo v3, "ref"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "ref":Ljava/lang/String;
    const-string/jumbo v3, "data"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "data":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    new-instance v4, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$8;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$8;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public disable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "WxDebug-new >>>> disable="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 70
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 71
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->reload(Landroid/content/Context;Z)V

    .line 72
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "DEBUG_INSTANCE_REFRESH"

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "params"

    if-nez p2, :cond_1

    const-string/jumbo v1, ""

    .line 74
    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    :cond_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public enable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "WxDebug-new >>>> enable="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 57
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 58
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->reload(Landroid/content/Context;Z)V

    .line 59
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "DEBUG_INSTANCE_REFRESH"

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "params"

    if-nez p2, :cond_1

    const-string/jumbo v1, ""

    .line 61
    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    :cond_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public network(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "WxDebug-new >>>> network="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 385
    :try_start_0
    const-string/jumbo v2, "enable"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 386
    .local v1, "enabled":Z
    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporterImpl;->setEnabled(Z)V

    .line 387
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->sDebugNetworkEventReporterEnable:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v1    # "enabled":Z
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public refresh(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "WxDebug-new >>>> refresh="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 373
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 374
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "DEBUG_INSTANCE_REFRESH"

    .line 375
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "params"

    if-nez p2, :cond_1

    const-string/jumbo v1, ""

    .line 376
    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 374
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 379
    :cond_0
    return-void

    .line 376
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public reload(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "WxDebug-new >>>> reload="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->reload()V

    .line 360
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 361
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 362
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "DEBUG_INSTANCE_REFRESH"

    .line 363
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "params"

    if-nez p2, :cond_1

    const-string/jumbo v1, ""

    .line 364
    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 367
    :cond_0
    return-void

    .line 364
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setElementMode(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "WxDebug-new >>>> setElementMode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 93
    if-eqz p2, :cond_0

    .line 94
    const-string/jumbo v1, "mode"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "mode":Ljava/lang/String;
    const-string/jumbo v1, "vdom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->setNativeMode(Z)V

    .line 101
    .end local v0    # "mode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v0    # "mode":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->setNativeMode(Z)V

    goto :goto_0
.end method

.method public setLogLevel(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "WxDebug-new >>>> setLogLevel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 82
    if-eqz p2, :cond_0

    .line 83
    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;->sLevelMap:Ljava/util/HashMap;

    const-string/jumbo v2, "logLevel"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/utils/LogLevel;

    .line 84
    .local v0, "logLevel":Lcom/taobao/weex/utils/LogLevel;
    if-eqz v0, :cond_0

    .line 85
    sput-object v0, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lcom/taobao/weex/utils/LogLevel;

    .line 88
    .end local v0    # "logLevel":Lcom/taobao/weex/utils/LogLevel;
    :cond_0
    return-void
.end method

.method public syncCall(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$SyncCallResponse;
    .locals 15
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "WxDebug-new >>>> syncCall="

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 396
    new-instance v11, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$SyncCallResponse;

    invoke-direct {v11}, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$SyncCallResponse;-><init>()V

    .line 397
    .local v11, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$SyncCallResponse;
    const-string/jumbo v1, "syncId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 398
    .local v12, "syncId":I
    const-string/jumbo v1, "method"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 399
    .local v13, "syncMethod":Ljava/lang/String;
    const-string/jumbo v1, "args"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 402
    .local v7, "args":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 403
    .local v5, "arguments":[B
    const/4 v6, 0x0

    .line 404
    .local v6, "options":[B
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "instanceId":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, "domain":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, "method":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v8

    .line 408
    .local v8, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 409
    .local v9, "jsonObject":Lorg/json/JSONObject;
    if-eqz v8, :cond_0

    .line 410
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 412
    :cond_0
    if-eqz v9, :cond_1

    .line 413
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 415
    :cond_1
    const-string/jumbo v1, "callNativeModule"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 416
    invoke-static {}, Lcom/taobao/weex/devtools/debug/DebugBridge;->getInstance()Lcom/taobao/weex/devtools/debug/DebugBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/devtools/debug/DebugBridge;->getJsFunctions()Lcom/taobao/weex/common/IWXJsFunctions;

    move-result-object v1

    invoke-interface/range {v1 .. v6}, Lcom/taobao/weex/common/IWXJsFunctions;->jsHandleCallNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 431
    :cond_2
    :goto_0
    const-string/jumbo v1, "WxDebug.syncReturn"

    iput-object v1, v11, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$SyncCallResponse;->method:Ljava/lang/String;

    .line 432
    new-instance v10, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$SyncCallResponseParams;

    invoke-direct {v10}, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$SyncCallResponseParams;-><init>()V

    .line 433
    .local v10, "param":Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$SyncCallResponseParams;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$SyncCallResponseParams;->syncId:Ljava/lang/Integer;

    .line 434
    const/4 v1, 0x0

    invoke-static {v1}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v10, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$SyncCallResponseParams;->ret:Ljava/lang/Object;

    .line 435
    iput-object v10, v11, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$SyncCallResponse;->params:Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$SyncCallResponseParams;

    .line 436
    return-object v11

    .line 422
    .end local v10    # "param":Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug$SyncCallResponseParams;
    :cond_3
    const-string/jumbo v1, "callNativeComponent"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    invoke-static {}, Lcom/taobao/weex/devtools/debug/DebugBridge;->getInstance()Lcom/taobao/weex/devtools/debug/DebugBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/devtools/debug/DebugBridge;->getJsFunctions()Lcom/taobao/weex/common/IWXJsFunctions;

    move-result-object v1

    invoke-interface/range {v1 .. v6}, Lcom/taobao/weex/common/IWXJsFunctions;->jsHandleCallNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    goto :goto_0
.end method
