.class public final Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;
.super Ljava/lang/Object;
.source "CommonEmailApiFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sFactoryInstance:Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;


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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;

    invoke-direct {v0}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;->sFactoryInstance:Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;->instances:Ljava/util/Map;

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;->sFactoryInstance:Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized getApiInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;",
            ">;)",
            "Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 34
    .local p1, "serviceType":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 35
    .local v5, "serviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;->instances:Ljava/util/Map;

    .line 37
    .local v1, "container":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 38
    .local v3, "instance":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 41
    const/4 v6, 0x0

    :try_start_1
    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 42
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;>;"
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 43
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 44
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;>;"
    :cond_0
    :try_start_2
    invoke-virtual {p1, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :goto_0
    monitor-exit p0

    return-object v4

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Faile to create AbstractBaseApi instance."

    invoke-static {v6, v7, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    const/4 v4, 0x0

    goto :goto_0

    .line 34
    .end local v1    # "container":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "instance":Ljava/lang/Object;
    .end local v5    # "serviceName":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiFactory;->instances:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
