.class public Lcom/taobao/weex/bridge/WXModuleManager;
.super Ljava/lang/Object;
.source "WXModuleManager.java"


# static fields
.field private static sDomModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/module/WXDomModule;",
            ">;"
        }
    .end annotation
.end field

.field public static sGlobalModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXModule;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstanceModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXModule;",
            ">;>;"
        }
    .end annotation
.end field

.field public static volatile sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/ModuleFactoryImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sGlobalModuleMap:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sDomModuleMap:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sGlobalModuleMap:Ljava/util/Map;

    return-object v0
.end method

.method static callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .locals 12
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "moduleStr"    # Ljava/lang/String;
    .param p2, "methodStr"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    const/4 v11, 0x0

    .line 147
    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v7, v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    .line 148
    .local v7, "factory":Lcom/taobao/weex/bridge/ModuleFactory;
    if-nez v7, :cond_1

    .line 149
    const-string/jumbo v1, "[WXModuleManager] module factory not found."

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    move-object v1, v11

    .line 187
    :cond_0
    :goto_0
    return-object v1

    .line 152
    :cond_1
    invoke-static {p0, p1, v7}, Lcom/taobao/weex/bridge/WXModuleManager;->findModule(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Lcom/taobao/weex/common/WXModule;

    move-result-object v10

    .line 153
    .local v10, "wxModule":Lcom/taobao/weex/common/WXModule;
    if-nez v10, :cond_2

    move-object v1, v11

    .line 154
    goto :goto_0

    .line 156
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v8

    .line 157
    .local v8, "instance":Lcom/taobao/weex/WXSDKInstance;
    iput-object v8, v10, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 159
    invoke-interface {v7, p2}, Lcom/taobao/weex/bridge/ModuleFactory;->getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;

    move-result-object v9

    .line 161
    .local v9, "invoker":Lcom/taobao/weex/bridge/Invoker;
    if-eqz v8, :cond_5

    .line 162
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v0

    .line 163
    .local v0, "userTrackAdapter":Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    if-eqz v0, :cond_3

    .line 164
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v5, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    const-string/jumbo v1, "errCode"

    const-string/jumbo v2, "101"

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v1, "arg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v1, "errMsg"

    invoke-virtual {v8}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {v8}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "invokeModule"

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V

    .line 170
    .end local v5    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    :cond_3
    invoke-static {v8, v10, p3, v9}, Lcom/taobao/weex/bridge/WXModuleManager;->dispatchCallModuleMethod(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/common/WXModule;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/weex/bridge/Invoker;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 186
    instance-of v2, v10, Lcom/taobao/weex/ui/module/WXDomModule;

    if-nez v2, :cond_4

    instance-of v2, v10, Lcom/taobao/weex/ui/module/WXTimerModule;

    if-eqz v2, :cond_0

    .line 187
    :cond_4
    iput-object v11, v10, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    goto :goto_0

    .line 172
    .end local v0    # "userTrackAdapter":Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    :cond_5
    :try_start_1
    const-string/jumbo v1, "callModuleMethod >>> instance is null"

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    instance-of v1, v10, Lcom/taobao/weex/ui/module/WXDomModule;

    if-nez v1, :cond_6

    instance-of v1, v10, Lcom/taobao/weex/ui/module/WXTimerModule;

    if-eqz v1, :cond_7

    .line 187
    :cond_6
    iput-object v11, v10, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    :cond_7
    move-object v1, v11

    goto/16 :goto_0

    .line 175
    :catch_0
    move-exception v6

    .line 176
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_CONTENT_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v2, "callModuleMethod"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_CONTENT_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 179
    invoke-virtual {v4}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "callModuleMethod >>> invoke module:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 181
    invoke-static {v6}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 176
    invoke-static {p0, v1, v2, v3, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "callModuleMethod >>> invoke module:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", method:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    instance-of v1, v10, Lcom/taobao/weex/ui/module/WXDomModule;

    if-nez v1, :cond_8

    instance-of v1, v10, Lcom/taobao/weex/ui/module/WXTimerModule;

    if-eqz v1, :cond_9

    .line 187
    :cond_8
    iput-object v11, v10, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    :cond_9
    move-object v1, v11

    goto/16 :goto_0

    .line 186
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    instance-of v2, v10, Lcom/taobao/weex/ui/module/WXDomModule;

    if-nez v2, :cond_a

    instance-of v2, v10, Lcom/taobao/weex/ui/module/WXTimerModule;

    if-eqz v2, :cond_b

    .line 187
    :cond_a
    iput-object v11, v10, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    :cond_b
    throw v1
.end method

.method public static createDomModule(Lcom/taobao/weex/WXSDKInstance;)V
    .locals 3
    .param p0, "instance"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 412
    if-eqz p0, :cond_0

    .line 413
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sDomModuleMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/ui/module/WXDomModule;

    invoke-direct {v2, p0}, Lcom/taobao/weex/ui/module/WXDomModule;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_0
    return-void
.end method

.method public static destoryDomModule(Ljava/lang/String;)V
    .locals 1
    .param p0, "instanceID"    # Ljava/lang/String;

    .prologue
    .line 418
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sDomModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public static destroyInstanceModules(Ljava/lang/String;)V
    .locals 5
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 394
    sget-object v4, Lcom/taobao/weex/bridge/WXModuleManager;->sDomModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v4, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 396
    .local v3, "moduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 409
    :cond_0
    return-void

    .line 399
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 401
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 402
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 403
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    .line 404
    .local v2, "module":Lcom/taobao/weex/common/WXModule;
    instance-of v4, v2, Lcom/taobao/weex/common/Destroyable;

    if-eqz v4, :cond_2

    .line 405
    check-cast v2, Lcom/taobao/weex/common/Destroyable;

    .end local v2    # "module":Lcom/taobao/weex/common/WXModule;
    invoke-interface {v2}, Lcom/taobao/weex/common/Destroyable;->destroy()V

    goto :goto_0
.end method

.method private static dispatchCallModuleMethod(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/common/WXModule;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/weex/bridge/Invoker;)Ljava/lang/Object;
    .locals 1
    .param p0, "instance"    # Lcom/taobao/weex/WXSDKInstance;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "wxModule"    # Lcom/taobao/weex/common/WXModule;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # Lcom/alibaba/fastjson/JSONArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "invoker"    # Lcom/taobao/weex/bridge/Invoker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->isPreRenderMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getNativeInvokeHelper()Lcom/taobao/weex/bridge/NativeInvokeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/taobao/weex/bridge/NativeInvokeHelper;->invoke(Ljava/lang/Object;Lcom/taobao/weex/bridge/Invoker;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 198
    :cond_0
    invoke-interface {p3}, Lcom/taobao/weex/bridge/Invoker;->isRunOnUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const/4 v0, 0x0

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getNativeInvokeHelper()Lcom/taobao/weex/bridge/NativeInvokeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/taobao/weex/bridge/NativeInvokeHelper;->invoke(Ljava/lang/Object;Lcom/taobao/weex/bridge/Invoker;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static findModule(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Lcom/taobao/weex/common/WXModule;
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "moduleStr"    # Ljava/lang/String;
    .param p2, "factory"    # Lcom/taobao/weex/bridge/ModuleFactory;

    .prologue
    .line 213
    sget-object v4, Lcom/taobao/weex/bridge/WXModuleManager;->sGlobalModuleMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/common/WXModule;

    .line 216
    .local v3, "wxModule":Lcom/taobao/weex/common/WXModule;
    if-nez v3, :cond_1

    .line 217
    sget-object v4, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 218
    .local v2, "moduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-nez v2, :cond_0

    .line 219
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v2    # "moduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 220
    .restart local v2    # "moduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    sget-object v4, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "wxModule":Lcom/taobao/weex/common/WXModule;
    check-cast v3, Lcom/taobao/weex/common/WXModule;

    .line 224
    .restart local v3    # "wxModule":Lcom/taobao/weex/common/WXModule;
    if-nez v3, :cond_1

    .line 226
    :try_start_0
    instance-of v4, p2, Lcom/taobao/weex/ui/config/ConfigModuleFactory;

    if-eqz v4, :cond_2

    .line 227
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    .line 228
    .local v1, "instance":Lcom/taobao/weex/WXSDKInstance;
    check-cast p2, Lcom/taobao/weex/ui/config/ConfigModuleFactory;

    .end local p2    # "factory":Lcom/taobao/weex/bridge/ModuleFactory;
    invoke-virtual {p2, v1}, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->buildInstance(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXModule;

    move-result-object v3

    .line 232
    .end local v1    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :goto_0
    invoke-virtual {v3, p1}, Lcom/taobao/weex/common/WXModule;->setModuleName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "moduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    :cond_1
    move-object v4, v3

    .line 241
    :goto_1
    return-object v4

    .line 230
    .restart local v2    # "moduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    .restart local p2    # "factory":Lcom/taobao/weex/bridge/ModuleFactory;
    :cond_2
    :try_start_1
    invoke-interface {p2}, Lcom/taobao/weex/bridge/ModuleFactory;->buildInstance()Lcom/taobao/weex/common/WXModule;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 233
    .end local p2    # "factory":Lcom/taobao/weex/bridge/ModuleFactory;
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module build instace failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;
    .locals 1
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 422
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sDomModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/module/WXDomModule;

    return-object v0
.end method

.method public static hasModule(Ljava/lang/String;)Z
    .locals 1
    .param p0, "module"    # Ljava/lang/String;

    .prologue
    .line 208
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sGlobalModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onActivityBack(Ljava/lang/String;)Z
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 335
    sget-object v3, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 336
    .local v2, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v2, :cond_1

    .line 337
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/WXModule;

    .line 339
    .local v1, "module":Lcom/taobao/weex/common/WXModule;
    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXModule;->onActivityBack()Z

    move-result v3

    .line 346
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "module":Lcom/taobao/weex/common/WXModule;
    :goto_1
    return v3

    .line 342
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "module":Lcom/taobao/weex/common/WXModule;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onActivityCreate can not find the "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "module":Lcom/taobao/weex/common/WXModule;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static onActivityCreate(Ljava/lang/String;)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 249
    sget-object v3, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 250
    .local v2, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v2, :cond_1

    .line 251
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/WXModule;

    .line 253
    .local v1, "module":Lcom/taobao/weex/common/WXModule;
    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXModule;->onActivityCreate()V

    goto :goto_0

    .line 256
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onActivityCreate can not find the "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "module":Lcom/taobao/weex/common/WXModule;
    :cond_1
    return-void
.end method

.method public static onActivityDestroy(Ljava/lang/String;)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 321
    sget-object v3, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 322
    .local v2, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v2, :cond_1

    .line 323
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/WXModule;

    .line 325
    .local v1, "module":Lcom/taobao/weex/common/WXModule;
    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXModule;->onActivityDestroy()V

    goto :goto_0

    .line 328
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onActivityDestroy can not find the "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "module":Lcom/taobao/weex/common/WXModule;
    :cond_1
    return-void
.end method

.method public static onActivityPause(Ljava/lang/String;)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 279
    sget-object v3, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 280
    .local v2, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v2, :cond_1

    .line 281
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/WXModule;

    .line 283
    .local v1, "module":Lcom/taobao/weex/common/WXModule;
    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXModule;->onActivityPause()V

    goto :goto_0

    .line 286
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onActivityPause can not find the "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 290
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "module":Lcom/taobao/weex/common/WXModule;
    :cond_1
    return-void
.end method

.method public static onActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 351
    sget-object v3, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 352
    .local v2, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v2, :cond_1

    .line 353
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 354
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/WXModule;

    .line 355
    .local v1, "module":Lcom/taobao/weex/common/WXModule;
    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v1, p1, p2, p3}, Lcom/taobao/weex/common/WXModule;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 358
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onActivityResult can not find the "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "module":Lcom/taobao/weex/common/WXModule;
    :cond_1
    return-void
.end method

.method public static onActivityResume(Ljava/lang/String;)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 293
    sget-object v3, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 294
    .local v2, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v2, :cond_1

    .line 295
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/WXModule;

    .line 297
    .local v1, "module":Lcom/taobao/weex/common/WXModule;
    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXModule;->onActivityResume()V

    goto :goto_0

    .line 300
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onActivityResume can not find the "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "module":Lcom/taobao/weex/common/WXModule;
    :cond_1
    return-void
.end method

.method public static onActivityStart(Ljava/lang/String;)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 265
    sget-object v3, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 266
    .local v2, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v2, :cond_1

    .line 267
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/WXModule;

    .line 269
    .local v1, "module":Lcom/taobao/weex/common/WXModule;
    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXModule;->onActivityStart()V

    goto :goto_0

    .line 272
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onActivityStart can not find the "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "module":Lcom/taobao/weex/common/WXModule;
    :cond_1
    return-void
.end method

.method public static onActivityStop(Ljava/lang/String;)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 307
    sget-object v3, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 308
    .local v2, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v2, :cond_1

    .line 309
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/WXModule;

    .line 311
    .local v1, "module":Lcom/taobao/weex/common/WXModule;
    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXModule;->onActivityStop()V

    goto :goto_0

    .line 314
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onActivityStop can not find the "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "module":Lcom/taobao/weex/common/WXModule;
    :cond_1
    return-void
.end method

.method public static onCreateOptionsMenu(Ljava/lang/String;Landroid/view/Menu;)Z
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 365
    sget-object v3, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 366
    .local v2, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v2, :cond_1

    .line 367
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/WXModule;

    .line 369
    .local v1, "module":Lcom/taobao/weex/common/WXModule;
    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v1, p1}, Lcom/taobao/weex/common/WXModule;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    .line 372
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onActivityResult can not find the "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "module":Lcom/taobao/weex/common/WXModule;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static onRequestPermissionsResult(Ljava/lang/String;I[Ljava/lang/String;[I)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 380
    sget-object v3, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 381
    .local v2, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v2, :cond_1

    .line 382
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 383
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/WXModule;

    .line 384
    .local v1, "module":Lcom/taobao/weex/common/WXModule;
    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {v1, p1, p2, p3}, Lcom/taobao/weex/common/WXModule;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 387
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onActivityResult can not find the "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "module":Lcom/taobao/weex/common/WXModule;
    :cond_1
    return-void
.end method

.method static registerJSModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    .locals 2
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "factory"    # Lcom/taobao/weex/bridge/ModuleFactory;

    .prologue
    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v0, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lcom/taobao/weex/bridge/ModuleFactory;->getMethods()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/WXSDKManager;->registerModules(Ljava/util/Map;)V

    .line 143
    const/4 v1, 0x1

    return v1
.end method

.method public static registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z
    .locals 2
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "factory"    # Lcom/taobao/weex/bridge/ModuleFactory;
    .param p2, "global"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 73
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    const-string/jumbo v1, "dom"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    const-string/jumbo v1, "Cannot registered module with name \'dom\'."

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    :try_start_0
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    invoke-direct {v1, p1}, Lcom/taobao/weex/bridge/ModuleFactoryImpl;-><init>(Lcom/taobao/weex/bridge/ModuleFactory;)V

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/bridge/WXModuleManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/taobao/weex/bridge/WXModuleManager$1;-><init>(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 115
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static registerNativeModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    .locals 3
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "factory"    # Lcom/taobao/weex/bridge/ModuleFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    const/4 v1, 0x0

    .line 136
    :goto_0
    return v1

    .line 125
    :cond_0
    :try_start_0
    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    invoke-direct {v2, p1}, Lcom/taobao/weex/bridge/ModuleFactoryImpl;-><init>(Lcom/taobao/weex/bridge/ModuleFactory;)V

    invoke-interface {v1, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/ArrayStoreException;
    invoke-virtual {v0}, Ljava/lang/ArrayStoreException;->printStackTrace()V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[WXModuleManager] registerNativeModule Error moduleName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ArrayStoreException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static registerWhenCreateInstance()V
    .locals 4

    .prologue
    .line 441
    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 442
    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactoryImpl;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactoryImpl;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 444
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactoryImpl;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-boolean v1, v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->hasRigster:Z

    if-nez v1, :cond_0

    .line 445
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v2, v2, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-static {v1, v2}, Lcom/taobao/weex/bridge/WXModuleManager;->registerJSModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    goto :goto_0

    .line 452
    :cond_1
    return-void
.end method

.method public static reload()V
    .locals 4

    .prologue
    .line 426
    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 427
    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactoryImpl;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactoryImpl;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 429
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactoryImpl;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v2, v2, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-static {v1, v2}, Lcom/taobao/weex/bridge/WXModuleManager;->registerJSModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v1

    goto :goto_0

    .line 435
    :cond_0
    return-void
.end method

.method public static resetAllModuleState()V
    .locals 4

    .prologue
    .line 458
    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 459
    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactoryImpl;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactoryImpl;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 460
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactoryImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->hasRigster:Z

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method

.method public static resetModuleState(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "state"    # Z

    .prologue
    .line 471
    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 472
    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 474
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactoryImpl;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iput-boolean p1, v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->hasRigster:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v1

    goto :goto_0

    .line 482
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactoryImpl;>;"
    :cond_1
    return-void
.end method
