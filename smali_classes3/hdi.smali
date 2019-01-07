.class public final Lhdi;
.super Ljava/lang/Object;
.source "NavMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdi$b;,
        Lhdi$a;
    }
.end annotation


# instance fields
.field private a:Lhdi$a;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lhdi$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhdi$a;)V
    .locals 1
    .param p1, "context"    # Lhdi$a;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhdi;->b:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhdi;->c:Ljava/util/Map;

    .line 20
    iput-object p1, p0, Lhdi;->a:Lhdi$a;

    .line 21
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Lhdi$b;)V
    .locals 8
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "message"    # Lhdi$b;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lhdi;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 32
    iget-object v3, p0, Lhdi;->c:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 33
    .local v2, "messageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v2, :cond_0

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "messageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .restart local v2    # "messageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lhdi;->c:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    invoke-virtual {p2}, Lhdi$b;->a()Lhdi$b;

    move-result-object v0

    .line 1165
    .local v0, "copy":Lhdi$b;
    invoke-static {}, Lhdi$b;->b()J

    move-result-wide v6

    iput-wide v6, v0, Lhdi$b;->a:J

    .line 1166
    iget-wide v4, v0, Lhdi$b;->a:J

    .line 40
    .local v4, "mid":J
    iget-object v3, p0, Lhdi;->b:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 45
    .local v1, "id":Ljava/lang/Long;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lhdi;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    iget-object v7, p0, Lhdi;->a:Lhdi$a;

    iget-object v3, p0, Lhdi;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhdi$b;

    invoke-interface {v7, p1, v3}, Lhdi$a;->a(Ljava/lang/String;Lhdi$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 31
    .end local v0    # "copy":Lhdi$b;
    .end local v1    # "id":Ljava/lang/Long;
    .end local v2    # "messageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "mid":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 50
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lhdi;->a:Lhdi$a;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lhdi;->a:Lhdi$a;

    invoke-interface {v0, p1}, Lhdi$a;->b(Ljava/lang/String;)Z

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lhdi$b;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lhdi;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    iget-object v4, p0, Lhdi;->c:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 68
    .local v3, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v3, :cond_1

    .line 69
    iget-object v4, p0, Lhdi;->c:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lhdi$b;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 77
    .local v2, "mid":Ljava/lang/Long;
    if-eqz v2, :cond_0

    iget-object v5, p0, Lhdi;->b:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    iget-object v5, p0, Lhdi;->b:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdi$b;

    .line 80
    .local v0, "message":Lhdi$b;
    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 66
    .end local v0    # "message":Lhdi$b;
    .end local v1    # "messages":Ljava/util/List;, "Ljava/util/List<Lhdi$b;>;"
    .end local v2    # "mid":Ljava/lang/Long;
    .end local v3    # "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 72
    .restart local v3    # "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v3    # "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_0

    .line 89
    .end local v3    # "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    const/4 v1, 0x0

    :cond_3
    monitor-exit p0

    return-object v1
.end method

.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhdi;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 3
    .param p1, "mid"    # J

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhdi;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/List;Lhdi$b;)V
    .locals 3
    .param p2, "message"    # Lhdi$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lhdi$b;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 54
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 55
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, "target":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lhdi;->a(Ljava/lang/String;Lhdi$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    .end local v0    # "target":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 59
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 4
    .param p1, "navId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lhdi;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lhdi$b;>;"
    if-eqz v1, :cond_0

    .line 102
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdi$b;

    .line 103
    .local v0, "message":Lhdi$b;
    iget-object v3, p0, Lhdi;->a:Lhdi$a;

    invoke-interface {v3, p1, v0}, Lhdi$a;->a(Ljava/lang/String;Lhdi$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    .end local v0    # "message":Lhdi$b;
    .end local v1    # "messages":Ljava/util/List;, "Ljava/util/List<Lhdi$b;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 106
    .restart local v1    # "messages":Ljava/util/List;, "Ljava/util/List<Lhdi$b;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lhdi;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lhdi;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
