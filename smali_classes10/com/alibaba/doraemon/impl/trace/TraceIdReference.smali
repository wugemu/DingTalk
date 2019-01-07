.class public Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
.super Ljava/lang/Object;
.source "TraceIdReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TraceIdReference"

.field private static sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRefCount:I

.field private mTag:Ljava/lang/String;

.field private mThreadRef:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTraceId:Ljava/lang/String;

.field private mTransferRefCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->sListeners:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "traceid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mThreadRef:Ljava/util/Map;

    .line 21
    iput v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mTransferRefCount:I

    .line 22
    iput v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mRefCount:I

    .line 26
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mTraceId:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static declared-synchronized addListener(Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;

    .prologue
    .line 132
    const-class v1, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->sListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->sListeners:Ljava/util/List;

    .line 136
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit v1

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized decRef()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mRefCount:I

    if-lez v5, :cond_0

    .line 59
    iget v5, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mRefCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mRefCount:I

    .line 63
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 64
    .local v2, "threadId":J
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mThreadRef:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 65
    .local v1, "threadRef":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 66
    .local v4, "value":I
    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 68
    if-lez v4, :cond_1

    .line 69
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mThreadRef:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_1
    sget-object v5, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;

    .line 77
    .local v0, "listener":Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;->onTraceIdRefChanged(Lcom/alibaba/doraemon/impl/trace/TraceIdReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 58
    .end local v0    # "listener":Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;
    .end local v1    # "threadRef":Ljava/lang/Integer;
    .end local v2    # "threadId":J
    .end local v4    # "value":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 61
    :cond_0
    :try_start_1
    const-string/jumbo v5, "TraceIdReference"

    const-string/jumbo v6, "ref is 0,can\'t dec"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    .restart local v1    # "threadRef":Ljava/lang/Integer;
    .restart local v2    # "threadId":J
    .restart local v4    # "value":I
    :cond_1
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mThreadRef:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 74
    :cond_2
    const-string/jumbo v5, "TraceIdReference"

    const-string/jumbo v6, "thread ref is 0,can\'t dec"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 79
    :cond_3
    monitor-exit p0

    return v4
.end method

.method public declared-synchronized decTransferRef()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mTransferRefCount:I

    if-lez v1, :cond_0

    .line 91
    iget v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mTransferRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mTransferRefCount:I

    .line 95
    :goto_0
    sget-object v1, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->sListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;

    .line 96
    .local v0, "listener":Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;->onTraceIdRefChanged(Lcom/alibaba/doraemon/impl/trace/TraceIdReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 90
    .end local v0    # "listener":Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 93
    :cond_0
    :try_start_1
    const-string/jumbo v1, "TraceIdReference"

    const-string/jumbo v2, "TransferRefCount is 0,can\'t dec"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getRefCount()I
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mTraceId:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getTransferRefCount()I
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mTransferRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized incRef()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mRefCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mRefCount:I

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 36
    .local v2, "threadId":J
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mThreadRef:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 38
    .local v1, "threadRef":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 39
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 40
    .local v4, "value":I
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mThreadRef:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_0
    sget-object v5, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->sListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;

    .line 47
    .local v0, "listener":Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;->onTraceIdRefChanged(Lcom/alibaba/doraemon/impl/trace/TraceIdReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 34
    .end local v0    # "listener":Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;
    .end local v1    # "threadRef":Ljava/lang/Integer;
    .end local v2    # "threadId":J
    .end local v4    # "value":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 42
    .restart local v1    # "threadRef":Ljava/lang/Integer;
    .restart local v2    # "threadId":J
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 43
    .restart local v4    # "value":I
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mThreadRef:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :cond_1
    monitor-exit p0

    return v4
.end method

.method public declared-synchronized incTransferRef()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mTransferRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mTransferRefCount:I

    .line 84
    sget-object v1, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->sListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;

    .line 85
    .local v0, "listener":Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;->onTraceIdRefChanged(Lcom/alibaba/doraemon/impl/trace/TraceIdReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    .end local v0    # "listener":Lcom/alibaba/doraemon/impl/trace/TraceIdReference$TraceIdRefListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 87
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->mTag:Ljava/lang/String;

    .line 124
    return-void
.end method
