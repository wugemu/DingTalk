.class public Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectSubType;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ExceptionDetails;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$CallArgument;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$CallFunctionOnResponse;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$CallFunctionOnRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectProtoContainer;
    }
.end annotation


# static fields
.field private static final sSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;",
            "Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

.field private final mReplFactory:Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->sSessions:Ljava/util/Map;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;-><init>(Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    new-instance v0, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;

    invoke-direct {v0, p1}, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;-><init>(Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;)V
    .locals 1
    .param p1, "replFactory"    # Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/taobao/weex/devtools/json/ObjectMapper;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/json/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    .line 86
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->mReplFactory:Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;

    .line 87
    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->sSessions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->getPropertyClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPropertyClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 171
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_1
    return-object v0
.end method

.method private static declared-synchronized getSession(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;
    .locals 3
    .param p0, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 95
    const-class v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->sSessions:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;

    .line 96
    .local v0, "session":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;
    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;

    .end local v0    # "session":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V

    .line 98
    .restart local v0    # "session":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;
    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->sSessions:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$2;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V

    invoke-virtual {p0, v1}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;->registerDisconnectReceiver(Lcom/taobao/weex/devtools/inspector/jsonrpc/DisconnectReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit v2

    return-object v0

    .line 95
    .end local v0    # "session":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static mapObject(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Ljava/lang/Object;)I
    .locals 1
    .param p0, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->getSession(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->getObjects()Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->putObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public callFunctionOn(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$CallFunctionOnResponse;
    .locals 12
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 123
    iget-object v6, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v7, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$CallFunctionOnRequest;

    invoke-virtual {v6, p2, v7}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$CallFunctionOnRequest;

    .line 125
    .local v0, "args":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$CallFunctionOnRequest;
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->getSession(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;

    move-result-object v5

    .line 126
    .local v5, "session":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;
    iget-object v6, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$CallFunctionOnRequest;->objectId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->getObjectOrThrow(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 132
    .local v1, "object":Ljava/lang/Object;
    iget-object v6, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$CallFunctionOnRequest;->functionDeclaration:Ljava/lang/String;

    const-string/jumbo v7, "function protoList("

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 133
    new-instance v6, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;

    new-instance v7, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;

    sget-object v8, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;->INTERNAL_ERROR:Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Expected protoList, got: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$CallFunctionOnRequest;->functionDeclaration:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v11}, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v6, v7}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;)V

    throw v6

    .line 142
    :cond_0
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectProtoContainer;

    invoke-direct {v2, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectProtoContainer;-><init>(Ljava/lang/Object;)V

    .line 143
    .local v2, "objectContainer":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectProtoContainer;
    new-instance v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    invoke-direct {v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;-><init>()V

    .line 144
    .local v4, "result":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;
    sget-object v6, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;->OBJECT:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    iput-object v6, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->type:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    .line 145
    sget-object v6, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectSubType;->NODE:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectSubType;

    iput-object v6, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->subtype:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectSubType;

    .line 146
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->className:Ljava/lang/String;

    .line 147
    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->getPropertyClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->description:Ljava/lang/String;

    .line 148
    invoke-virtual {v5}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->getObjects()Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->putObject(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->objectId:Ljava/lang/String;

    .line 150
    new-instance v3, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$CallFunctionOnResponse;

    invoke-direct {v3, v11}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$CallFunctionOnResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V

    .line 151
    .local v3, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$CallFunctionOnResponse;
    iput-object v4, v3, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$CallFunctionOnResponse;->result:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    .line 152
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v3, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$CallFunctionOnResponse;->wasThrown:Ljava/lang/Boolean;

    .line 154
    return-object v3
.end method

.method public evaluate(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
    .locals 2
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->getSession(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->mReplFactory:Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;

    invoke-virtual {v0, v1, p2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->evaluate(Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getProperties(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
    .locals 1
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->getSession(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->getProperties(Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public releaseObject(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    const-string/jumbo v1, "objectId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "objectId":Ljava/lang/String;
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->getSession(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->getObjects()Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->removeObjectById(I)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public releaseObjectGroup(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Ignoring request to releaseObjectGroup: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/LogUtil;->w(Ljava/lang/String;)V

    .line 118
    return-void
.end method
