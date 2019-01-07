.class public Lcom/taobao/weex/ui/config/ConfigComponentHolder;
.super Ljava/lang/Object;
.source "ConfigComponentHolder.java"

# interfaces
.implements Lcom/taobao/weex/ui/IFComponentHolder;


# static fields
.field public static final TAG:Ljava/lang/String; = "WeexScanConfigRegister"


# instance fields
.field private mAppendTree:Z

.field private mClass:Ljava/lang/Class;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mClassName:Ljava/lang/String;

.field private mMethodInvokers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/Invoker;",
            ">;"
        }
    .end annotation
.end field

.field private mPropertyInvokers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/Invoker;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;

.field private methods:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "mType"    # Ljava/lang/String;
    .param p2, "mAppendTree"    # Z
    .param p3, "mClassName"    # Ljava/lang/String;
    .param p4, "methods"    # [Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mType:Ljava/lang/String;

    .line 61
    iput-boolean p2, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mAppendTree:Z

    .line 62
    iput-object p3, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mClassName:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->methods:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static final fromConfig(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/ui/config/ConfigComponentHolder;
    .locals 10
    .param p0, "config"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 124
    if-nez p0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-object v6

    .line 128
    :cond_1
    :try_start_0
    const-string/jumbo v7, "name"

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "type":Ljava/lang/String;
    const-string/jumbo v7, "appendTree"

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    .line 130
    .local v0, "appendTree":Z
    const-string/jumbo v7, "className"

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "className":Ljava/lang/String;
    const/4 v4, 0x0

    .line 132
    .local v4, "methods":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v7, "methods"

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 133
    const-string/jumbo v7, "methods"

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 135
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 138
    const/4 v7, 0x0

    new-array v1, v7, [Ljava/lang/String;

    .line 139
    .local v1, "arrays":[Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 140
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    new-array v1, v7, [Ljava/lang/String;

    .line 141
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 143
    :cond_3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 144
    const-string/jumbo v7, "WeexScanConfigRegister"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "resolve component "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " className "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " methods "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_4
    new-instance v7, Lcom/taobao/weex/ui/config/ConfigComponentHolder;

    invoke-direct {v7, v5, v0, v2, v1}, Lcom/taobao/weex/ui/config/ConfigComponentHolder;-><init>(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_0

    .line 147
    .end local v0    # "appendTree":Z
    .end local v1    # "arrays":[Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    .end local v4    # "methods":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "type":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "WeexScanConfigRegister"

    invoke-static {v7, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private declared-synchronized generate()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 72
    const/4 v1, 0x0

    .line 78
    :goto_0
    monitor-exit p0

    return v1

    .line 75
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/taobao/weex/ui/SimpleComponentHolder;->getMethods(Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v0

    .line 76
    .local v0, "methodPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mPropertyInvokers:Ljava/util/Map;

    .line 77
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mMethodInvokers:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "methodPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 5
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 86
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getClassLoaderAdapter()Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mType:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, p1}, Lcom/taobao/weex/adapter/ClassLoaderAdapter;->getComponentClass(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mClass:Ljava/lang/Class;

    .line 87
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mClassLoader:Ljava/lang/ClassLoader;

    .line 89
    :cond_1
    new-instance v1, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;

    iget-object v2, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mClass:Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;-><init>(Ljava/lang/Class;)V

    .line 90
    .local v1, "creator":Lcom/taobao/weex/ui/ComponentCreator;
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/ui/ComponentCreator;->createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 92
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/component/WXComponent;->bindHolder(Lcom/taobao/weex/ui/IFComponentHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-object v0

    .line 85
    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v1    # "creator":Lcom/taobao/weex/ui/ComponentCreator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mMethodInvokers:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->generate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/Invoker;

    goto :goto_0
.end method

.method public getMethods()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->methods:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 119
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->methods:[Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized getPropertyInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mPropertyInvokers:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->generate()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 102
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mPropertyInvokers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/Invoker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isAppendTree()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->mAppendTree:Z

    return v0
.end method

.method public loadIfNonLazy()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
