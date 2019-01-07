.class public Ldjf;
.super Ljava/lang/Object;
.source "ConversationAvatarFetcher.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Ldjf;


# instance fields
.field a:Ljava/lang/Runnable;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Ldjf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldjf;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldjf;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldjf;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldjf;->g:Ljava/util/List;

    .line 130
    new-instance v0, Ldjf$2;

    invoke-direct {v0, p0}, Ldjf$2;-><init>(Ldjf;)V

    iput-object v0, p0, Ldjf;->a:Ljava/lang/Runnable;

    .line 51
    return-void
.end method

.method public static a()Ldjf;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Ldjf;->c:Ldjf;

    if-nez v0, :cond_0

    .line 55
    const-class v1, Ldjf;

    monitor-enter v1

    .line 56
    :try_start_0
    new-instance v0, Ldjf;

    invoke-direct {v0}, Ldjf;-><init>()V

    sput-object v0, Ldjf;->c:Ldjf;

    .line 57
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    sget-object v0, Ldjf;->c:Ldjf;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ldjf;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ldjf;

    .prologue
    .line 38
    iget-object v0, p0, Ldjf;->g:Ljava/util/List;

    return-object v0
.end method

.method private a(J)V
    .locals 3
    .param p1, "delayTime"    # J

    .prologue
    .line 126
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ldjf;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ldjf;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Ldjf;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 12
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcog;->f(J)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "requestDate":Ljava/lang/String;
    iget-object v5, p0, Ldjf;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 89
    iput-object v4, p0, Ldjf;->f:Ljava/lang/String;

    .line 90
    iget-object v5, p0, Ldjf;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 92
    :cond_1
    iget-object v6, p0, Ldjf;->g:Ljava/util/List;

    monitor-enter v6

    .line 93
    :try_start_0
    iget-object v5, p0, Ldjf;->g:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 94
    iget-object v5, p0, Ldjf;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    .local v0, "atomicInteger":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_2

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v0    # "atomicInteger":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v5, 0x0

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 98
    .restart local v0    # "atomicInteger":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/16 v7, 0xa

    if-ge v5, v7, :cond_5

    .line 100
    iget-object v5, p0, Ldjf;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 101
    .local v1, "lastRequestTime":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 102
    .local v2, "currentTime":J
    if-nez v1, :cond_3

    .line 103
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 106
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v2, v8

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/16 v10, 0x2710

    cmp-long v5, v8, v10

    if-lez v5, :cond_5

    .line 107
    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 108
    iget-object v5, p0, Ldjf;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v5, p0, Ldjf;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v5, p0, Ldjf;->g:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v5, p0, Ldjf;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v7, 0x14

    if-le v5, v7, :cond_6

    .line 112
    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Ldjf;->a(J)V

    .line 121
    .end local v0    # "atomicInteger":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v1    # "lastRequestTime":Ljava/lang/Long;
    .end local v2    # "currentTime":J
    :cond_5
    :goto_1
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 114
    .restart local v0    # "atomicInteger":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v1    # "lastRequestTime":Ljava/lang/Long;
    .restart local v2    # "currentTime":J
    :cond_6
    const-wide/16 v8, 0x1f4

    :try_start_1
    invoke-direct {p0, v8, v9}, Ldjf;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method final declared-synchronized b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldjf;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 146
    .local v0, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Ldjf;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 147
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Ldjf$3;

    invoke-direct {v2, p0}, Ldjf$3;-><init>(Ldjf;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->listGroupIcons(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 145
    .end local v0    # "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
