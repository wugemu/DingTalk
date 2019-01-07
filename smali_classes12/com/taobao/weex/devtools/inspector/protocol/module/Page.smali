.class public Lcom/taobao/weex/devtools/inspector/protocol/module/Page;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/protocol/module/Page$StartScreencastRequest;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ScreencastFrameEventMetadata;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ScreencastFrameEvent;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ExecutionContextDescription;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ExecutionContextCreatedParams;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Resource;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Page$GetResourceTreeParams;,
        Lcom/taobao/weex/devtools/inspector/protocol/module/Page$getResourceContentResponse;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

.field private mScreencastDispatcher:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/taobao/weex/devtools/json/ObjectMapper;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/json/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    .line 46
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private static createMockFrameResourceTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "securityOrigin"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 181
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;

    invoke-direct {v0, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Page$1;)V

    .line 182
    .local v0, "frame":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;
    iput-object p0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->id:Ljava/lang/String;

    .line 183
    iput-object p1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->parentId:Ljava/lang/String;

    .line 184
    const-string/jumbo v2, "2"

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->loaderId:Ljava/lang/String;

    .line 185
    iput-object p2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->name:Ljava/lang/String;

    .line 186
    const-string/jumbo v2, "http://www.sina.com"

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->url:Ljava/lang/String;

    .line 187
    iput-object p3, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->securityOrigin:Ljava/lang/String;

    .line 188
    const-string/jumbo v2, "text/plain"

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->mimeType:Ljava/lang/String;

    .line 189
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;

    invoke-direct {v1, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Page$1;)V

    .line 190
    .local v1, "tree":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;
    iput-object v0, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;->frame:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;

    .line 191
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->createMockResource()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;->resources:Ljava/util/List;

    .line 192
    iput-object v3, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;->childFrames:Ljava/util/List;

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "frame : , name : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mimeType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    return-object v1
.end method

.method private static createMockResource()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Resource;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Resource;>;"
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Resource;

    invoke-direct {v1, v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Resource;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Page$1;)V

    .line 200
    .local v1, "resource":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Resource;
    const-string/jumbo v3, "http://apod.nasa.gov/apod/ap160601.html"

    iput-object v3, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Resource;->url:Ljava/lang/String;

    .line 201
    sget-object v3, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->DOCUMENT:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    iput-object v3, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Resource;->type:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    .line 202
    const-string/jumbo v3, "text/HTML"

    iput-object v3, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Resource;->mimeType:Ljava/lang/String;

    .line 204
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Resource;

    invoke-direct {v2, v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Resource;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Page$1;)V

    .line 205
    .local v2, "resource2":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Resource;
    const-string/jumbo v3, "http://30.10.216.161:12580/examples/build/hello.js"

    iput-object v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Resource;->url:Ljava/lang/String;

    .line 206
    sget-object v3, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->SCRIPT:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    iput-object v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Resource;->type:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    .line 207
    const-string/jumbo v3, "text/javascript"

    iput-object v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Resource;->mimeType:Ljava/lang/String;

    .line 208
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    return-object v0
.end method

.method private static createSimpleFrameResourceTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "securityOrigin"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 161
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;

    invoke-direct {v0, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Page$1;)V

    .line 162
    .local v0, "frame":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;
    iput-object p0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->id:Ljava/lang/String;

    .line 163
    iput-object p1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->parentId:Ljava/lang/String;

    .line 164
    const-string/jumbo v2, "1"

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->loaderId:Ljava/lang/String;

    .line 165
    iput-object p2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->name:Ljava/lang/String;

    .line 166
    const-string/jumbo v2, ""

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->url:Ljava/lang/String;

    .line 167
    iput-object p3, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->securityOrigin:Ljava/lang/String;

    .line 168
    const-string/jumbo v2, "text/plain"

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;->mimeType:Ljava/lang/String;

    .line 169
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;

    invoke-direct {v1, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Page$1;)V

    .line 170
    .local v1, "tree":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;
    iput-object v0, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;->frame:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$Frame;

    .line 171
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;->resources:Ljava/util/List;

    .line 172
    iput-object v3, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;->childFrames:Ljava/util/List;

    .line 173
    return-object v1
