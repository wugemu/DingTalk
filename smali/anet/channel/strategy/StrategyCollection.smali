.class Lanet/channel/strategy/StrategyCollection;
.super Ljava/lang/Object;
.source "StrategyCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x380416db05a5c8a5L


# instance fields
.field connStrategyList:Lanet/channel/strategy/ConnStrategyList;

.field volatile etag:Ljava/lang/String;

.field host:Ljava/lang/String;

.field volatile lastHorseRideTime:J

.field volatile scheme:Ljava/lang/String;

.field volatile ttl:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    .line 26
    iput-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    .line 27
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->scheme:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->etag:Ljava/lang/String;

    .line 29
    iput-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->lastHorseRideTime:J

    .line 31
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    .line 26
    iput-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    .line 27
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->scheme:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->etag:Ljava/lang/String;

    .line 29
    iput-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->lastHorseRideTime:J

    .line 34
    iput-object p1, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    .line 35
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lanet/channel/strategy/ConnStrategyList;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "connStrategyList"    # Lanet/channel/strategy/ConnStrategyList;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    .line 26
    iput-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    .line 27
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->scheme:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->etag:Ljava/lang/String;

    .line 29
    iput-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->lastHorseRideTime:J

    .line 38
    iput-object p1, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    .line 40
    return-void
.end method


# virtual methods
.method public getHostWithEtag()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 64
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->etag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lanet/channel/strategy/StrategyCollection;->etag:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lla;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized notifyConnEvent(Ljy;Lanet/channel/entity/EventType;Lip;)V
    .locals 5
    .param p1, "connStrategy"    # Ljy;
    .param p2, "eventType"    # Lanet/channel/entity/EventType;
    .param p3, "event"    # Lip;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    sget-object v0, Lanet/channel/entity/EventType;->HORSE_RIDE:Lanet/channel/entity/EventType;

    if-ne p2, v0, :cond_0

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanet/channel/strategy/StrategyCollection;->lastHorseRideTime:J

    .line 53
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    invoke-virtual {v0, p1, p2, p3}, Lanet/channel/strategy/ConnStrategyList;->notifyConnEvent(Ljy;Lanet/channel/entity/EventType;Lip;)V

    .line 55
    sget-object v0, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lanet/channel/entity/EventType;->AUTH_FAIL:Lanet/channel/entity/EventType;

    if-ne p2, v0, :cond_2

    .line 56
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    invoke-virtual {v0}, Lanet/channel/strategy/ConnStrategyList;->isUnavailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-static {}, Ljf;->a()Ljf;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljf;->a(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_2
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryStrategyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    invoke-virtual {v0}, Lanet/channel/strategy/ConnStrategyList;->getStrategyList()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 127
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\nStrategyList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    if-nez v1, :cond_0

    .line 129
    const-string/jumbo v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 131
    :cond_0
    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public declared-synchronized update(Lke$b;)V
    .locals 6
    .param p1, "dnsInfo"    # Lke$b;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p1, Lke$b;->b:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lanet/channel/strategy/StrategyCollection;->ttl:J

    .line 78
    iget-object v0, p1, Lke$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    const-string/jumbo v0, "StrategyCollection"

    const-string/jumbo v1, "update error!"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "host"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "dnsInfo.host"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lke$b;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    :cond_1
    :try_start_1
    iget-boolean v0, p1, Lke$b;->o:Z

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    invoke-virtual {v0}, Lanet/channel/strategy/ConnStrategyList;->resetStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 90
    :cond_2
    :try_start_2
    iget-object v0, p1, Lke$b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p1, Lke$b;->n:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->etag:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "http"

    iget-object v1, p1, Lke$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "https"

    iget-object v1, p1, Lke$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    :cond_3
    iget-object v0, p1, Lke$b;->c:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->scheme:Ljava/lang/String;

    .line 102
    :cond_4
    iget-object v0, p1, Lke$b;->e:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lke$b;->e:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lke$b;->f:[Lke$a;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lke$b;->f:[Lke$a;

    array-length v0, v0

    if-nez v0, :cond_6

    .line 104
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    .line 107
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->host:Ljava/lang/String;

    invoke-static {v0}, Lkg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lkg;->b()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 109
    invoke-static {}, Lkg;->b()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lanet/channel/strategy/RawConnStrategy;

    const/4 v2, 0x0

    invoke-static {}, Lanet/channel/strategy/RawConnStrategy$a;->a()Lanet/channel/strategy/RawConnStrategy;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lanet/channel/strategy/ConnStrategyList;->createForIDC([Ljava/lang/String;[Lanet/channel/strategy/RawConnStrategy;)Lanet/channel/strategy/ConnStrategyList;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    goto :goto_0

    .line 115
    :cond_6
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    if-nez v0, :cond_7

    .line 116
    iget-object v0, p1, Lke$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lkg;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lanet/channel/strategy/ConnStrategyList;->createForIDC()Lanet/channel/strategy/ConnStrategyList;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    .line 121
    :cond_7
    iget-object v0, p0, Lanet/channel/strategy/StrategyCollection;->connStrategyList:Lanet/channel/strategy/ConnStrategyList;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/ConnStrategyList;->update(Lke$b;)V

    goto/16 :goto_0

    .line 116
    :cond_8
    invoke-static {}, Lanet/channel/strategy/ConnStrategyList;->createForCDN()Lanet/channel/strategy/ConnStrategyList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1
.end method
