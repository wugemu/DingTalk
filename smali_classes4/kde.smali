.class public abstract Lkde;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkde$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static final s:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected b:I

.field protected c:J

.field protected volatile d:J

.field protected volatile e:J

.field protected f:I

.field public g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lkdh;",
            ">;"
        }
    .end annotation
.end field

.field protected final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lkdk;",
            "Lkde$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lkdk;",
            "Lkde$a;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Lkdi;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field n:I

.field protected final o:I

.field protected p:Lkdf;

.field protected q:Lcom/xiaomi/push/service/XMPushService;

.field protected r:J

.field private t:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lkde;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    sput-boolean v1, Lkde;->a:Z

    :try_start_0
    const-string/jumbo v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lkde;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lkdm;->a()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lkdf;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lkde;->b:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lkde;->c:J

    iput-wide v4, p0, Lkde;->d:J

    iput-wide v4, p0, Lkde;->e:J

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lkde;->g:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lkde;->h:Ljava/util/Collection;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lkde;->i:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lkde;->j:Ljava/util/Map;

    iput-object v0, p0, Lkde;->k:Lkdi;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lkde;->l:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lkde;->m:Ljava/lang/String;

    iput v6, p0, Lkde;->n:I

    sget-object v1, Lkde;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iput v1, p0, Lkde;->o:I

    iput-wide v4, p0, Lkde;->t:J

    iput-wide v4, p0, Lkde;->r:J

    iput-object p2, p0, Lkde;->p:Lkdf;

    iput-object p1, p0, Lkde;->q:Lcom/xiaomi/push/service/XMPushService;

    .line 1000
    iget-object v1, p0, Lkde;->p:Lkdf;

    .line 2000
    iget-boolean v1, v1, Lkdf;->g:Z

    .line 1000
    if-eqz v1, :cond_1

    iget-object v1, p0, Lkde;->k:Lkdi;

    if-nez v1, :cond_1

    :try_start_0
    const-string/jumbo v1, "smack.debuggerClass"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Ljvu;

    invoke-direct {v0, p0}, Ljvu;-><init>(Lkde;)V

    iput-object v0, p0, Lkde;->k:Lkdi;

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    :try_start_2
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lkde;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/io/Writer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/io/Reader;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdi;

    iput-object v0, p0, Lkde;->k:Lkdi;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Can\'t initialize the configured debugger!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "connected"

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    const-string/jumbo v0, "connecting"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "disconnected"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method


# virtual methods
.method public final a(IILjava/lang/Exception;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v8, 0xa

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 0
    iget v0, p0, Lkde;->n:I

    if-eq p1, v0, :cond_0

    const-string/jumbo v0, "update the connection status. %1$s -> %2$s : %3$s "

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lkde;->n:I

    invoke-static {v2}, Lkde;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1}, Lkde;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p2}, Lkav;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lkde;->q:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Ljvn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5000
    iget-object v1, p0, Lkde;->g:Ljava/util/LinkedList;

    monitor-enter v1

    if-ne p1, v6, :cond_4

    :try_start_0
    iget-object v0, p0, Lkde;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    :cond_2
    if-ne p1, v6, :cond_5

    iget-object v0, p0, Lkde;->q:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v8}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    iget v0, p0, Lkde;->n:I

    if-eqz v0, :cond_3

    const-string/jumbo v0, "try set connected while not connecting."

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    :cond_3
    iput p1, p0, Lkde;->n:I

    iget-object v0, p0, Lkde;->h:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdh;

    invoke-interface {v0, p0}, Lkdh;->a(Lkde;)V

    goto :goto_1

    .line 5000
    :cond_4
    :try_start_1
    iget-object v0, p0, Lkde;->g:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lkde;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lkde;->g:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 0
    :cond_5
    if-nez p1, :cond_7

    iget v0, p0, Lkde;->n:I

    if-eq v0, v7, :cond_6

    const-string/jumbo v0, "try set connecting while not disconnected."

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    :cond_6
    iput p1, p0, Lkde;->n:I

    iget-object v0, p0, Lkde;->h:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdh;

    invoke-interface {v0, p0}, Lkdh;->b(Lkde;)V

    goto :goto_2

    :cond_7
    if-ne p1, v7, :cond_b

    iget-object v0, p0, Lkde;->q:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v8}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    iget v0, p0, Lkde;->n:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lkde;->h:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdh;

    if-nez p3, :cond_8

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v3, "disconnect while connecting"

    invoke-direct {v1, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-interface {v0, p0, v1}, Lkdh;->a(Lkde;Ljava/lang/Exception;)V

    goto :goto_3

    :cond_8
    move-object v1, p3

    goto :goto_4

    :cond_9
    iget v0, p0, Lkde;->n:I

    if-ne v0, v6, :cond_a

    iget-object v0, p0, Lkde;->h:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdh;

    invoke-interface {v0, p0, p2, p3}, Lkdh;->a(Lkde;ILjava/lang/Exception;)V

    goto :goto_5

    :cond_a
    iput p1, p0, Lkde;->n:I

    :cond_b
    return-void
.end method

.method public abstract a(Lcom/xiaomi/push/service/aq$b;)V
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lkde;->n:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setChallenge hash = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljvs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lkde;->l:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lkde;->a(IILjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "ignore setChallenge because connection was disconnected"

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final a(Lkdk;Lkdl;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lkde$a;

    invoke-direct {v0, p1, p2}, Lkde$a;-><init>(Lkdk;Lkdl;)V

    iget-object v1, p0, Lkde;->i:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract a(Lkdu;)V
.end method

.method public abstract a([Lkcy;)V
.end method

.method public final declared-synchronized a(J)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lkde;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract b(ILjava/lang/Exception;)V
.end method

.method public abstract b(Lkcy;)V
.end method

.method public final b(Lkdk;Lkdl;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lkde$a;

    invoke-direct {v0, p1, p2}, Lkde$a;-><init>(Lkdk;Lkdl;)V

    iget-object v1, p0, Lkde;->j:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract b(Z)V
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Lkdf;
    .locals 1

    iget-object v0, p0, Lkde;->p:Lkdf;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lkde;->p:Lkdf;

    .line 3000
    iget-object v0, v0, Lkdf;->e:Ljava/lang/String;

    .line 0
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lkde;->p:Lkdf;

    .line 4000
    iget-object v0, v0, Lkdf;->h:Ljava/lang/String;

    .line 0
    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lkde;->f:I

    return v0
.end method

.method public final h()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-wide v0, p0, Lkde;->e:J

    return-wide v0
.end method

.method public final i()Z
    .locals 1

    iget v0, p0, Lkde;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x1

    iget v1, p0, Lkde;->n:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lkde;->b:I

    return v0
.end method

.method public final declared-synchronized l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lkde;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lkde;->t:J

    sub-long/2addr v0, v2

    invoke-static {}, Lkdm;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized n()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lkde;->r:J

    sub-long/2addr v0, v2

    invoke-static {}, Lkdm;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
