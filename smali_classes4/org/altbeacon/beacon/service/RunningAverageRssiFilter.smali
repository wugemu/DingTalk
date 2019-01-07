.class public Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;
.super Ljava/lang/Object;
.source "RunningAverageRssiFilter.java"

# interfaces
.implements Lorg/altbeacon/beacon/service/RssiFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;
    }
.end annotation


# static fields
.field public static final DEFAULT_SAMPLE_EXPIRATION_MILLISECONDS:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "RunningAverageRssiFilter"

.field private static sampleExpirationMilliseconds:J


# instance fields
.field private mMeasurements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->sampleExpirationMilliseconds:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method private declared-synchronized refreshMeasurements()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v2, "newMeasurements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;>;"
    iget-object v3, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;

    .line 63
    .local v1, "measurement":Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v1, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->timestamp:J

    sub-long/2addr v4, v6

    sget-wide v6, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->sampleExpirationMilliseconds:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 64
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 59
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;>;"
    .end local v1    # "measurement":Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;
    .end local v2    # "newMeasurements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 67
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;>;"
    .restart local v2    # "newMeasurements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;>;"
    :cond_1
    :try_start_1
    iput-object v2, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    .line 68
    iget-object v3, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    monitor-exit p0

    return-void
.end method

.method public static setSampleExpirationMilliseconds(J)V
    .locals 0
    .param p0, "newSampleExpirationMilliseconds"    # J

    .prologue
    .line 81
    sput-wide p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->sampleExpirationMilliseconds:J

    .line 82
    return-void
.end method


# virtual methods
.method public addMeasurement(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "rssi"    # Ljava/lang/Integer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 25
    new-instance v0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;-><init>(Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$1;)V

    .line 26
    .local v0, "measurement":Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;
    iput-object p1, v0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->rssi:Ljava/lang/Integer;

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->timestamp:J

    .line 28
    iget-object v1, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public calculateRssi()D
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v10, 0x2

    .line 38
    invoke-direct {p0}, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->refreshMeasurements()V

    .line 39
    iget-object v8, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 40
    .local v4, "size":I
    const/4 v5, 0x0

    .line 41
    .local v5, "startIndex":I
    add-int/lit8 v0, v4, -0x1

    .line 42
    .local v0, "endIndex":I
    if-le v4, v10, :cond_0

    .line 43
    div-int/lit8 v8, v4, 0xa

    add-int/lit8 v5, v8, 0x1

    .line 44
    div-int/lit8 v8, v4, 0xa

    sub-int v8, v4, v8

    add-int/lit8 v0, v8, -0x2

    .line 47
    :cond_0
    const-wide/16 v6, 0x0

    .line 48
    .local v6, "sum":D
    move v1, v5

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 49
    iget-object v8, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;

    iget-object v8, v8, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->rssi:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    add-double/2addr v6, v8

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_1
    sub-int v8, v0, v5

    add-int/lit8 v8, v8, 0x1

    int-to-double v8, v8

    div-double v2, v6, v8

    .line 53
    .local v2, "runningAverage":D
    const-string/jumbo v8, "RunningAverageRssiFilter"

    const-string/jumbo v9, "Running average mRssi based on %s measurements: %s"

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    .line 53
    invoke-static {v8, v9, v10}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-wide v2
.end method

.method public noMeasurementsAvailable()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;->mMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
