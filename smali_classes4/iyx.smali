.class public final Liyx;
.super Ljava/lang/Object;
.source "ServiceFactory.java"


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Liyx;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v9, Liyx;->a:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v9

    .line 22
    :try_start_0
    sget-object v8, Liyx;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 23
    .local v5, "proxy":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 24
    monitor-exit v9

    move-object v6, v5

    .line 50
    .end local v5    # "proxy":Ljava/lang/Object;
    .local v6, "proxy":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 26
    .end local v6    # "proxy":Ljava/lang/Object;
    .restart local v5    # "proxy":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v8

    if-nez v8, :cond_1

    .line 27
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Not a interface: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 51
    .end local v5    # "proxy":Ljava/lang/Object;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 30
    .restart local v5    # "proxy":Ljava/lang/Object;
    :cond_1
    :try_start_1
    const-class v8, Lizm;

    invoke-virtual {v8, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_2

    const-class v8, Lizl;

    invoke-virtual {v8, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 31
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Not a RPC client interface: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 34
    :cond_2
    const-class v8, Lcom/laiwang/idl/AppName;

    invoke-virtual {p0, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/laiwang/idl/AppName;

    .line 35
    .local v0, "a":Lcom/laiwang/idl/AppName;
    const/4 v2, 0x0

    .line 36
    .local v2, "appName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 37
    invoke-interface {v0}, Lcom/laiwang/idl/AppName;->value()Ljava/lang/String;

    move-result-object v2

    .line 39
    :cond_3
    const-class v8, Lcom/laiwang/idl/Alias;

    invoke-virtual {p0, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/laiwang/idl/Alias;

    .line 40
    .local v1, "alias":Lcom/laiwang/idl/Alias;
    const/4 v7, 0x0

    .line 41
    .local v7, "serviceAlias":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 42
    invoke-interface {v1}, Lcom/laiwang/idl/Alias;->value()Ljava/lang/String;

    move-result-object v7

    .line 45
    :cond_4
    const-class v8, Lcom/laiwang/idl/BizName;

    invoke-virtual {p0, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/laiwang/idl/BizName;

    .line 46
    .local v4, "bn":Lcom/laiwang/idl/BizName;
    if-nez v4, :cond_5

    const/4 v3, 0x0

    .line 48
    .local v3, "bizName":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    new-instance v11, Liyw;

    invoke-direct {v11, v2, v7, v3}, Liyw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v10, v11}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v5

    .line 49
    sget-object v8, Liyx;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p0, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    monitor-exit v9

    move-object v6, v5

    .end local v5    # "proxy":Ljava/lang/Object;
    .restart local v6    # "proxy":Ljava/lang/Object;
    goto/16 :goto_0

    .line 46
    .end local v3    # "bizName":Ljava/lang/String;
    .end local v6    # "proxy":Ljava/lang/Object;
    .restart local v5    # "proxy":Ljava/lang/Object;
    :cond_5
    invoke-interface {v4}, Lcom/laiwang/idl/BizName;->value()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_1
.end method
