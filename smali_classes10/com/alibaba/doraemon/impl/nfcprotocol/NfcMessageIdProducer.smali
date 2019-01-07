.class public Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;
.super Ljava/lang/Object;
.source "NfcMessageIdProducer.java"


# static fields
.field private static sInstance:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;


# instance fields
.field private sequenceId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;->sequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;
    .locals 2

    .prologue
    .line 17
    const-class v1, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;->sInstance:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;->sInstance:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;

    .line 20
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;->sInstance:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized messageId()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;->sequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 25
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcMessageIdProducer;->sequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0x9184e72a000L

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
