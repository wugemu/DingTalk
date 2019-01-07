.class public Lorg/altbeacon/beacon/RunningAverageRssiFilter;
.super Ljava/lang/Object;
.source "RunningAverageRssiFilter.java"

# interfaces
.implements Lorg/altbeacon/beacon/service/RssiFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;
    }
.end annotation


# static fields
.field private static final DEFAULT_RECORD_SIZE:I = 0x14

.field private static final DEFAULT_SAMPLE_EXPIRATION_MILLISECONDS:J = 0x7d0L

.field private static recordSize:I

.field private static sampleExpirationMilliseconds:J


# instance fields
.field private mMeasurements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private mSortMeasurements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->sampleExpirationMilliseconds:J

    .line 25
    const/16 v0, 0x14

    sput v0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->recordSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mMeasurements:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mSortMeasurements:Ljava/util/List;

    .line 87
    return-void
.end method

.method private declared-synchronized refreshMeasurements()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mSortMeasurements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 72
    iget-object v2, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mMeasurements:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_0

    .line 85
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mMeasurements:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 76
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;

    .line 78
    .local v1, "measurement":Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;->timestamp:J

    sub-long/2addr v2, v4

    sget-wide v4, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->sampleExpirationMilliseconds:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 71
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;>;"
    .end local v1    # "measurement":Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 81
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;>;"
    .restart local v1    # "measurement":Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mSortMeasurements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    .end local v1    # "measurement":Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;
    :cond_2
    iget-object v2, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mSortMeasurements:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static setRecordSize(I)V
    .locals 0
    .param p0, "size"    # I

    .prologue
    .line 101
    sput p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->recordSize:I

    .line 102
    return-void
.end method

.method public static setSampleExpirationMilliseconds(J)V
    .locals 0
    .param p0, "newSampleExpirationMilliseconds"    # J

    .prologue
    .line 97
    sput-wide p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->sampleExpirationMilliseconds:J

    .line 98
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
    .line 32
    new-instance v0, Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;-><init>(Lorg/altbeacon/beacon/RunningAverageRssiFilter;Lorg/altbeacon/beacon/RunningAverageRssiFilter$1;)V

    .line 33
    .local v0, "measurement":Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;
    iput-object p1, v0, Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;->rssi:Ljava/lang/Integer;

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;->timestamp:J

    .line 35
    iget-object v1, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mMeasurements:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 36
    iget-object v1, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mMeasurements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget v2, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->recordSize:I

    if-le v1, v2, :cond_0

    .line 37
    iget-object v1, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mMeasurements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 39
    :cond_0
    return-void
.end method

.method public calculateRssi()D
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->refreshMeasurements()V

    .line 49
    iget-object v4, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mMeasurements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 50
    .local v3, "size":I
    if-nez v3, :cond_0

    .line 51
    const-wide/16 v0, 0x0

    .line 67
    :goto_0
    return-wide v0

    .line 54
    :cond_0
    iget-object v4, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mMeasurements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;

    iget-object v4, v4, Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;->rssi:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 55
    .local v2, "rssi":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 56
    int-to-double v0, v2

    goto :goto_0

    .line 61
    :cond_1
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_2

    .line 62
    iget-object v4, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mSortMeasurements:Ljava/util/List;

    shr-int/lit8 v5, v3, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;

    iget-object v4, v4, Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;->rssi:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mSortMeasurements:Ljava/util/List;

    shr-int/lit8 v6, v3, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;

    iget-object v4, v4, Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;->rssi:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v0, v4, v6

    .local v0, "median":D
    goto :goto_0

    .line 64
    .end local v0    # "median":D
    :cond_2
    iget-object v4, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mSortMeasurements:Ljava/util/List;

    shr-int/lit8 v5, v3, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;

    iget-object v4, v4, Lorg/altbeacon/beacon/RunningAverageRssiFilter$Measurement;->rssi:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v0, v4

    .restart local v0    # "median":D
    goto :goto_0
.end method

.method public noMeasurementsAvailable()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/altbeacon/beacon/RunningAverageRssiFilter;->mMeasurements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
