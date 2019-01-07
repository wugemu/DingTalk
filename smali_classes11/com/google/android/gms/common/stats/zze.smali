.class public Lcom/google/android/gms/common/stats/zze;
.super Ljava/lang/Object;


# instance fields
.field private final AH:J

.field private final AI:I

.field private final AJ:Lfw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfw",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/google/android/gms/common/stats/zze;->AH:J

    iput v2, p0, Lcom/google/android/gms/common/stats/zze;->AI:I

    new-instance v0, Lfw;

    invoke-direct {v0, v2}, Lfw;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zze;->AJ:Lfw;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/common/stats/zze;->AH:J

    iput p1, p0, Lcom/google/android/gms/common/stats/zze;->AI:I

    new-instance v0, Lfw;

    invoke-direct {v0}, Lfw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zze;->AJ:Lfw;

    return-void
.end method

.method private zze(JJ)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->AJ:Lfw;

    invoke-virtual {v0}, Lfw;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->AJ:Lfw;

    invoke-virtual {v0, v1}, Lfw;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p3, v2

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->AJ:Lfw;

    invoke-virtual {v0, v1}, Lfw;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public zzhx(Ljava/lang/String;)Ljava/lang/Long;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/zze;->AH:J

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/common/stats/zze;->AJ:Lfw;

    invoke-virtual {v4}, Lfw;->size()I

    move-result v4

    iget v5, p0, Lcom/google/android/gms/common/stats/zze;->AI:I

    if-lt v4, v5, :cond_0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/common/stats/zze;->zze(JJ)V

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    const-string/jumbo v4, "ConnectionTracker"

    iget v5, p0, Lcom/google/android/gms/common/stats/zze;->AI:I

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x5e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "The max capacity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not enough. Current durationThreshold is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->AJ:Lfw;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lfw;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public zzhy(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/stats/zze;->AJ:Lfw;

    invoke-virtual {v0, p1}, Lfw;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