.end method

.method private notifyExecutionContexts(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 4
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ExecutionContextDescription;

    invoke-direct {v0, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ExecutionContextDescription;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Page$1;)V

    .line 61
    .local v0, "context":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ExecutionContextDescription;
    const-string/jumbo v2, "1"

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ExecutionContextDescription;->frameId:Ljava/lang/String;

    .line 62
    const/4 v2, 0x1

    iput v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ExecutionContextDescription;->id:I

    .line 63
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ExecutionContextCreatedParams;

    invoke-direct {v1, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ExecutionContextCreatedParams;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Page$1;)V

    .line 64
    .local v1, "params":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ExecutionContextCreatedParams;
    iput-object v0, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ExecutionContextCreatedParams;->context:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ExecutionContextDescription;

    .line 65
    const-string/jumbo v2, "Runtime.executionContextCreated"

    invoke-virtual {p1, v2, v1, v3}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;)V

    .line 66
    return-void
.end method

.method private readResourceContent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$getResourceContentResponse;
    .locals 2
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$getResourceContentResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$getResourceContentResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Page$1;)V

    .line 119
    .local v0, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$getResourceContentResponse;
    return-object v0
.end method

.method private sendWelcomeMessage(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 4
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$ConsoleMessage;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$ConsoleMessage;-><init>()V

    .line 70
    .local v0, "message":Lcom/taobao/weex/devtools/inspector/protocol/module/Console$ConsoleMessage;
    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;->JAVASCRIPT:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$ConsoleMessage;->source:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageSource;

    .line 71
    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;->LOG:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$ConsoleMessage;->level:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageLevel;

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "                                  _               _                 _      \n                                 | |             | |               | |     \n __      __ ___   ___ __  __   __| |  ___ __   __| |_  ___    ___  | | ___ \n \\ \\ /\\ / // _ \\ / _ \\\\ \\/ /  / _` | / _ \\\\ \\ / /| __|/ _ \\  / _ \\ | |/ __|\n  \\ V  V /|  __/|  __/ >  <  | (_| ||  __/ \\ V / | |_| (_) || (_) || |\\__ \\\n   \\_/\\_/  \\___| \\___|/_/\\_\\  \\__,_| \\___|  \\_/   \\__|\\___/  \\___/ |_||___/\n                                                                           \n                                                                           \n   Welcome to WEEX! Attached to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/taobao/weex/devtools/common/ProcessUtil;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$ConsoleMessage;->text:Ljava/lang/String;

    .line 83
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageAddedRequest;

    invoke-direct {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageAddedRequest;-><init>()V

    .line 84
    .local v1, "messageAddedRequest":Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageAddedRequest;
    iput-object v0, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Console$MessageAddedRequest;->message:Lcom/taobao/weex/devtools/inspector/protocol/module/Console$ConsoleMessage;

    .line 85
    const-string/jumbo v2, "Console.messageAdded"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/jsonrpc/PendingRequestCallback;)V

    .line 86
    return-void
.end method


# virtual methods
.method public canScreencast(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
    .locals 2
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 216
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/SimpleBooleanResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/SimpleBooleanResult;-><init>(Z)V

    return-object v0
.end method

.method public clearDeviceOrientationOverride(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method public clearGeolocationOverride(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 258
    return-void
.end method

.method public disable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 57
    return-void
.end method

.method public enable(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->notifyExecutionContexts(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->sendWelcomeMessage(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V

    .line 53
    return-void
.end method

.method public getResourceContent(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
    .locals 7
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 91
    :try_start_0
    const-string/jumbo v2, "frameId"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "frameId":Ljava/lang/String;
    const-string/jumbo v2, "url"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    const-string/jumbo v2, "1"

    invoke-direct {p0, v1, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->readResourceContent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$getResourceContentResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 94
    .end local v1    # "frameId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;

    new-instance v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;

    sget-object v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;->INTERNAL_ERROR:Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    .line 96
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;)V

    throw v2

    .line 98
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;

    new-instance v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;

    sget-object v4, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;->INTERNAL_ERROR:Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    .line 100
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;)V

    throw v2
.end method

.method public getResourceTree(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
    .locals 13
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 127
    iget-object v9, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/taobao/weex/devtools/inspector/domstorage/SharedPreferencesHelper;->getSharedPreferenceTags(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 128
    .local v5, "prefsTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 130
    .local v6, "prefsTagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string/jumbo v10, "1"

    const-string/jumbo v11, "Weex"

    .line 134
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 130
    :goto_0
    invoke-static {v10, v12, v11, v9}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->createSimpleFrameResourceTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;

    move-result-object v8

    .line 135
    .local v8, "tree":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;
    iget-object v9, v8, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;->childFrames:Ljava/util/List;

    if-nez v9, :cond_0

    .line 136
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;->childFrames:Ljava/util/List;

    .line 139
    :cond_0
    const/4 v2, 0x1

    .line 140
    .local v2, "nextChildFrameId":I
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 141
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "1."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "nextChildFrameId":I
    .local v3, "nextChildFrameId":I
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "frameId":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 143
    .local v4, "prefsTag":Ljava/lang/String;
    const-string/jumbo v9, "1"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Child #"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v9, v10, v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->createSimpleFrameResourceTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;

    move-result-object v0

    .line 148
    .local v0, "child":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;
    iget-object v9, v8, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;->childFrames:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 149
    .end local v3    # "nextChildFrameId":I
    .restart local v2    # "nextChildFrameId":I
    goto :goto_1

    .line 134
    .end local v0    # "child":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;
    .end local v1    # "frameId":Ljava/lang/String;
    .end local v2    # "nextChildFrameId":I
    .end local v4    # "prefsTag":Ljava/lang/String;
    .end local v8    # "tree":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;
    :cond_1
    const-string/jumbo v9, ""

    goto :goto_0

    .line 151
    .restart local v2    # "nextChildFrameId":I
    .restart local v8    # "tree":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;
    :cond_2
    new-instance v7, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$GetResourceTreeParams;

    invoke-direct {v7, v12}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$GetResourceTreeParams;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Page$1;)V

    .line 152
    .local v7, "resultParams":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$GetResourceTreeParams;
    iput-object v8, v7, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$GetResourceTreeParams;->frameTree:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$FrameResourceTree;

    .line 153
    return-object v7
.end method

.method public hasTouchInputs(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcResult;
    .locals 2
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 221
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/SimpleBooleanResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/SimpleBooleanResult;-><init>(Z)V

    return-object v0
.end method

.method public screencastFrameAck(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 254
    return-void
.end method

.method public setDeviceMetricsOverride(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 226
    return-void
.end method

.method public setEmulatedMedia(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 266
    return-void
.end method

.method public setShowViewportSizeOnResize(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 270
    return-void
.end method

.method public setTouchEmulationEnabled(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 262
    return-void
.end method

.method public startScreencast(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$StartScreencastRequest;

    invoke-virtual {v1, p2, v2}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$StartScreencastRequest;

    .line 236
    .local v0, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/Page$StartScreencastRequest;
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->mScreencastDispatcher:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    if-nez v1, :cond_0

    .line 237
    new-instance v1, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-direct {v1}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->mScreencastDispatcher:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .line 238
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->mScreencastDispatcher:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-virtual {v1, p1, v0}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->startScreencast(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lcom/taobao/weex/devtools/inspector/protocol/module/Page$StartScreencastRequest;)V

    .line 240
    :cond_0
    return-void
.end method

.method public stopScreencast(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "peer"    # Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->mScreencastDispatcher:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->mScreencastDispatcher:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->stopScreencast()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;->mScreencastDispatcher:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .line 248
    :cond_0
    return-void
.end method
