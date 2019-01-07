.class public Lorg/altbeacon/beacon/service/Stats;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/service/Stats$Sample;
    }
.end annotation


# static fields
.field private static final SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TAG:Ljava/lang/String; = "Stats"

.field private static mInstance:Lorg/altbeacon/beacon/service/Stats;


# instance fields
.field private mEnableHistoricalLogging:Z

.field private mEnableLogging:Z

.field private mEnabled:Z

.field private mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

.field private mSampleIntervalMillis:J

.field private mSamples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/altbeacon/beacon/service/Stats$Sample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/altbeacon/beacon/service/Stats;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/Stats;->mSampleIntervalMillis:J

    .line 34
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/Stats;->clearSamples()V

    .line 35
    return-void
.end method

.method private formattedDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "d"    # Ljava/util/Date;

    .prologue
    .line 108
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/altbeacon/beacon/service/Stats;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lorg/altbeacon/beacon/service/Stats;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/altbeacon/beacon/service/Stats;->mInstance:Lorg/altbeacon/beacon/service/Stats;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lorg/altbeacon/beacon/service/Stats;

    invoke-direct {v0}, Lorg/altbeacon/beacon/service/Stats;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/service/Stats;->mInstance:Lorg/altbeacon/beacon/service/Stats;

    .line 30
    :cond_0
    sget-object v0, Lorg/altbeacon/beacon/service/Stats;->mInstance:Lorg/altbeacon/beacon/service/Stats;

    return-object v0
.end method

.method private logSample(Lorg/altbeacon/beacon/service/Stats$Sample;Z)V
    .locals 6
    .param p1, "sample"    # Lorg/altbeacon/beacon/service/Stats$Sample;
    .param p2, "showHeader"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 97
    if-eqz p2, :cond_0

    .line 98
    const-string/jumbo v0, "Stats"

    const-string/jumbo v1, "sample start time, sample stop time, first detection time, last detection time, max millis between detections, detection count"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :cond_0
    const-string/jumbo v0, "Stats"

    const-string/jumbo v1, "%s, %s, %s, %s, %s, %s"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lorg/altbeacon/beacon/service/Stats$Sample;->sampleStartTime:Ljava/util/Date;

    .line 102
    invoke-direct {p0, v3}, Lorg/altbeacon/beacon/service/Stats;->formattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p1, Lorg/altbeacon/beacon/service/Stats$Sample;->sampleStopTime:Ljava/util/Date;

    invoke-direct {p0, v4}, Lorg/altbeacon/beacon/service/Stats;->formattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lorg/altbeacon/beacon/service/Stats$Sample;->firstDetectionTime:Ljava/util/Date;

    .line 103
    invoke-direct {p0, v4}, Lorg/altbeacon/beacon/service/Stats;->formattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lorg/altbeacon/beacon/service/Stats$Sample;->lastDetectionTime:Ljava/util/Date;

    invoke-direct {p0, v4}, Lorg/altbeacon/beacon/service/Stats;->formattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p1, Lorg/altbeacon/beacon/service/Stats$Sample;->maxMillisBetweenDetections:J

    .line 104
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, p1, Lorg/altbeacon/beacon/service/Stats$Sample;->detectionCount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 101
    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method private logSamples()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 112
    const-string/jumbo v2, "Stats"

    const-string/jumbo v3, "--- Stats for %s samples"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/altbeacon/beacon/service/Stats;->mSamples:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    const/4 v0, 0x1

    .line 114
    .local v0, "firstPass":Z
    iget-object v2, p0, Lorg/altbeacon/beacon/service/Stats;->mSamples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/service/Stats$Sample;

    .line 115
    .local v1, "sample":Lorg/altbeacon/beacon/service/Stats$Sample;
    invoke-direct {p0, v1, v0}, Lorg/altbeacon/beacon/service/Stats;->logSample(Lorg/altbeacon/beacon/service/Stats$Sample;Z)V

    .line 116
    const/4 v0, 0x0

    .line 117
    goto :goto_0

    .line 118
    .end local v1    # "sample":Lorg/altbeacon/beacon/service/Stats$Sample;
    :cond_0
    return-void
.end method

.method private rollSampleIfNeeded()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 120
    iget-object v0, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/altbeacon/beacon/service/Stats;->mSampleIntervalMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    iget-object v2, v2, Lorg/altbeacon/beacon/service/Stats$Sample;->sampleStartTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/altbeacon/beacon/service/Stats;->mSampleIntervalMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/Stats;->newSampleInterval()V

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method public clearSample()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    .line 72
    return-void
.end method

.method public clearSamples()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/Stats;->mSamples:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/Stats;->newSampleInterval()V

    .line 94
    return-void
