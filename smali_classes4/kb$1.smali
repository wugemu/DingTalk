.class final Lkb$1;
.super Ljava/lang/Object;
.source "LocalDnsStrategyTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lkb;


# direct methods
.method constructor <init>(Lkb;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lkb$1;->c:Lkb;

    iput-object p2, p0, Lkb$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lkb$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 77
    :try_start_0
    iget-object v2, p0, Lkb$1;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 78
    .local v0, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "ip":Ljava/lang/String;
    invoke-static {v1}, Lku;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    iget-object v2, p0, Lkb$1;->a:Ljava/lang/String;

    invoke-static {v2}, Lkg;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lkb$1;->c:Lkb;

    iget-object v2, v2, Lkb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lkb$1;->a:Ljava/lang/String;

    .line 1094
    invoke-static {}, Lanet/channel/strategy/RawConnStrategy$a;->a()Lanet/channel/strategy/RawConnStrategy;

    move-result-object v4

    invoke-static {v1, v4}, Lanet/channel/strategy/IPConnStrategy$a;->a(Ljava/lang/String;Lanet/channel/strategy/RawConnStrategy;)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v4

    .line 81
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Lanet/channel/util/ALog;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string/jumbo v2, "awcn.LocalDnsStrategyTable"

    const-string/jumbo v3, "resolve ip by local dns"

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "host"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lkb$1;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "ip"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :cond_0
    :goto_1
    iget-object v2, p0, Lkb$1;->c:Lkb;

    iget-object v3, v2, Lkb;->b:Ljava/util/HashMap;

    monitor-enter v3

    .line 99
    :try_start_1
    iget-object v2, p0, Lkb$1;->c:Lkb;

    iget-object v2, v2, Lkb;->b:Ljava/util/HashMap;

    iget-object v4, p0, Lkb$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 101
    iget-object v3, p0, Lkb$1;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 102
    :try_start_2
    iget-object v2, p0, Lkb$1;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 105
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    .end local v1    # "ip":Ljava/lang/String;
    :goto_2
    return-void

    .line 84
    .restart local v0    # "inetAddress":Ljava/net/InetAddress;
    .restart local v1    # "ip":Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lkb$1;->c:Lkb;

    iget-object v2, v2, Lkb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lkb$1;->a:Ljava/lang/String;

    const/16 v4, 0x50

    sget-object v5, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    invoke-static {v4, v5}, Lanet/channel/strategy/RawConnStrategy$a;->a(ILanet/channel/entity/ConnType;)Lanet/channel/strategy/RawConnStrategy;

    move-result-object v4

    invoke-static {v1, v4}, Lanet/channel/strategy/IPConnStrategy$a;->a(Ljava/lang/String;Lanet/channel/strategy/RawConnStrategy;)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 94
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    .end local v1    # "ip":Ljava/lang/String;
    :catch_0
    move-exception v2

    const/4 v2, 0x1

    :try_start_4
    invoke-static {v2}, Lanet/channel/util/ALog;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    const-string/jumbo v2, "awcn.LocalDnsStrategyTable"

    const-string/jumbo v3, "resolve ip by local dns failed"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "host"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lkb$1;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 98
    :cond_2
    iget-object v2, p0, Lkb$1;->c:Lkb;

    iget-object v3, v2, Lkb;->b:Ljava/util/HashMap;

    monitor-enter v3

    .line 99
    :try_start_5
    iget-object v2, p0, Lkb$1;->c:Lkb;

    iget-object v2, v2, Lkb;->b:Ljava/util/HashMap;

    iget-object v4, p0, Lkb$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 101
    iget-object v3, p0, Lkb$1;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 102
    :try_start_6
    iget-object v2, p0, Lkb$1;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 91
    .restart local v0    # "inetAddress":Ljava/net/InetAddress;
    .restart local v1    # "ip":Ljava/lang/String;
    :cond_3
    :try_start_7
    iget-object v2, p0, Lkb$1;->c:Lkb;

    iget-object v2, v2, Lkb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lkb$1;->a:Ljava/lang/String;

    sget-object v4, Lkb;->c:Lanet/channel/strategy/IPConnStrategy;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 98
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    .end local v1    # "ip":Ljava/lang/String;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lkb$1;->c:Lkb;

    iget-object v3, v3, Lkb;->b:Ljava/util/HashMap;

    monitor-enter v3

    .line 99
    :try_start_8
    iget-object v4, p0, Lkb$1;->c:Lkb;

    iget-object v4, v4, Lkb;->b:Ljava/util/HashMap;

    iget-object v5, p0, Lkb$1;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 101
    iget-object v3, p0, Lkb$1;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 102
    :try_start_9
    iget-object v4, p0, Lkb$1;->b:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v2

    .line 100
    .restart local v0    # "inetAddress":Ljava/net/InetAddress;
    .restart local v1    # "ip":Ljava/lang/String;
    :catchall_2
    move-exception v2

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v2

    .line 103
    :catchall_3
    move-exception v2

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v2

    .line 100
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    .end local v1    # "ip":Ljava/lang/String;
    :catchall_4
    move-exception v2

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v2

    :catchall_5
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v2

    .line 103
    :catchall_6
    move-exception v2

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v2
.end method
