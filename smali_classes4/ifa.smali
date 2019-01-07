.class public Lifa;
.super Ljava/lang/Object;
.source "AVFactory.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/util/concurrent/ConcurrentMap;
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
    .line 13
    const-class v0, Lifa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lifa;->a:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lifa;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/internal/engine/AVProfile;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 72
    .local v1, "avProfile":Lcom/alibaba/wukong/openav/internal/engine/AVProfile;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lcom/alibaba/wukong/openav/internal/engine/AVProfile;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    .line 78
    .local v2, "flag":Z
    if-eqz v2, :cond_0

    .line 79
    const-class v3, Lcom/alibaba/wukong/openav/internal/engine/AVProfile;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .end local v1    # "avProfile":Lcom/alibaba/wukong/openav/internal/engine/AVProfile;
    check-cast v1, Lcom/alibaba/wukong/openav/internal/engine/AVProfile;

    .restart local v1    # "avProfile":Lcom/alibaba/wukong/openav/internal/engine/AVProfile;
    :cond_0
    move-object v3, v1

    .line 82
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "flag":Z
    :goto_0
    return-object v3

    .line 74
    :catch_0
    move-exception v3

    sget-object v3, Lifa;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lieg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
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
    .line 30
    .local p0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_0

    sget-object v2, Lifa;->c:Ljava/util/concurrent/ConcurrentMap;

    if-nez v2, :cond_1

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 51
    :goto_0
    return-object v1

    .line 34
    :cond_1
    sget-object v3, Lifa;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 35
    :try_start_0
    sget-object v2, Lifa;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, "proxy":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 37
    monitor-exit v3

    goto :goto_0

    .line 52
    .end local v1    # "proxy":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 39
    .restart local v1    # "proxy":Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Is a interface: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 50
    :goto_1
    :try_start_3
    sget-object v2, Lifa;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    monitor-exit v3

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 47
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lifa;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 20
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lifa;->c:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lifa;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lifa;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 27
    :cond_0
    return-void
.end method
