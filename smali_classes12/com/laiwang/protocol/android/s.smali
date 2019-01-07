.class public Lcom/laiwang/protocol/android/s;
.super Ljava/lang/Object;
.source "ServerTimeUtil.java"


# static fields
.field private static a:J

.field private static b:J

.field private static c:J

.field private static volatile d:Z

.field private static final e:Ljava/lang/Object;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 20
    sput-wide v0, Lcom/laiwang/protocol/android/s;->a:J

    .line 21
    sput-wide v0, Lcom/laiwang/protocol/android/s;->b:J

    .line 22
    sput-wide v0, Lcom/laiwang/protocol/android/s;->c:J

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/laiwang/protocol/android/s;->d:Z

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/s;->e:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/laiwang/protocol/android/s;->f:Z

    return-void
.end method

.method public static declared-synchronized a()J
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    .line 43
    const-class v8, Lcom/laiwang/protocol/android/s;

    monitor-enter v8

    :try_start_0
    sget-wide v10, Lcom/laiwang/protocol/android/s;->a:J

    cmp-long v9, v10, v6

    if-lez v9, :cond_0

    sget-wide v10, Lcom/laiwang/protocol/android/s;->b:J

    cmp-long v9, v10, v6

    if-gtz v9, :cond_2

    .line 44
    :cond_0
    const-string/jumbo v9, "tm_s"

    invoke-static {v9}, Lcom/laiwang/protocol/android/cg;->b(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/laiwang/protocol/android/s;->a:J

    .line 45
    const-string/jumbo v9, "tm_c"

    invoke-static {v9}, Lcom/laiwang/protocol/android/cg;->b(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/laiwang/protocol/android/s;->b:J

    .line 46
    sget-wide v10, Lcom/laiwang/protocol/android/s;->a:J

    cmp-long v9, v10, v6

    if-lez v9, :cond_1

    sget-wide v10, Lcom/laiwang/protocol/android/s;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v9, v10, v6

    if-gtz v9, :cond_2

    .line 68
    .local v0, "clockInterval":J
    .local v2, "clockTime":J
    :cond_1
    :goto_0
    monitor-exit v8

    return-wide v6

    .line 50
    .end local v0    # "clockInterval":J
    .end local v2    # "clockTime":J
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 51
    .restart local v2    # "clockTime":J
    sget-wide v10, Lcom/laiwang/protocol/android/s;->b:J

    sub-long v0, v2, v10

    .line 52
    .restart local v0    # "clockInterval":J
    cmp-long v9, v0, v6

    if-lez v9, :cond_5

    .line 53
    sget-boolean v9, Lcom/laiwang/protocol/android/s;->d:Z

    if-eqz v9, :cond_3

    .line 54
    sget-wide v6, Lcom/laiwang/protocol/android/s;->a:J

    add-long/2addr v6, v0

    goto :goto_0

    .line 56
    :cond_3
    sget-wide v10, Lcom/laiwang/protocol/android/s;->c:J

    cmp-long v9, v10, v6

    if-gtz v9, :cond_4

    .line 57
    const-string/jumbo v9, "tm_l"

    invoke-static {v9}, Lcom/laiwang/protocol/android/cg;->b(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/laiwang/protocol/android/s;->c:J

    .line 59
    :cond_4
    sget-wide v10, Lcom/laiwang/protocol/android/s;->c:J

    cmp-long v9, v10, v6

    if-lez v9, :cond_5

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-wide v12, Lcom/laiwang/protocol/android/s;->c:J

    sub-long v4, v10, v12

    .line 61
    .local v4, "localInterval":J
    sub-long v10, v4, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    cmp-long v9, v10, v12

    if-gez v9, :cond_5

    .line 62
    sget-wide v6, Lcom/laiwang/protocol/android/s;->a:J

    add-long/2addr v6, v0

    goto :goto_0

    .line 67
    .end local v4    # "localInterval":J
    :cond_5
    invoke-static {}, Lcom/laiwang/protocol/android/s;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    .end local v0    # "clockInterval":J
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6
.end method

.method static declared-synchronized a(J)V
    .locals 6
    .param p0, "timestamp"    # J

    .prologue
    .line 29
    const-class v2, Lcom/laiwang/protocol/android/s;

    monitor-enter v2

    const-wide/16 v4, 0x0

    cmp-long v1, p0, v4

    if-gtz v1, :cond_0

    .line 40
    :goto_0
    monitor-exit v2

    return-void

    .line 31
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/laiwang/protocol/android/s;->b:J

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/laiwang/protocol/android/s;->c:J

    .line 33
    sput-wide p0, Lcom/laiwang/protocol/android/s;->a:J

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "tm_s"

    sget-wide v4, Lcom/laiwang/protocol/android/s;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v1, "tm_c"

    sget-wide v4, Lcom/laiwang/protocol/android/s;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v1, "tm_l"

    sget-wide v4, Lcom/laiwang/protocol/android/s;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {v0}, Lcom/laiwang/protocol/android/cg;->a(Ljava/util/Map;)V

    .line 39
    const/4 v1, 0x1

    sput-boolean v1, Lcom/laiwang/protocol/android/s;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 29
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static a(Z)V
    .locals 2
    .param p0, "fromChina"    # Z

    .prologue
    .line 101
    sget-object v1, Lcom/laiwang/protocol/android/s;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    sput-boolean p0, Lcom/laiwang/protocol/android/s;->f:Z

    .line 103
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()J
    .locals 8

    .prologue
    .line 72
    invoke-static {}, Lcom/laiwang/protocol/android/s;->a()J

    move-result-wide v2

    .line 73
    .local v2, "serverTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    .local v0, "localTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 79
    .end local v0    # "localTime":J
    :cond_0
    :goto_0
    return-wide v0

    .line 77
    .restart local v0    # "localTime":J
    :cond_1
    sub-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 78
    goto :goto_0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 95
    sget-object v1, Lcom/laiwang/protocol/android/s;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-boolean v0, Lcom/laiwang/protocol/android/s;->f:Z

    monitor-exit v1

    return v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static declared-synchronized d()V
    .locals 6

    .prologue
    .line 83
    const-class v2, Lcom/laiwang/protocol/android/s;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/laiwang/protocol/android/s;->d:Z

    .line 84
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/laiwang/protocol/android/s;->a:J

    .line 85
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/laiwang/protocol/android/s;->b:J

    .line 86
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/laiwang/protocol/android/s;->c:J

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "tm_s"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v1, "tm_c"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v1, "tm_l"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {v0}, Lcom/laiwang/protocol/android/cg;->a(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit v2

    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
