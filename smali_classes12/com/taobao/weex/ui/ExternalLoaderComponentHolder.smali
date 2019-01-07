.class public Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;
.super Ljava/lang/Object;
.source "ExternalLoaderComponentHolder.java"

# interfaces
.implements Lcom/taobao/weex/ui/IFComponentHolder;


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleComponentHolder"


# instance fields
.field private mClass:Ljava/lang/Class;

.field private final mClzGetter:Lcom/taobao/weex/ui/IExternalComponentGetter;

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

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taobao/weex/ui/IExternalComponentGetter;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "clzGetter"    # Lcom/taobao/weex/ui/IExternalComponentGetter;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mClzGetter:Lcom/taobao/weex/ui/IExternalComponentGetter;

    .line 47
    iput-object p1, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mType:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private declared-synchronized generate()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 56
    const/4 v1, 0x0

    .line 62
    :goto_0
    monitor-exit p0

    return v1

    .line 59
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/taobao/weex/ui/SimpleComponentHolder;->getMethods(Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v0

    .line 60
    .local v0, "methodPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mPropertyInvokers:Ljava/util/Map;

    .line 61
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mMethodInvokers:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    const/4 v1, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "methodPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mClass:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mClzGetter:Lcom/taobao/weex/ui/IExternalComponentGetter;

    iget-object v3, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mType:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/taobao/weex/ui/IExternalComponentGetter;->getExternalComponentClass(Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mClass:Ljava/lang/Class;

    .line 70
    :cond_0
    new-instance v1, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;

    iget-object v2, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mClass:Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;-><init>(Ljava/lang/Class;)V

    .line 71
    .local v1, "creator":Lcom/taobao/weex/ui/ComponentCreator;
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/ui/ComponentCreator;->createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 73
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/component/WXComponent;->bindHolder(Lcom/taobao/weex/ui/IFComponentHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-object v0

    .line 67
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
    .line 88
    iget-object v0, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mMethodInvokers:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->generate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/Invoker;

    goto :goto_0
.end method

.method public declared-synchronized getMethods()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mMethodInvokers:Ljava/util/Map;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->generate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    monitor-exit p0

    return-object v1

    .line 100
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 101
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPropertyInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mPropertyInvokers:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->generate()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 83
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mPropertyInvokers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/Invoker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadIfNonLazy()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