.end method

.method public getSamples()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/altbeacon/beacon/service/Stats$Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/Stats;->rollSampleIfNeeded()V

    .line 38
    iget-object v0, p0, Lorg/altbeacon/beacon/service/Stats;->mSamples:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/Stats;->mEnabled:Z

    return v0
.end method

.method public log(Lorg/altbeacon/beacon/Beacon;)V
    .locals 8
    .param p1, "beacon"    # Lorg/altbeacon/beacon/Beacon;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/Stats;->rollSampleIfNeeded()V

    .line 57
    iget-object v2, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    iget-wide v4, v2, Lorg/altbeacon/beacon/service/Stats$Sample;->detectionCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Lorg/altbeacon/beacon/service/Stats$Sample;->detectionCount:J

    .line 58
    iget-object v2, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    iget-object v2, v2, Lorg/altbeacon/beacon/service/Stats$Sample;->firstDetectionTime:Ljava/util/Date;

    if-nez v2, :cond_0

    .line 59
    iget-object v2, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v2, Lorg/altbeacon/beacon/service/Stats$Sample;->firstDetectionTime:Ljava/util/Date;

    .line 61
    :cond_0
    iget-object v2, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    iget-object v2, v2, Lorg/altbeacon/beacon/service/Stats$Sample;->lastDetectionTime:Ljava/util/Date;

    if-eqz v2, :cond_1

    .line 62
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    iget-object v4, v4, Lorg/altbeacon/beacon/service/Stats$Sample;->lastDetectionTime:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 64
    .local v0, "timeSinceLastDetection":J
    iget-object v2, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    iget-wide v2, v2, Lorg/altbeacon/beacon/service/Stats$Sample;->maxMillisBetweenDetections:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 65
    iget-object v2, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    iput-wide v0, v2, Lorg/altbeacon/beacon/service/Stats$Sample;->maxMillisBetweenDetections:J

    .line 68
    .end local v0    # "timeSinceLastDetection":J
    :cond_1
    iget-object v2, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v2, Lorg/altbeacon/beacon/service/Stats$Sample;->lastDetectionTime:Ljava/util/Date;

    .line 69
    return-void
.end method

.method public newSampleInterval()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 76
    .local v0, "boundaryTime":Ljava/util/Date;
    iget-object v1, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    if-eqz v1, :cond_0

    .line 77
    new-instance v0, Ljava/util/Date;

    .end local v0    # "boundaryTime":Ljava/util/Date;
    iget-object v1, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    iget-object v1, v1, Lorg/altbeacon/beacon/service/Stats$Sample;->sampleStartTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/altbeacon/beacon/service/Stats;->mSampleIntervalMillis:J

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 78
    .restart local v0    # "boundaryTime":Ljava/util/Date;
    iget-object v1, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    iput-object v0, v1, Lorg/altbeacon/beacon/service/Stats$Sample;->sampleStopTime:Ljava/util/Date;

    .line 79
    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/Stats;->mEnableHistoricalLogging:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/Stats;->mEnableLogging:Z

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/altbeacon/beacon/service/Stats;->logSample(Lorg/altbeacon/beacon/service/Stats$Sample;Z)V

    .line 83
    :cond_0
    new-instance v1, Lorg/altbeacon/beacon/service/Stats$Sample;

    invoke-direct {v1}, Lorg/altbeacon/beacon/service/Stats$Sample;-><init>()V

    iput-object v1, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    .line 84
    iget-object v1, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    iput-object v0, v1, Lorg/altbeacon/beacon/service/Stats$Sample;->sampleStartTime:Ljava/util/Date;

    .line 85
    iget-object v1, p0, Lorg/altbeacon/beacon/service/Stats;->mSamples:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/altbeacon/beacon/service/Stats;->mSample:Lorg/altbeacon/beacon/service/Stats$Sample;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-boolean v1, p0, Lorg/altbeacon/beacon/service/Stats;->mEnableHistoricalLogging:Z

    if-eqz v1, :cond_1

    .line 87
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/Stats;->logSamples()V

    .line 89
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lorg/altbeacon/beacon/service/Stats;->mEnabled:Z

    .line 42
    return-void
.end method

.method public setHistoricalLoggingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lorg/altbeacon/beacon/service/Stats;->mEnableHistoricalLogging:Z

    .line 51
    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/altbeacon/beacon/service/Stats;->mEnableLogging:Z

    .line 48
    return-void
.end method

.method public setSampleIntervalMillis(J)V
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lorg/altbeacon/beacon/service/Stats;->mSampleIntervalMillis:J

    .line 54
    return-void
.end method
