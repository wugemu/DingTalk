.class public Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;
.super Ljava/lang/Object;
.source "WarnerContainer.java"


# static fields
.field private static final sHealthWarners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/alibaba/doraemon/health/HealthWarner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->sHealthWarners:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHealthWarner(Lcom/alibaba/doraemon/health/HealthWarner;)V
    .locals 2
    .param p0, "warner"    # Lcom/alibaba/doraemon/health/HealthWarner;

    .prologue
    .line 19
    if-eqz p0, :cond_0

    .line 20
    sget-object v1, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->sHealthWarners:Ljava/util/HashSet;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->sHealthWarners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    monitor-exit v1

    .line 24
    :cond_0
    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static notifyHealthWarn(ILjava/util/Map;)V
    .locals 4
    .param p0, "warnCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "alarmInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->sHealthWarners:Ljava/util/HashSet;

    monitor-enter v3

    .line 47
    :try_start_0
    sget-object v2, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->sHealthWarners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 48
    .local v1, "warners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/alibaba/doraemon/health/HealthWarner;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/HealthWarner;

    .line 50
    .local v0, "warner":Lcom/alibaba/doraemon/health/HealthWarner;
    invoke-interface {v0, p0, p1}, Lcom/alibaba/doraemon/health/HealthWarner;->robotAlarm(ILjava/util/Map;)V

    goto :goto_0

    .line 48
    .end local v0    # "warner":Lcom/alibaba/doraemon/health/HealthWarner;
    .end local v1    # "warners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/alibaba/doraemon/health/HealthWarner;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 52
    .restart local v1    # "warners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/alibaba/doraemon/health/HealthWarner;>;"
    :cond_0
    return-void
.end method

.method public static varargs notifyHealthWarn(I[Ljava/lang/Object;)V
    .locals 4
    .param p0, "warnCode"    # I
    .param p1, "value"    # [Ljava/lang/Object;

    .prologue
    .line 36
    sget-object v3, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->sHealthWarners:Ljava/util/HashSet;

    monitor-enter v3

    .line 37
    :try_start_0
    sget-object v2, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->sHealthWarners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 38
    .local v1, "warners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/alibaba/doraemon/health/HealthWarner;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/HealthWarner;

    .line 40
    .local v0, "warner":Lcom/alibaba/doraemon/health/HealthWarner;
    invoke-interface {v0, p0, p1}, Lcom/alibaba/doraemon/health/HealthWarner;->warn(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    .end local v0    # "warner":Lcom/alibaba/doraemon/health/HealthWarner;
    .end local v1    # "warners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/alibaba/doraemon/health/HealthWarner;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 42
    .restart local v1    # "warners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/alibaba/doraemon/health/HealthWarner;>;"
    :cond_0
    return-void
.end method

.method public static removeHealthWarner(Lcom/alibaba/doraemon/health/HealthWarner;)V
    .locals 2
    .param p0, "warner"    # Lcom/alibaba/doraemon/health/HealthWarner;

    .prologue
    .line 27
    if-eqz p0, :cond_0

    .line 28
    sget-object v1, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->sHealthWarners:Ljava/util/HashSet;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/WarnerContainer;->sHealthWarners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 30
    monitor-exit v1

    .line 32
    :cond_0
    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
