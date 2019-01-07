.class public Lcom/alibaba/alimei/restfulapi/service/impl/ServiceFactoryImpl;
.super Ljava/lang/Object;
.source "ServiceFactoryImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;


# instance fields
.field private asynchronousInstances:Ljava/util/Map;
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

.field authProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

.field private nonAsynchronousInstances:Ljava/util/Map;
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
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;)V
    .locals 1
    .param p1, "authProvider"    # Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/service/impl/ServiceFactoryImpl;->asynchronousInstances:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/service/impl/ServiceFactoryImpl;->nonAsynchronousInstances:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/service/impl/ServiceFactoryImpl;->authProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    .line 25
    return-void
.end method


# virtual methods
.method public getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;
    .locals 10
    .param p2, "isAsynchronous"    # Z
    .param p3, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    .local p1, "serviceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, "serviceName":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/service/impl/ServiceFactoryImpl;->asynchronousInstances:Ljava/util/Map;

    .line 41
    .local v1, "container":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 42
    .local v3, "instance":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 46
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 47
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 48
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/alimei/restfulapi/service/impl/ServiceFactoryImpl;->authProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v7

    .line 53
    .local v4, "instanceArgs":[Ljava/lang/Object;
    :goto_2
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 55
    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v4    # "instanceArgs":[Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    .line 65
    :goto_3
    return-object v5

    .line 38
    .end local v1    # "container":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "instance":Ljava/lang/Object;
    .end local v6    # "serviceName":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 39
    .restart local v6    # "serviceName":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/service/impl/ServiceFactoryImpl;->nonAsynchronousInstances:Ljava/util/Map;

    goto :goto_1

    .line 50
    .restart local v1    # "container":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "instance":Ljava/lang/Object;
    :cond_3
    const/4 v7, 0x3

    :try_start_1
    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 51
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/alimei/restfulapi/service/impl/ServiceFactoryImpl;->authProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    aput-object p3, v4, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v4    # "instanceArgs":[Ljava/lang/Object;
    goto :goto_2

    .line 56
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v4    # "instanceArgs":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->isLogE()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 58
    const-string/jumbo v7, "Faile to create service instance."

    invoke-static {v7, v2}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :cond_4
    const/4 v5, 0x0

    goto :goto_3
.end method
