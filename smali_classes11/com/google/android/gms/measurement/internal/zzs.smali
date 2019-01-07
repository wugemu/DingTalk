.class Lcom/google/android/gms/measurement/internal/zzs;
.super Ljava/lang/Object;


# instance fields
.field final ajN:Z

.field final ajO:I

.field ajP:J

.field ajQ:D

.field ajR:J

.field ajS:D

.field ajT:J

.field ajU:D

.field final ajV:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzuf$zzd;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amN:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amN:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_9

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amN:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajO:I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amO:Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amO:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajN:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amN:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajN:Z

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amQ:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajS:D

    iget-object v0, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amR:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajU:D

    :goto_2
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajV:Z

    return-void

    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amN:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amP:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amQ:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amR:Ljava/lang/String;

    if-eqz v2, :cond_2

    :cond_4
    move v2, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    iget-object v0, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amQ:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajR:J

    iget-object v0, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amR:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajT:J

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajN:Z

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amP:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajQ:D

    goto :goto_2

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/internal/zzuf$zzd;->amP:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajP:J

    goto :goto_2

    :cond_9
    iput v1, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajO:I

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajN:Z

    goto :goto_2
.end method


# virtual methods
.method public zzbk(J)Ljava/lang/Boolean;
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajV:Z

    if-nez v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajN:Z

    if-eqz v3, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajO:I

    packed-switch v3, :pswitch_data_0

    move-object v0, v2

    goto :goto_0

    :pswitch_0
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajP:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajP:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :pswitch_2
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajP:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_4

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_3

    :pswitch_3
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajR:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajT:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_5

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public zzj(D)Ljava/lang/Boolean;
    .locals 11

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajV:Z

    if-nez v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajN:Z

    if-nez v3, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajO:I

    packed-switch v3, :pswitch_data_0

    move-object v0, v2

    goto :goto_0

    :pswitch_0
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajQ:D

    cmpg-double v2, p1, v2

    if-gez v2, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajQ:D

    cmpl-double v2, p1, v2

    if-lez v2, :cond_3

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :pswitch_2
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajQ:D

    cmpl-double v2, p1, v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajQ:D

    sub-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajQ:D

    invoke-static {v8, v9}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajS:D

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_6

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzs;->ajU:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_6

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
