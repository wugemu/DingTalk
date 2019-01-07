.class public Lanetwork/channel/statist/StatisticData;
.super Ljava/lang/Object;
.source "StatisticData.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x311ba3e23688005cL


# instance fields
.field public api_v:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public cacheTime:J

.field public connectionType:Ljava/lang/String;

.field public dataSpeed:J

.field public dnsTime:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public firstDataTime:J

.field public host:Ljava/lang/String;

.field public ip_port:Ljava/lang/String;

.field public isDNSTimeout:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public isRequestSuccess:Z

.field public isSSL:Z

.field public isSpdy:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public netStatSum:Ljava/lang/String;

.field public netTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public oneWayTime_AEngine:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public oneWayTime_ANet:J

.field public oneWayTime_Jni:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public postBodyTime:J

.field public recDataTime:J

.field public receiveDataTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public redirectTime:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public responseBodySize:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public resultCode:I

.field public retryTime:I

.field public rtt:J

.field public sendBeforeTime:J

.field public sendSize:J

.field public serverRT:J

.field public spdyWaitTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public tcpConnTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public tcpLinkDate:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public timeoutType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public totalSize:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    .line 25
    iput-boolean v1, p0, Lanetwork/channel/statist/StatisticData;->isRequestSuccess:Z

    .line 30
    iput v1, p0, Lanetwork/channel/statist/StatisticData;->resultCode:I

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->api_v:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->ip_port:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lanetwork/channel/statist/StatisticData;->isSpdy:Z

    .line 57
    iput-boolean v1, p0, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    .line 62
    iput v1, p0, Lanetwork/channel/statist/StatisticData;->dnsTime:I

    .line 68
    iput v1, p0, Lanetwork/channel/statist/StatisticData;->isDNSTimeout:I

    .line 74
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->tcpLinkDate:J

    .line 81
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->tcpConnTime:J

    .line 87
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    .line 90
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->cacheTime:J

    .line 95
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_AEngine:J

    .line 101
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_Jni:J

    .line 107
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->postBodyTime:J

    .line 113
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->spdyWaitTime:J

    .line 116
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->sendBeforeTime:J

    .line 121
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    .line 126
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    .line 132
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->receiveDataTime:J

    .line 138
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->serverRT:J

    .line 143
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->rtt:J

    .line 149
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->netTime:J

    .line 155
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->sendSize:J

    .line 160
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    .line 165
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->responseBodySize:J

    .line 171
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->dataSpeed:J

    .line 176
    const-string/jumbo v0, ""

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->timeoutType:Ljava/lang/String;

    .line 196
    return-void
.end method


# virtual methods
.method public filledBy(Lanet/channel/statist/RequestStatistic;)V
    .locals 4
    .param p1, "rs"    # Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 199
    if-eqz p1, :cond_1

    .line 200
    iget v0, p1, Lanet/channel/statist/RequestStatistic;->statusCode:I

    iput v0, p0, Lanetwork/channel/statist/StatisticData;->resultCode:I

    .line 201
    iget-object v0, p1, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    .line 202
    iget-boolean v0, p1, Lanet/channel/statist/RequestStatistic;->ret:Z

    iput-boolean v0, p0, Lanetwork/channel/statist/StatisticData;->isRequestSuccess:Z

    .line 203
    iget-object v0, p1, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p1, Lanet/channel/statist/RequestStatistic;->port:I

    if-eqz v0, :cond_0

    .line 205
    const-string/jumbo v0, "%s:%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lanet/channel/statist/RequestStatistic;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->ip_port:Ljava/lang/String;

    .line 207
    :cond_0
    iget-boolean v0, p1, Lanet/channel/statist/RequestStatistic;->isSSL:Z

    iput-boolean v0, p0, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    .line 208
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    .line 209
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->cacheTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->cacheTime:J

    .line 210
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    .line 211
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->sendBeforeTime:J

    .line 212
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    .line 213
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->sendSize:J

    .line 214
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    .line 215
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->serverRT:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->serverRT:J

    .line 216
    iget-wide v0, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    div-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->dataSpeed:J

    .line 218
    :cond_1
    return-void

    .line 216
    :cond_2
    iget-wide v0, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    goto :goto_0
.end method

.method public sumNetStat()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 222
    .local v0, "sumBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lanetwork/channel/statist/StatisticData;->isRequestSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 223
    const-string/jumbo v1, ",host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string/jumbo v1, ",resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lanetwork/channel/statist/StatisticData;->resultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    const-string/jumbo v1, ",connType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string/jumbo v1, ",oneWayTime_ANet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 227
    const-string/jumbo v1, ",ip_port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/statist/StatisticData;->ip_port:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string/jumbo v1, ",isSSL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 229
    const-string/jumbo v1, ",cacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->cacheTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 230
    const-string/jumbo v1, ",postBodyTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->postBodyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 231
    const-string/jumbo v1, ",firstDataTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 232
    const-string/jumbo v1, ",recDataTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 233
    const-string/jumbo v1, ",serverRT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->serverRT:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 234
    const-string/jumbo v1, ",rtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->rtt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    const-string/jumbo v1, ",sendSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->sendSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    const-string/jumbo v1, ",totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 237
    const-string/jumbo v1, ",dataSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->dataSpeed:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 238
    const-string/jumbo v1, ",retryTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lanetwork/channel/statist/StatisticData;->retryTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 244
    iget-object v1, p0, Lanetwork/channel/statist/StatisticData;->netStatSum:Ljava/lang/String;

    invoke-static {v1}, Lla;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lanetwork/channel/statist/StatisticData;->sumNetStat()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanetwork/channel/statist/StatisticData;->netStatSum:Ljava/lang/String;

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "StatisticData ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "str":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lanetwork/channel/statist/StatisticData;->netStatSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
