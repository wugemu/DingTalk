.class public Ldjv;
.super Ljava/lang/Object;
.source "IMPathUrlMap.java"


# static fields
.field private static a:Ldjv;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldjv;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Ldjv;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Ldjv;->a:Ldjv;

    if-nez v0, :cond_1

    .line 15
    const-class v1, Ldjv;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Ldjv;->a:Ldjv;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ldjv;

    invoke-direct {v0}, Ldjv;-><init>()V

    sput-object v0, Ldjv;->a:Ldjv;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    sget-object v0, Ldjv;->a:Ldjv;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 34
    monitor-enter p0

    if-nez p1, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Ldjv;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 27
    monitor-enter p0

    if-nez p1, :cond_0

    .line 31
    :goto_0
    monitor-exit p0

    return-void

    .line 30
    :cond_0
    :try_start_0
    iget-object v0, p0, Ldjv;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
