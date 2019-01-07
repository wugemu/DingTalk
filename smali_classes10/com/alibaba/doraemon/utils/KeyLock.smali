.class public Lcom/alibaba/doraemon/utils/KeyLock;
.super Ljava/lang/Object;
.source "KeyLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final local:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/alibaba/doraemon/utils/KeyLock;, "Lcom/alibaba/doraemon/utils/KeyLock<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/utils/KeyLock;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 33
    new-instance v0, Lcom/alibaba/doraemon/utils/KeyLock$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/utils/KeyLock$1;-><init>(Lcom/alibaba/doraemon/utils/KeyLock;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/utils/KeyLock;->local:Ljava/lang/ThreadLocal;

    .line 107
    return-void
.end method


# virtual methods
.method public lock(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    .local p0, "this":Lcom/alibaba/doraemon/utils/KeyLock;, "Lcom/alibaba/doraemon/utils/KeyLock<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v3, p0, Lcom/alibaba/doraemon/utils/KeyLock;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;

    .line 51
    .local v1, "info":Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;
    if-nez v1, :cond_2

    .line 52
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 53
    .local v0, "current":Ljava/util/concurrent/Semaphore;
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 54
    iget-object v3, p0, Lcom/alibaba/doraemon/utils/KeyLock;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Semaphore;

    .line 55
    .local v2, "previous":Ljava/util/concurrent/Semaphore;
    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 59
    :cond_1
    iget-object v3, p0, Lcom/alibaba/doraemon/utils/KeyLock;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v4, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;-><init>(Ljava/util/concurrent/Semaphore;Lcom/alibaba/doraemon/utils/KeyLock$1;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    .end local v0    # "current":Ljava/util/concurrent/Semaphore;
    .end local v2    # "previous":Ljava/util/concurrent/Semaphore;
    :cond_2
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;->access$108(Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;)I

    goto :goto_0
.end method

.method public lock([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    .local p0, "this":Lcom/alibaba/doraemon/utils/KeyLock;, "Lcom/alibaba/doraemon/utils/KeyLock<TK;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    if-nez p1, :cond_1

    .line 92
    :cond_0
    return-void

    .line 89
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 90
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/utils/KeyLock;->lock(Ljava/lang/Object;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public unlock(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    .local p0, "this":Lcom/alibaba/doraemon/utils/KeyLock;, "Lcom/alibaba/doraemon/utils/KeyLock<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/utils/KeyLock;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;

    .line 73
    .local v0, "info":Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;->access$106(Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;)I

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;->access$200(Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 75
    iget-object v1, p0, Lcom/alibaba/doraemon/utils/KeyLock;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;->access$200(Lcom/alibaba/doraemon/utils/KeyLock$LockInfo;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/alibaba/doraemon/utils/KeyLock;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unlock([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    .local p0, "this":Lcom/alibaba/doraemon/utils/KeyLock;, "Lcom/alibaba/doraemon/utils/KeyLock<TK;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    if-nez p1, :cond_1

    .line 105
    :cond_0
    return-void

    .line 102
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 103
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/utils/KeyLock;->unlock(Ljava/lang/Object;)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
