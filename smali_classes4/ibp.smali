.class public Libp;
.super Ljava/lang/Object;
.source "AsyncCallbackTaskQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Libp$a;
    }
.end annotation


# static fields
.field private static volatile b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Libp;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/os/Handler;


# instance fields
.field public a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Libp$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Libp;->c:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Libp;->a:Ljava/util/LinkedList;

    .line 57
    iput-object p1, p0, Libp;->d:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static a(Ljava/lang/String;)Libp;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 24
    sget-object v1, Libp;->b:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 25
    const-class v2, Libp;

    monitor-enter v2

    .line 26
    :try_start_0
    sget-object v1, Libp;->b:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Libp;->b:Ljava/util/Map;

    .line 29
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    const-class v2, Libp;

    monitor-enter v2

    .line 33
    :try_start_1
    sget-object v1, Libp;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libp;

    .line 34
    .local v0, "queue":Libp;
    if-nez v0, :cond_2

    .line 35
    new-instance v0, Libp;

    .end local v0    # "queue":Libp;
    invoke-direct {v0, p0}, Libp;-><init>(Ljava/lang/String;)V

    .line 36
    .restart local v0    # "queue":Libp;
    sget-object v1, Libp;->b:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    return-object v0

    .line 29
    .end local v0    # "queue":Libp;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 38
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static a()V
    .locals 6

    .prologue
    .line 43
    const-class v3, Libp;

    monitor-enter v3

    .line 44
    :try_start_0
    sget-object v1, Libp;->b:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 45
    monitor-exit v3

    .line 51
    .local v0, "queue":Libp;
    :goto_0
    return-void

    .line 47
    .end local v0    # "queue":Libp;
    :cond_0
    sget-object v1, Libp;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v0    # "queue":Libp;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "queue":Libp;
    check-cast v0, Libp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    .restart local v0    # "queue":Libp;
    const/4 v2, 0x0

    .line 1220
    :try_start_1
    const-string/jumbo v4, "[TAG] Msg"

    .line 2014
    const-string/jumbo v5, "im"

    invoke-static {v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v2

    .line 1221
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "release queue cid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Libp;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lhzv;->a(Ljava/lang/String;)V

    .line 1223
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1224
    :try_start_2
    iget-object v4, v0, Libp;->a:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 1225
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2030
    :try_start_3
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    goto :goto_1

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1225
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1227
    :catchall_2
    move-exception v1

    .line 3030
    :try_start_6
    invoke-static {v2}, Lhzt;->a(Lhzv;)V

    .line 1227
    throw v1

    .line 50
    :cond_1
    sget-object v1, Libp;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 51
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Libp;)V
    .locals 0
    .param p0, "x0"    # Libp;

    .prologue
    .line 18
    invoke-virtual {p0}, Libp;->b()V

    return-void
.end method

.method static synthetic a(Libp;Z)Z
    .locals 1
    .param p0, "x0"    # Libp;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Libp;->e:Z

    return v0
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Libp;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 98
    const/4 v4, 0x0

    .line 99
    .local v4, "task":Libp$a;
    monitor-enter p0

    .line 100
    :try_start_0
    iget-boolean v6, p0, Libp;->e:Z

    if-nez v6, :cond_0

    .line 101
    iget-object v6, p0, Libp;->a:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 102
    const/4 v6, 0x1

    iput-boolean v6, p0, Libp;->e:Z

    .line 103
    iget-object v6, p0, Libp;->a:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Libp$a;

    move-object v4, v0

    .line 106
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    if-eqz v4, :cond_1

    .line 108
    const/4 v5, 0x0

    .line 111
    .local v5, "trace":Lhzv;
    :try_start_1
    const-string/jumbo v6, "[TAG] Msg"

    .line 4014
    const-string/jumbo v7, "im"

    invoke-static {v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v5

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "execute queue task msg:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4060
    iget-wide v8, v4, Libp$a;->b:J

    .line 112
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lhzv;->a(Ljava/lang/String;)V

    .line 114
    move-object v2, v4

    .line 115
    .local v2, "finalTask":Libp$a;
    new-instance v3, Libp$1;

    invoke-direct {v3, p0, v2}, Libp$1;-><init>(Libp;Libp$a;)V

    .line 145
    .local v3, "runnable":Ljava/lang/Runnable;
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 146
    :try_start_2
    sget-object v6, Libp;->c:Landroid/os/Handler;

    const-wide/32 v8, 0x1d4c0

    invoke-virtual {v6, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    :try_start_3
    new-instance v6, Libp$2;

    invoke-direct {v6, p0, v2, v3}, Libp$2;-><init>(Libp;Libp$a;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Libp$a;->a(Lcom/alibaba/wukong/Callback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 5030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    .line 214
    .end local v2    # "finalTask":Libp$a;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v5    # "trace":Lhzv;
    :cond_1
    return-void

    .line 106
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 147
    .restart local v2    # "finalTask":Libp$a;
    .restart local v3    # "runnable":Ljava/lang/Runnable;
    .restart local v5    # "trace":Lhzv;
    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 211
    .end local v2    # "finalTask":Libp$a;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :catchall_2
    move-exception v6

    .line 6030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    .line 211
    throw v6
.end method
