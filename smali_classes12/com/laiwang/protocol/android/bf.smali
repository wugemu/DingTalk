.class public Lcom/laiwang/protocol/android/bf;
.super Ljava/lang/Object;
.source "Pending.java"


# static fields
.field public static final a:Lcom/laiwang/protocol/android/bd;

.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Ljava/util/concurrent/locks/ReentrantLock;

.field private d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/laiwang/protocol/android/bd;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/bd;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/bf;->c:Ljava/util/Set;

    .line 25
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/laiwang/protocol/core/Request;->newRequest(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/bf;->a:Lcom/laiwang/protocol/android/bd;

    .line 30
    sget-object v0, Lcom/laiwang/protocol/android/bf;->c:Ljava/util/Set;

    const-string/jumbo v1, "/!"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/laiwang/protocol/android/bf;->c:Ljava/util/Set;

    const-string/jumbo v1, "/reg"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/laiwang/protocol/android/bf;->c:Ljava/util/Set;

    const-string/jumbo v1, "/auth"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/laiwang/protocol/android/bf;->c:Ljava/util/Set;

    const-string/jumbo v1, "/subscribe"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/laiwang/protocol/android/bf;->c:Ljava/util/Set;

    const-string/jumbo v1, "/r/LwpLog"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/bf;->f:Z

    .line 27
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/bf;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/bf;->d:Ljava/util/concurrent/BlockingQueue;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/bf;->e:Ljava/util/List;

    .line 40
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "uris":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 44
    sget-object v0, Lcom/laiwang/protocol/android/bf;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/laiwang/protocol/android/bf;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 50
    iget-object v0, p0, Lcom/laiwang/protocol/android/bf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/bd;)V
    .locals 5
    .param p1, "message"    # Lcom/laiwang/protocol/android/bd;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    instance-of v0, p1, Lcom/laiwang/protocol/core/Response;

    if-nez v0, :cond_0

    sget-object v0, Lcom/laiwang/protocol/android/bf;->a:Lcom/laiwang/protocol/android/bd;

    if-ne p1, v0, :cond_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bf;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/bf;->f:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/bf;->c(Lcom/laiwang/protocol/android/bd;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 59
    :cond_2
    const-string/jumbo v0, "[Pending] put in polling %s %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/laiwang/protocol/android/bd;->startline:Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/laiwang/protocol/android/bf;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bf;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 64
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/bf;->f:Z

    if-eqz v0, :cond_4

    .line 65
    const-string/jumbo v0, "[Pending] concurrent auth put %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/laiwang/protocol/android/bd;->startline:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/laiwang/protocol/android/bf;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/bf;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 68
    :cond_4
    :try_start_1
    const-string/jumbo v0, "[Pending] put in noAuthWaiting %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/laiwang/protocol/android/bd;->startline:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/laiwang/protocol/android/bf;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 72
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/laiwang/protocol/android/bf;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public b()Lcom/laiwang/protocol/android/bd;
    .locals 1

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bf;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/bd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/laiwang/protocol/android/bd;)Z
    .locals 3
    .param p1, "message"    # Lcom/laiwang/protocol/android/bd;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "res":Z
    iget-object v1, p0, Lcom/laiwang/protocol/android/bf;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 92
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/bf;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 93
    iget-object v1, p0, Lcom/laiwang/protocol/android/bf;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const/4 v0, 0x1

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/bf;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 99
    return v0

    .line 97
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/bf;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/laiwang/protocol/android/bf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/bf;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/laiwang/protocol/android/bd;)Z
    .locals 4
    .param p1, "message"    # Lcom/laiwang/protocol/android/bd;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 126
    instance-of v3, p1, Lcom/laiwang/protocol/core/Response;

    if-nez v3, :cond_0

    sget-object v3, Lcom/laiwang/protocol/android/bf;->a:Lcom/laiwang/protocol/android/bd;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/laiwang/protocol/attribute/Attributes;->NO_AUTH:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v3}, Lcom/laiwang/protocol/android/bd;->hasAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 129
    check-cast v0, Lcom/laiwang/protocol/core/Request;

    .line 130
    .local v0, "request":Lcom/laiwang/protocol/core/Request;
    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Request;->url()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "url":Ljava/lang/String;
    sget-object v3, Lcom/laiwang/protocol/android/bf;->c:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/bf;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 109
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/laiwang/protocol/android/bf;->f:Z

    .line 110
    iget-object v0, p0, Lcom/laiwang/protocol/android/bf;->e:Ljava/util/List;

    .line 111
    .local v0, "localNoAuthWaiting":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bd;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/laiwang/protocol/android/bf;->e:Ljava/util/List;

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/bd;

    .line 113
    .local v1, "message":Lcom/laiwang/protocol/android/bd;
    const-string/jumbo v3, "[Pending] authed put polling %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/laiwang/protocol/android/bd;->startline:Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0, v1}, Lcom/laiwang/protocol/android/bf;->a(Lcom/laiwang/protocol/android/bd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 117
    .end local v0    # "localNoAuthWaiting":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bd;>;"
    .end local v1    # "message":Lcom/laiwang/protocol/android/bd;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/laiwang/protocol/android/bf;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v0    # "localNoAuthWaiting":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bd;>;"
    :cond_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/bf;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 118
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/bf;->f:Z

    .line 123
    return-void
.end method
