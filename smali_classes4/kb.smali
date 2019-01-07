.class public final Lkb;
.super Ljava/lang/Object;
.source "LocalDnsStrategyTable.java"


# static fields
.field static final c:Lanet/channel/strategy/IPConnStrategy;


# instance fields
.field final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    sget-object v2, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    invoke-static {v1, v2}, Lanet/channel/strategy/RawConnStrategy$a;->a(ILanet/channel/entity/ConnType;)Lanet/channel/strategy/RawConnStrategy;

    move-result-object v1

    invoke-static {v0, v1}, Lanet/channel/strategy/IPConnStrategy$a;->a(Ljava/lang/String;Lanet/channel/strategy/RawConnStrategy;)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v0

    sput-object v0, Lkb;->c:Lanet/channel/strategy/IPConnStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lkb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkb;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "host"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lku;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 33
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 68
    :cond_1
    :goto_0
    return-object v1

    .line 36
    :cond_2
    invoke-static {v9}, Lanet/channel/util/ALog;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 37
    const-string/jumbo v3, "awcn.LocalDnsStrategyTable"

    const-string/jumbo v4, "try resolve ip with local dns"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "host"

    aput-object v7, v6, v8

    aput-object p1, v6, v9

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :cond_3
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 41
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljy;>;"
    iget-object v3, p0, Lkb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 44
    iget-object v4, p0, Lkb;->b:Ljava/util/HashMap;

    monitor-enter v4

    .line 45
    :try_start_0
    iget-object v3, p0, Lkb;->b:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 46
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 47
    .local v2, "lockObj":Ljava/lang/Object;
    iget-object v3, p0, Lkb;->b:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    new-instance v3, Lkb$1;

    invoke-direct {v3, p0, p1, v2}, Lkb$1;-><init>(Lkb;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lkq;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    .line 52
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-eqz v2, :cond_4

    .line 55
    :try_start_1
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    const-wide/16 v4, 0x1f4

    :try_start_2
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 57
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    .end local v2    # "lockObj":Ljava/lang/Object;
    :cond_4
    :goto_2
    iget-object v3, p0, Lkb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    .line 64
    .local v0, "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    if-eqz v0, :cond_1

    sget-object v3, Lkb;->c:Lanet/channel/strategy/IPConnStrategy;

    if-eq v0, v3, :cond_1

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljy;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljy;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v0    # "ipConnStrategy":Lanet/channel/strategy/IPConnStrategy;
    :cond_5
    :try_start_3
    iget-object v3, p0, Lkb;->b:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "lockObj":Ljava/lang/Object;
    goto :goto_1

    .line 52
    .end local v2    # "lockObj":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 57
    .restart local v2    # "lockObj":Ljava/lang/Object;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v3

    goto :goto_2
.end method
