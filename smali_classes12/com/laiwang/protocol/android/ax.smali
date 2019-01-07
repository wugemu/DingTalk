.class public Lcom/laiwang/protocol/android/ax;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/ax$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static final i:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/laiwang/protocol/connection/LWPConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/laiwang/protocol/android/bu;

.field private b:Lcom/laiwang/protocol/android/bu;

.field private c:Lcom/laiwang/protocol/android/bn;

.field private d:Lcom/laiwang/protocol/android/Extension;

.field private e:Lcom/laiwang/protocol/android/w;

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/laiwang/protocol/android/t;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/laiwang/protocol/android/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/ax;->f:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/ax;->i:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public constructor <init>(Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bn;Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/w;Lcom/laiwang/protocol/android/bu;)V
    .locals 1
    .param p1, "extension"    # Lcom/laiwang/protocol/android/Extension;
    .param p2, "scheduleEngine"    # Lcom/laiwang/protocol/android/bn;
    .param p3, "ioExecutor"    # Lcom/laiwang/protocol/android/bu;
    .param p4, "tran"    # Lcom/laiwang/protocol/android/w;
    .param p5, "readExecutor"    # Lcom/laiwang/protocol/android/bu;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ax;->g:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/ax;->h:Ljava/util/HashSet;

    .line 42
    iput-object p3, p0, Lcom/laiwang/protocol/android/ax;->a:Lcom/laiwang/protocol/android/bu;

    .line 43
    iput-object p5, p0, Lcom/laiwang/protocol/android/ax;->b:Lcom/laiwang/protocol/android/bu;

    .line 44
    iput-object p1, p0, Lcom/laiwang/protocol/android/ax;->d:Lcom/laiwang/protocol/android/Extension;

    .line 45
    iput-object p2, p0, Lcom/laiwang/protocol/android/ax;->c:Lcom/laiwang/protocol/android/bn;

    .line 46
    iput-object p4, p0, Lcom/laiwang/protocol/android/ax;->e:Lcom/laiwang/protocol/android/w;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/ax;)Lcom/laiwang/protocol/android/w;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ax;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/laiwang/protocol/android/ax;->e:Lcom/laiwang/protocol/android/w;

    return-object v0
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/laiwang/protocol/android/t;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/t;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/laiwang/protocol/android/t;>;>;"
    sget-object v4, Lcom/laiwang/protocol/android/ax;->f:Ljava/lang/Object;

    monitor-enter v4

    .line 212
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    :cond_0
    const/4 v2, 0x0

    monitor-exit v4

    .line 223
    :goto_0
    return-object v2

    .line 215
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/t;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 217
    .local v0, "colls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/laiwang/protocol/android/t;>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 218
    .local v1, "conns":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/t;>;"
    if-eqz v1, :cond_2

    .line 221
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 224
    .end local v0    # "colls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/laiwang/protocol/android/t;>;>;"
    .end local v1    # "conns":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/t;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/t;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 223
    .restart local v0    # "colls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/laiwang/protocol/android/t;>;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/t;>;"
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static a(Lcom/laiwang/protocol/connection/LWPConnection;)Z
    .locals 5
    .param p0, "connection"    # Lcom/laiwang/protocol/connection/LWPConnection;

    .prologue
    const/4 v0, 0x0

    .line 88
    if-nez p0, :cond_0

    .line 93
    :goto_0
    return v0

    .line 91
    :cond_0
    sget-object v1, Lcom/laiwang/protocol/android/ax;->i:Ljava/util/LinkedHashSet;

    monitor-enter v1

    .line 92
    :try_start_0
    const-string/jumbo v0, "[slaverPool] add pending type=%d, size %d "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/laiwang/protocol/connection/LWPConnection;->getType()Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    move-result-object v4

    iget v4, v4, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/laiwang/protocol/android/ax;->i:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/laiwang/protocol/android/ax;->i:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Lcom/laiwang/protocol/connection/LWPConnection;)Z
    .locals 4
    .param p0, "connection"    # Lcom/laiwang/protocol/connection/LWPConnection;

    .prologue
    const/4 v0, 0x0

    .line 101
    if-nez p0, :cond_0

    .line 105
    :goto_0
    return v0

    .line 103
    :cond_0
    const-string/jumbo v1, "[slaverPool] remove pending type=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/laiwang/protocol/connection/LWPConnection;->getType()Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    move-result-object v3

    iget v3, v3, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    sget-object v1, Lcom/laiwang/protocol/android/ax;->i:Ljava/util/LinkedHashSet;

    monitor-enter v1

    .line 105
    :try_start_0
    sget-object v0, Lcom/laiwang/protocol/android/ax;->i:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;)Lcom/laiwang/protocol/android/t;
    .locals 11
    .param p1, "type"    # Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    iget v9, p1, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->type:I

    .line 56
    .local v9, "tp":I
    sget-object v10, Lcom/laiwang/protocol/android/ax;->f:Ljava/lang/Object;

    monitor-enter v10

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/ax;->g:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    .local v8, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/laiwang/protocol/android/t;>;"
    if-nez v8, :cond_0

    .line 59
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v8    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/laiwang/protocol/android/t;>;"
    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 60
    .restart local v8    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/laiwang/protocol/android/t;>;"
    iget-object v1, p0, Lcom/laiwang/protocol/android/ax;->g:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget v2, p1, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->max:I

    if-ge v1, v2, :cond_2

    .line 63
    iget-object v1, p0, Lcom/laiwang/protocol/android/ax;->h:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    new-instance v0, Lcom/laiwang/protocol/android/t;

    iget-object v1, p0, Lcom/laiwang/protocol/android/ax;->d:Lcom/laiwang/protocol/android/Extension;

    iget-object v2, p0, Lcom/laiwang/protocol/android/ax;->c:Lcom/laiwang/protocol/android/bn;

    iget-object v3, p0, Lcom/laiwang/protocol/android/ax;->a:Lcom/laiwang/protocol/android/bu;

    iget-object v4, p0, Lcom/laiwang/protocol/android/ax;->e:Lcom/laiwang/protocol/android/w;

    iget-object v6, p0, Lcom/laiwang/protocol/android/ax;->b:Lcom/laiwang/protocol/android/bu;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/laiwang/protocol/android/t;-><init>(Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bn;Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/w;Lcom/laiwang/protocol/android/ax;Lcom/laiwang/protocol/android/bu;)V

    .line 66
    .local v0, "conn":Lcom/laiwang/protocol/android/t;
    new-instance v1, Lcom/laiwang/protocol/android/ax$a;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/ax$a;-><init>(Lcom/laiwang/protocol/android/ax;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/t;->a(Lcom/laiwang/protocol/android/NetworkListener;)V

    .line 67
    const-string/jumbo v1, "[slaverPool] acquire new conn type=%d >> %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/t;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :goto_0
    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/t;->a(Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;)V

    .line 75
    invoke-virtual {v8, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    monitor-exit v10

    .line 79
    .end local v0    # "conn":Lcom/laiwang/protocol/android/t;
    :goto_1
    return-object v0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/ax;->h:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 70
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/laiwang/protocol/android/t;>;"
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/t;

    .line 71
    .restart local v0    # "conn":Lcom/laiwang/protocol/android/t;
    iget-object v1, p0, Lcom/laiwang/protocol/android/ax;->h:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 72
    const-string/jumbo v1, "[slaverPool] acquire idle conn type=%d >> %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/t;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    .end local v0    # "conn":Lcom/laiwang/protocol/android/t;
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/laiwang/protocol/android/t;>;"
    .end local v8    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/laiwang/protocol/android/t;>;"
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 78
    .restart local v8    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/laiwang/protocol/android/t;>;"
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[slaverPool] acquire null, reach limit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    iget-object v2, p0, Lcom/laiwang/protocol/android/ax;->g:Ljava/util/HashMap;

    invoke-direct {p0, v2}, Lcom/laiwang/protocol/android/ax;->a(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    .line 149
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/t;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    :cond_0
    return-void

    .line 152
    :cond_1
    const-string/jumbo v2, "[slaverPool] connect"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 153
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/t;

    .line 154
    .local v0, "conn":Lcom/laiwang/protocol/android/t;
    invoke-virtual {v0}, Lcom/laiwang/protocol/android/t;->a()V

    goto :goto_0
.end method

.method public a(Lcom/laiwang/protocol/android/t;)V
    .locals 9
    .param p1, "connection"    # Lcom/laiwang/protocol/android/t;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    if-nez p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/t;->h()Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    move-result-object v3

    .line 116
    .local v3, "type":Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;
    if-nez v3, :cond_2

    .line 117
    sget-object v3, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->DEFAULT:Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    .line 118
    :cond_2
    sget-object v5, Lcom/laiwang/protocol/android/ax;->f:Ljava/lang/Object;

    monitor-enter v5

    .line 119
    :try_start_0
    const-string/jumbo v4, "[slaverPool] release conn type=%d >> %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v3, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/t;->g()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v4, p0, Lcom/laiwang/protocol/android/ax;->g:Ljava/util/HashMap;

    iget v6, v3, Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 121
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/t;>;"
    if-eqz v1, :cond_3

    .line 122
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 125
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/laiwang/protocol/android/t;->a(Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;)V

    .line 126
    iget-object v4, p0, Lcom/laiwang/protocol/android/ax;->h:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    const/4 v2, 0x0

    .line 129
    .local v2, "matched":Lcom/laiwang/protocol/connection/LWPConnection;
    sget-object v5, Lcom/laiwang/protocol/android/ax;->i:Ljava/util/LinkedHashSet;

    monitor-enter v5

    .line 130
    :try_start_1
    sget-object v4, Lcom/laiwang/protocol/android/ax;->i:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/connection/LWPConnection;

    .line 131
    .local v0, "conn":Lcom/laiwang/protocol/connection/LWPConnection;
    invoke-virtual {v0}, Lcom/laiwang/protocol/connection/LWPConnection;->getType()Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    move-result-object v6

    if-ne v6, v3, :cond_4

    .line 132
    const-string/jumbo v4, "[slaverPool] release conn & send >> %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/t;->g()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    move-object v2, v0

    .line 137
    .end local v0    # "conn":Lcom/laiwang/protocol/connection/LWPConnection;
    :cond_5
    if-eqz v2, :cond_6

    .line 138
    invoke-static {v2}, Lcom/laiwang/protocol/android/ax;->b(Lcom/laiwang/protocol/connection/LWPConnection;)Z

    .line 140
    :cond_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v2}, Lcom/laiwang/protocol/connection/LWPConnection;->connect()V

    .line 143
    invoke-virtual {v2}, Lcom/laiwang/protocol/connection/LWPConnection;->a()V

    goto :goto_0

    .line 127
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/t;>;"
    .end local v2    # "matched":Lcom/laiwang/protocol/connection/LWPConnection;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 140
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/t;>;"
    .restart local v2    # "matched":Lcom/laiwang/protocol/connection/LWPConnection;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public a(Lcom/laiwang/protocol/network/Network$State;)V
    .locals 4
    .param p1, "state"    # Lcom/laiwang/protocol/network/Network$State;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    iget-object v2, p0, Lcom/laiwang/protocol/android/ax;->g:Ljava/util/HashMap;

    invoke-direct {p0, v2}, Lcom/laiwang/protocol/android/ax;->a(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    .line 160
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/t;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    :cond_0
    return-void

    .line 163
    :cond_1
    const-string/jumbo v2, "[slaverPool] network changed"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 164
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/t;

    .line 165
    .local v0, "conn":Lcom/laiwang/protocol/android/t;
    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/t;->a(Lcom/laiwang/protocol/network/Network$State;)V

    goto :goto_0
.end method

.method public a(Ljava/io/IOException;)V
    .locals 5
    .param p1, "cause"    # Ljava/io/IOException;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    const-string/jumbo v3, "[slaverPool] close"

    invoke-static {v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 194
    sget-object v4, Lcom/laiwang/protocol/android/ax;->f:Ljava/lang/Object;

    monitor-enter v4

    .line 195
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/laiwang/protocol/android/ax;->h:Ljava/util/HashSet;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 196
    .local v1, "copySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/laiwang/protocol/android/t;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/t;

    .line 198
    .local v0, "conn":Lcom/laiwang/protocol/android/t;
    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/t;->b(Ljava/io/IOException;)V

    goto :goto_0

    .line 196
    .end local v0    # "conn":Lcom/laiwang/protocol/android/t;
    .end local v1    # "copySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/laiwang/protocol/android/t;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 200
    .restart local v1    # "copySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/laiwang/protocol/android/t;>;"
    :cond_0
    iget-object v3, p0, Lcom/laiwang/protocol/android/ax;->g:Ljava/util/HashMap;

    invoke-direct {p0, v3}, Lcom/laiwang/protocol/android/ax;->a(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    .line 201
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/t;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    :cond_1
    return-void

    .line 204
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/t;

    .line 205
    .restart local v0    # "conn":Lcom/laiwang/protocol/android/t;
    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/t;->b(Ljava/io/IOException;)V

    .line 206
    invoke-virtual {p0, v0}, Lcom/laiwang/protocol/android/ax;->a(Lcom/laiwang/protocol/android/t;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    iget-object v2, p0, Lcom/laiwang/protocol/android/ax;->g:Ljava/util/HashMap;

    invoke-direct {p0, v2}, Lcom/laiwang/protocol/android/ax;->a(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/t;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    :cond_0
    return-void

    .line 174
    :cond_1
    const-string/jumbo v2, "[slaverPool] auth"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 175
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/t;

    .line 176
    .local v0, "conn":Lcom/laiwang/protocol/android/t;
    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/t;->a(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V

    goto :goto_0
.end method

.method public b(Ljava/io/IOException;)V
    .locals 2
    .param p1, "cause"    # Ljava/io/IOException;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    const-string/jumbo v0, "[slaverPool] reset"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/ax;->a(Ljava/io/IOException;)V

    .line 230
    sget-object v1, Lcom/laiwang/protocol/android/ax;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/ax;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 232
    iget-object v0, p0, Lcom/laiwang/protocol/android/ax;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 233
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    sget-object v1, Lcom/laiwang/protocol/android/ax;->i:Ljava/util/LinkedHashSet;

    monitor-enter v1

    .line 235
    :try_start_1
    sget-object v0, Lcom/laiwang/protocol/android/ax;->i:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 236
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 233
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 236
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    .local p2, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    iget-object v2, p0, Lcom/laiwang/protocol/android/ax;->g:Ljava/util/HashMap;

    invoke-direct {p0, v2}, Lcom/laiwang/protocol/android/ax;->a(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    .line 182
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/t;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    :cond_0
    return-void

    .line 185
    :cond_1
    const-string/jumbo v2, "[slaverPool] deviceAuth"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 186
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/t;

    .line 187
    .local v0, "conn":Lcom/laiwang/protocol/android/t;
    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/t;->b(Ljava/lang/String;Lcom/laiwang/protocol/android/Reply;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 240
    sget-object v4, Lcom/laiwang/protocol/android/ax;->f:Ljava/lang/Object;

    monitor-enter v4

    .line 241
    :try_start_0
    iget-object v5, p0, Lcom/laiwang/protocol/android/ax;->g:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    .line 242
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    .line 243
    monitor-exit v4

    .line 252
    :goto_0
    return v3

    .line 245
    :cond_0
    iget-object v5, p0, Lcom/laiwang/protocol/android/ax;->g:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 246
    .local v1, "conns":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/t;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/t;

    .line 247
    .local v0, "conn":Lcom/laiwang/protocol/android/t;
    invoke-virtual {v0}, Lcom/laiwang/protocol/android/t;->c()Z

    move-result v7

    if-nez v7, :cond_2

    .line 248
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 253
    .end local v0    # "conn":Lcom/laiwang/protocol/android/t;
    .end local v1    # "conns":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/t;>;"
    .end local v2    # "ret":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 252
    .restart local v2    # "ret":Z
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
