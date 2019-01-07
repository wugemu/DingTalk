.class Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;
.super Ljava/lang/Object;
.source "DebugServerProxy.java"

# interfaces
.implements Lcom/taobao/weex/devtools/debug/SocketClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/debug/DebugServerProxy;->start(Lcom/taobao/weex/common/IWXJsFunctions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getShakeHandsMessage()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v0, "func":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v2, "model"

    sget-object v3, Lcom/taobao/weex/WXEnvironment;->SYS_MODEL:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v2, "weexVersion"

    sget-object v3, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v2, "devtoolVersion"

    const-string/jumbo v3, "0.12.0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v2, "platform"

    const-string/jumbo v3, "android"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v2, "deviceId"

    iget-object v3, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    iget-object v4, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-static {v4}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$000(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$100(Lcom/taobao/weex/devtools/debug/DebugServerProxy;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v2, "network"

    sget-boolean v3, Lcom/taobao/weex/WXEnvironment;->sDebugNetworkEventReporterEnable:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v2, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lcom/taobao/weex/utils/LogLevel;

    if-eqz v2, :cond_0

    .line 117
    const-string/jumbo v2, "logLevel"

    sget-object v3, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lcom/taobao/weex/utils/LogLevel;

    invoke-virtual {v3}, Lcom/taobao/weex/utils/LogLevel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    const-string/jumbo v2, "remoteDebug"

    sget-boolean v3, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "id"

    const-string/jumbo v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v2, "method"

    const-string/jumbo v3, "WxDebug.registerDevice"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v2, "params"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {v1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    const-class v1, Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-static {v0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$300(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/devtools/debug/DebugBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-static {v0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$300(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/devtools/debug/DebugBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/debug/DebugBridge;->onDisConnected()V

    .line 163
    :cond_0
    const-string/jumbo v0, "DebugServerProxy"

    const-string/jumbo v2, "connect debugger server failure!!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    const-class v1, Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-static {v0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$200(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/devtools/debug/SocketClient;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-static {v0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$200(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/devtools/debug/SocketClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/debug/SocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-static {v0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$200(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/devtools/debug/SocketClient;

    move-result-object v0

    invoke-direct {p0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->getShakeHandsMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taobao/weex/devtools/debug/SocketClient;->sendText(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-static {v0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$300(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/devtools/debug/DebugBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-static {v0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$300(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/devtools/debug/DebugBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/debug/DebugBridge;->onConnected()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    new-instance v2, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;

    iget-object v3, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-static {v3}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$000(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->finish()Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$402(Lcom/taobao/weex/devtools/debug/DebugServerProxy;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    .line 137
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/MethodDispatcher;

    iget-object v3, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-static {v3}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$600(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/devtools/json/ObjectMapper;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-static {v4}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$400(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/taobao/weex/devtools/inspector/MethodDispatcher;-><init>(Lcom/taobao/weex/devtools/json/ObjectMapper;Ljava/lang/Iterable;)V

    invoke-static {v0, v2}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$502(Lcom/taobao/weex/devtools/debug/DebugServerProxy;Lcom/taobao/weex/devtools/inspector/MethodDispatcher;)Lcom/taobao/weex/devtools/inspector/MethodDispatcher;

    .line 138
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    new-instance v2, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1$1;

    invoke-direct {v2, p0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1$1;-><init>(Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/taobao/weex/WXSDKManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 150
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-static {v0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$700(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->this$0:Lcom/taobao/weex/devtools/debug/DebugServerProxy;

    invoke-static {v0}, Lcom/taobao/weex/devtools/debug/DebugServerProxy;->access$700(Lcom/taobao/weex/devtools/debug/DebugServerProxy;)Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->initScriptsFramework(Ljava/lang/String;)V

    .line 154
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
