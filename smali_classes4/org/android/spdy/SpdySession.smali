.class public final Lorg/android/spdy/SpdySession;
.super Ljava/lang/Object;
.source "SpdySession.java"


# static fields
.field private static volatile count:I


# instance fields
.field private agent:Lorg/android/spdy/SpdyAgent;

.field private authority:Ljava/lang/String;

.field private closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private domain:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field intenalcb:Lorg/android/spdy/Intenalcb;

.field private lock:Ljava/lang/Object;

.field private mode:I

.field private pubkey_seqnum:I

.field volatile refcount:I

.field sessionCallBack:Lorg/android/spdy/SessionCb;

.field private sessionClearedFromSessionMgr:Z

.field private volatile sessionNativePtr:J

.field private spdyStream:Lorg/android/spdy/NetSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/android/spdy/NetSparseArray",
            "<",
            "Lorg/android/spdy/SpdyStreamContext;",
            ">;"
        }
    .end annotation
.end field

.field private streamcount:I

.field private thread:Landroid/os/HandlerThread;

.field private userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lorg/android/spdy/SpdySession;->count:I

    return-void
.end method

.method constructor <init>(JLorg/android/spdy/SpdyAgent;Ljava/lang/String;Ljava/lang/String;Lorg/android/spdy/SessionCb;IILjava/lang/Object;)V
    .locals 5
    .param p1, "ptr"    # J
    .param p3, "agent"    # Lorg/android/spdy/SpdyAgent;
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "sessioncb"    # Lorg/android/spdy/SessionCb;
    .param p7, "mode"    # I
    .param p8, "pubkey_seqnum"    # I
    .param p9, "userData"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    iput-boolean v2, p0, Lorg/android/spdy/SpdySession;->sessionClearedFromSessionMgr:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    .line 33
    iput v3, p0, Lorg/android/spdy/SpdySession;->streamcount:I

    .line 34
    iput-object v1, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    .line 35
    iput-object v1, p0, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    .line 36
    iput v2, p0, Lorg/android/spdy/SpdySession;->pubkey_seqnum:I

    .line 37
    iput-object v1, p0, Lorg/android/spdy/SpdySession;->userData:Ljava/lang/Object;

    .line 38
    iput v3, p0, Lorg/android/spdy/SpdySession;->refcount:I

    .line 48
    iput-wide p1, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    .line 49
    iput-object p3, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    .line 50
    iput-object p4, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    .line 51
    new-instance v0, Lorg/android/spdy/SpdySessionCallBack;

    invoke-direct {v0}, Lorg/android/spdy/SpdySessionCallBack;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    .line 52
    iput-object p5, p0, Lorg/android/spdy/SpdySession;->domain:Ljava/lang/String;

    .line 54
    new-instance v0, Lorg/android/spdy/NetSparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/android/spdy/NetSparseArray;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    .line 55
    iput-object p6, p0, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    .line 56
    iput p8, p0, Lorg/android/spdy/SpdySession;->pubkey_seqnum:I

    .line 57
    iput p7, p0, Lorg/android/spdy/SpdySession;->mode:I

    .line 58
    iput-object p9, p0, Lorg/android/spdy/SpdySession;->userData:Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    return-void
.end method

