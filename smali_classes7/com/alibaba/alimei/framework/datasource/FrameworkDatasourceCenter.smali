.class public Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;
.super Ljava/lang/Object;
.source "FrameworkDatasourceCenter.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;


# instance fields
.field private instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lxm;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLocker:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->mLocker:Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->instances:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->mAllObservers:Ljava/util/HashMap;

    .line 31
    return-void
.end method

.method public static getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    return-object v0
.end method

.method private getContentObservers(Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .locals 2
    .param p2, "forceNew"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lxm;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 94
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->mAllObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 95
    .local v0, "observers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lxm;>;"
    if-eqz p2, :cond_0

    .line 96
    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "observers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lxm;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .restart local v0    # "observers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lxm;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->mAllObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->sInstance:Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->sInstance:Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    .line 41
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->sInstance:Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    return-object v0
.end method


# virtual methods
.method public getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alibaba/alimei/framework/datasource/IDatasource;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 114
    .local p1, "serviceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "serviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->instances:Ljava/util/Map;

    .line 117
    .local v1, "container":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 118
    .local v3, "instance":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 120
    const/4 v6, 0x0

    :try_start_0
    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 121
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 122
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 123
    if-eqz v3, :cond_0

    .line 124
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/framework/datasource/IDatasource;

    .line 133
    :goto_0
    return-object v4

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Faile to create datasource instance."

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public postContentChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
    .locals 4
    .param p2, "dataGroup"    # Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getContentObservers(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 51
    .local v2, "observers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lxm;>;"
    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lxm;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxm;

    .line 55
    .local v1, "observer":Lxm;
    invoke-interface {v1, p1, p2}, Lxm;->onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V

    goto :goto_0

    .line 58
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lxm;>;"
    .end local v1    # "observer":Lxm;
    :cond_0
    return-void
.end method

.method public registerContentObserver(Ljava/lang/Class;Lxm;)V
    .locals 3
    .param p2, "observer"    # Lxm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lxm;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 66
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 70
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getContentObservers(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 71
    .local v0, "observers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lxm;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 72
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "observers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lxm;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterContentObserver(Ljava/lang/Class;Lxm;)V
    .locals 3
    .param p2, "observer"    # Lxm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lxm;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 82
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 86
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getContentObservers(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 87
    .local v0, "observers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lxm;>;"
    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "observers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lxm;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
