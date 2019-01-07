.class public Lanet/channel/statist/SessionStatistic;
.super Lanet/channel/statist/StatObject;
.source "SessionStatistic.java"


# annotations
.annotation runtime Lanet/channel/statist/Monitor;
    module = "networkPrefer"
    monitorPoint = "session"
.end annotation


# static fields
.field public static maxRetryTime:I


# instance fields
.field public ackTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public authTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 15000.0
    .end annotation
.end field

.field public cfRCount:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public closeReason:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public connectionTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 15000.0
    .end annotation
.end field

.field public conntype:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public errorCode:J
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public host:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public inceptCount:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public ip:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isBackground:Z
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isCommitted:Z

.field public isKL:J
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isProxy:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isTunnel:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public lastPingInterval:I
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public liveTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 86400.0
    .end annotation
.end field

.field public netType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public pRate:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public port:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public ppkgCount:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public recvSizeCount:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public requestCount:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 1.0
    .end annotation
.end field

.field public ret:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public retryTimes:J
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public sdkv:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public sendSizeCount:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public sslCalTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 15000.0
    .end annotation
.end field

.field public sslTime:J
    .annotation runtime Lanet/channel/statist/Measure;
        max = 15000.0
    .end annotation
.end field

.field public stdRCount:J
    .annotation runtime Lanet/channel/statist/Measure;
        constantValue = 0.0
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lim;)V
    .locals 6
    .param p1, "info"    # Lim;

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    .line 50
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    .line 20
    const-string/jumbo v0, "false"

    iput-object v0, p0, Lanet/channel/statist/SessionStatistic;->isProxy:Ljava/lang/String;

    .line 33
    iput-wide v2, p0, Lanet/channel/statist/SessionStatistic;->liveTime:J

    .line 34
    iput-wide v4, p0, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 36
    iput-wide v4, p0, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    .line 1075
    iget-object v0, p1, Lim;->b:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lanet/channel/statist/SessionStatistic;->host:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lim;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/SessionStatistic;->ip:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lim;->b()I

    move-result v0

    iput v0, p0, Lanet/channel/statist/SessionStatistic;->port:I

    .line 54
    invoke-virtual {p1}, Lim;->e()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lanet/channel/statist/SessionStatistic;->pRate:J

    .line 55
    iput-wide v2, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lim;->c()Lanet/channel/entity/ConnType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/SessionStatistic;->conntype:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public beforeCommit()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 60
    iget v2, p0, Lanet/channel/statist/SessionStatistic;->ret:I

    if-nez v2, :cond_2

    iget-wide v2, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    sget v4, Lanet/channel/statist/SessionStatistic;->maxRetryTime:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    const-wide/16 v4, -0xa35

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    const-wide/16 v4, -0xa29

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 64
    :cond_0
    invoke-static {v1}, Lanet/channel/util/ALog;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    const-string/jumbo v2, "SessionStat no need commit"

    const/4 v3, 0x0

    const-string/jumbo v4, "retry:"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    const-string/jumbo v6, "maxRetryTime"

    aput-object v6, v5, v1

    const/4 v1, 0x2

    sget v6, Lanet/channel/statist/SessionStatistic;->maxRetryTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    const-string/jumbo v6, "errorCode"

    aput-object v6, v5, v1

    const/4 v1, 0x4

    iget-wide v6, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_1
    :goto_0
    return v0

    .line 69
    :cond_2
    iget-boolean v2, p0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    if-nez v2, :cond_1

    .line 72
    iput-boolean v1, p0, Lanet/channel/statist/SessionStatistic;->isCommitted:Z

    move v0, v1

    .line 73
    goto :goto_0
.end method

.method public getAlarmObject()Lju;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 77
    new-instance v0, Lju;

    invoke-direct {v0}, Lju;-><init>()V

    .line 78
    .local v0, "alarmObject":Lju;
    const-string/jumbo v1, "networkPrefer"

    iput-object v1, v0, Lju;->e:Ljava/lang/String;

    .line 79
    const-string/jumbo v1, "connect_succ_rate"

    iput-object v1, v0, Lju;->f:Ljava/lang/String;

    .line 80
    iget v1, p0, Lanet/channel/statist/SessionStatistic;->ret:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lju;->a:Z

    .line 81
    iget-boolean v1, v0, Lju;->a:Z

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    iput-object v1, v0, Lju;->b:Ljava/lang/String;

    .line 86
    :goto_1
    return-object v0

    .line 80
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 84
    :cond_1
    iget-wide v2, p0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lju;->c:Ljava/lang/String;

    goto :goto_1
.end method