.method private closeprivate()I
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 317
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-boolean v0, p0, Lorg/android/spdy/SpdySession;->sessionClearedFromSessionMgr:Z

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    iget-object v2, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    iget-object v3, p0, Lorg/android/spdy/SpdySession;->domain:Ljava/lang/String;

    iget v4, p0, Lorg/android/spdy/SpdySession;->mode:I

    invoke-virtual {v0, v2, v3, v4}, Lorg/android/spdy/SpdyAgent;->clearSpdySession(Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/spdy/SpdySession;->sessionClearedFromSessionMgr:Z

    .line 322
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    .line 325
    iget-object v12, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v12

    .line 327
    :try_start_1
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->getAllStreamCb()[Lorg/android/spdy/SpdyStreamContext;

    move-result-object v11

    .line 328
    .local v11, "stmCbs":[Lorg/android/spdy/SpdyStreamContext;
    if-eqz v11, :cond_1

    .line 329
    move-object v7, v11

    .local v7, "arr$":[Lorg/android/spdy/SpdyStreamContext;
    array-length v9, v11

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v10, v7, v8

    .line 331
    .local v10, "stm":Lorg/android/spdy/SpdyStreamContext;
    const-string/jumbo v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[SpdySessionCallBack.spdyStreamCloseCallback] unfinished stm="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v10, Lorg/android/spdy/SpdyStreamContext;->streamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, v10, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget v1, v10, Lorg/android/spdy/SpdyStreamContext;->streamId:I

    int-to-long v2, v1

    const/16 v4, -0x7d1

    iget-object v5, v10, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Spdycb;->spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 322
    .end local v7    # "arr$":[Lorg/android/spdy/SpdyStreamContext;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "stm":Lorg/android/spdy/SpdyStreamContext;
    .end local v11    # "stmCbs":[Lorg/android/spdy/SpdyStreamContext;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 335
    .restart local v11    # "stmCbs":[Lorg/android/spdy/SpdyStreamContext;
    :cond_1
    :try_start_3
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v0}, Lorg/android/spdy/NetSparseArray;->clear()V

    .line 336
    monitor-exit v12

    .line 338
    const/4 v0, 0x0

    return v0

    .line 336
    .end local v11    # "stmCbs":[Lorg/android/spdy/SpdyStreamContext;
    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    return-object v0
.end method

.method private native sendCustomControlFrameN(JIIII[B)I
.end method

.method private native sendHeadersN(JI[Ljava/lang/String;Z)I
.end method

.method private native setOptionN(JII)I
.end method

.method private native streamCloseN(JII)I
.end method

.method private native streamSendDataN(JI[BIIZ)I
.end method

.method private native submitBioPingN(J)I
.end method

.method private native submitPingN(J)I
.end method

.method private native submitRequestN(JLjava/lang/String;B[Ljava/lang/String;[BZII)I
.end method


# virtual methods
.method public final cleanUp()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 280
    const-string/jumbo v1, "tnet-jni"

    const-string/jumbo v2, "[SpdySession.cleanUp] - "

    invoke-static {v1, v2}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "code":I
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v1, p0}, Lorg/android/spdy/SpdyAgent;->removeSession(Lorg/android/spdy/SpdySession;)V

    .line 284
    invoke-direct {p0}, Lorg/android/spdy/SpdySession;->closeprivate()I

    move-result v0

    .line 286
    :cond_0
    return v0
.end method

.method public final clearAllStreamCb()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 120
    const-string/jumbo v0, "tnet-jni"

    const-string/jumbo v1, "[SpdySession.clearAllStreamCb] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v0}, Lorg/android/spdy/NetSparseArray;->clear()V

    .line 123
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final closeInternal()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "code":I
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    invoke-direct {p0}, Lorg/android/spdy/SpdySession;->closeprivate()I

    move-result v0

    .line 294
    :cond_0
    return v0
.end method

.method public final closeSession()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 298
    const-string/jumbo v2, "tnet-jni"

    const-string/jumbo v3, "[SpdySession.closeSession] - "

    invoke-static {v2, v3}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "code":I
    iget-object v3, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 301
    :try_start_0
    iget-boolean v2, p0, Lorg/android/spdy/SpdySession;->sessionClearedFromSessionMgr:Z

    if-nez v2, :cond_0

    .line 302
    const-string/jumbo v2, "tnet-jni"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SpdySession.closeSession] - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    iget-object v4, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    iget-object v5, p0, Lorg/android/spdy/SpdySession;->domain:Ljava/lang/String;

    iget v6, p0, Lorg/android/spdy/SpdySession;->mode:I

    invoke-virtual {v2, v4, v5, v6}, Lorg/android/spdy/SpdyAgent;->clearSpdySession(Ljava/lang/String;Ljava/lang/String;I)V

    .line 304
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/android/spdy/SpdySession;->sessionClearedFromSessionMgr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :try_start_1
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    iget-wide v4, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    invoke-virtual {v2, v4, v5}, Lorg/android/spdy/SpdyAgent;->closeSession(J)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 311
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 312
    return v0

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "ep":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v1    # "ep":Ljava/lang/UnsatisfiedLinkError;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public final getAllStreamCb()[Lorg/android/spdy/SpdyStreamContext;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "data":[Lorg/android/spdy/SpdyStreamContext;
    iget-object v3, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 110
    :try_start_0
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v2}, Lorg/android/spdy/NetSparseArray;->size()I

    move-result v1

    .line 111
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 112
    new-array v0, v1, [Lorg/android/spdy/SpdyStreamContext;

    .line 113
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v2, v0}, Lorg/android/spdy/NetSparseArray;->toArray([Ljava/lang/Object;)V

    .line 115
    :cond_0
    monitor-exit v3

    .line 116
    return-object v0

    .line 115
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->domain:Ljava/lang/String;

    return-object v0
.end method

.method final getMsgHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getRefCount()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/android/spdy/SpdySession;->refcount:I

    return v0
.end method

.method final getSessionNativePtr()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    return-wide v0
.end method

.method final getSpdyAgent()Lorg/android/spdy/SpdyAgent;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    return-object v0
.end method

.method final getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;
    .locals 4
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "stm":Lorg/android/spdy/SpdyStreamContext;
    if-lez p1, :cond_0

    .line 90
    iget-object v3, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 91
    :try_start_0
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v2, p1}, Lorg/android/spdy/NetSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/android/spdy/SpdyStreamContext;

    move-object v1, v0

    .line 92
    monitor-exit v3

    .line 94
    :cond_0
    return-object v1

    .line 92
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method final increRefCount()V
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/android/spdy/SpdySession;->refcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/android/spdy/SpdySession;->refcount:I

    .line 67
    return-void
.end method

.method final putSpdyStreamCtx(Lorg/android/spdy/SpdyStreamContext;)I
    .locals 3
    .param p1, "streamctx"    # Lorg/android/spdy/SpdyStreamContext;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 80
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 81
    :try_start_0
    iget v0, p0, Lorg/android/spdy/SpdySession;->streamcount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/android/spdy/SpdySession;->streamcount:I

    .line 82
    .local v0, "old":I
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v1, v0, p1}, Lorg/android/spdy/NetSparseArray;->put(ILjava/lang/Object;)V

    .line 83
    monitor-exit v2

    .line 84
    return v0

    .line 83
    .end local v0    # "old":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final removeSpdyStream(I)V
    .locals 2
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 98
    if-lez p1, :cond_0

    .line 99
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v0, p1}, Lorg/android/spdy/NetSparseArray;->remove(I)V

    .line 101
    monitor-exit v1

    .line 103
    :cond_0
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final sendCustomControlFrame(IIII[B)I
    .locals 9
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "flags"    # I
    .param p4, "length"    # I
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 198
    if-eqz p5, :cond_0

    array-length v1, p5

    if-gtz v1, :cond_0

    .line 199
    const/4 p5, 0x0

    .line 203
    :cond_0
    const-string/jumbo v1, "tnet-jni"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[sendCustomControlFrame] - type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-wide v2, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lorg/android/spdy/SpdySession;->sendCustomControlFrameN(JIIII[B)I

    move-result v0

    .line 207
    .local v0, "code":I
    if-eqz v0, :cond_1

    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendCustomControlFrame error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 208
    :cond_1
    return v0
.end method

.method final sessionIsOpen()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 271
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const-string/jumbo v1, "session is already closed: -1104"

    const/16 v2, -0x450

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 274
    :cond_0
    return-void
.end method

.method public final setOption(II)I
    .locals 4
    .param p1, "optname"    # I
    .param p2, "optval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 153
    iget-wide v2, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/android/spdy/SpdySession;->setOptionN(JII)I

    move-result v0

    .line 154
    .local v0, "code":I
    if-eqz v0, :cond_0

    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setOption error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 155
    :cond_0
    return v0
.end method

.method final setSessionNativePtr(J)V
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 140
    iput-wide p1, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    .line 141
    return-void
.end method

.method public final streamReset(JI)I
    .locals 5
    .param p1, "streamId"    # J
    .param p3, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 189
    const-string/jumbo v1, "tnet-jni"

    const-string/jumbo v2, "[SpdySession.streamReset] - "

    invoke-static {v1, v2}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-wide v2, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    long-to-int v1, p1

    invoke-direct {p0, v2, v3, v1, p3}, Lorg/android/spdy/SpdySession;->streamCloseN(JII)I

    move-result v0

    .line 191
    .local v0, "code":I
    if-eqz v0, :cond_0

    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "streamReset error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 192
    :cond_0
    return v0
.end method

.method public final submitBioPing()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 174
    iget-wide v2, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/android/spdy/SpdySession;->submitBioPingN(J)I

    move-result v0

    .line 175
    .local v0, "code":I
    if-eqz v0, :cond_0

    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "submitBioPing error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 176
    :cond_0
    return v0
.end method

.method public final submitPing()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 166
    iget-wide v2, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/android/spdy/SpdySession;->submitPingN(J)I

    move-result v0

    .line 167
    .local v0, "code":I
    if-eqz v0, :cond_0

    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "submitPing error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 168
    :cond_0
    return v0
.end method

.method public final submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I
    .locals 14
    .param p1, "req"    # Lorg/android/spdy/SpdyRequest;
    .param p2, "dataPro"    # Lorg/android/spdy/SpdyDataProvider;
    .param p3, "streamUserData"    # Ljava/lang/Object;
    .param p4, "streamCallBack"    # Lorg/android/spdy/Spdycb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 227
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 228
    :cond_0
    new-instance v3, Lorg/android/spdy/SpdyErrorException;

    const-string/jumbo v4, "submitRequest error: -1102"

    const/16 v5, -0x44e

    invoke-direct {v3, v4, v5}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 231
    :cond_1
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 233
    invoke-static/range {p1 .. p2}, Lorg/android/spdy/SpdyAgent;->dataproviderToByteArray(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;)[B

    move-result-object v9

    .line 236
    .local v9, "data":[B
    if-eqz v9, :cond_2

    array-length v3, v9

    if-gtz v3, :cond_2

    .line 237
    const/4 v9, 0x0

    .line 239
    :cond_2
    const/4 v10, 0x1

    .line 240
    .local v10, "finish":Z
    if-eqz p2, :cond_3

    .line 241
    move-object/from16 v0, p2

    iget-boolean v10, v0, Lorg/android/spdy/SpdyDataProvider;->finished:Z

    .line 250
    :cond_3
    new-instance v13, Lorg/android/spdy/SpdyStreamContext;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v13, v0, v1}, Lorg/android/spdy/SpdyStreamContext;-><init>(Ljava/lang/Object;Lorg/android/spdy/Spdycb;)V

    .line 251
    .local v13, "context":Lorg/android/spdy/SpdyStreamContext;
    invoke-virtual {p0, v13}, Lorg/android/spdy/SpdySession;->putSpdyStreamCtx(Lorg/android/spdy/SpdyStreamContext;)I

    move-result v11

    .line 252
    .local v11, "index":I
    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lorg/android/spdy/SpdyAgent;->mapToByteArray(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v8

    .line 255
    .local v8, "nv":[Ljava/lang/String;
    const-string/jumbo v3, "tnet-jni"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "index="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  starttime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-wide v4, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getUrlPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getPriority()I

    move-result v3

    int-to-byte v7, v3

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getRequestTimeoutMs()I

    move-result v12

    move-object v3, p0

    invoke-direct/range {v3 .. v12}, Lorg/android/spdy/SpdySession;->submitRequestN(JLjava/lang/String;B[Ljava/lang/String;[BZII)I

    move-result v2

    .line 259
    .local v2, "code":I
    const-string/jumbo v3, "tnet-jni"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "index="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "   calltime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-gez v2, :cond_4

    .line 262
    invoke-virtual {p0, v11}, Lorg/android/spdy/SpdySession;->removeSpdyStream(I)V

    .line 263
    new-instance v3, Lorg/android/spdy/SpdyErrorException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "submitRequest error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 265
    :cond_4
    iput v2, v13, Lorg/android/spdy/SpdyStreamContext;->streamId:I

    .line 267
    return v2
.end method
