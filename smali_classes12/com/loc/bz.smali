.class public final Lcom/loc/bz;
.super Ljava/lang/Object;
.source "AMapSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public a:Landroid/hardware/SensorManager;

.field public b:Landroid/hardware/Sensor;

.field public c:Landroid/hardware/Sensor;

.field public d:Landroid/hardware/Sensor;

.field public e:Z

.field public f:D

.field public g:F

.field public h:F

.field i:D

.field public j:Landroid/os/Handler;

.field k:D

.field l:D

.field m:D

.field public n:D

.field o:[D

.field volatile p:D

.field q:J

.field r:J

.field private s:Landroid/content/Context;

.field private t:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/bz;->s:Landroid/content/Context;

    iput-object v0, p0, Lcom/loc/bz;->a:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/loc/bz;->b:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/loc/bz;->c:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/loc/bz;->d:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bz;->e:Z

    iput-wide v2, p0, Lcom/loc/bz;->f:D

    iput v1, p0, Lcom/loc/bz;->g:F

    const v0, 0x447d5000    # 1013.25f

    iput v0, p0, Lcom/loc/bz;->t:F

    iput v1, p0, Lcom/loc/bz;->h:F

    iput-wide v2, p0, Lcom/loc/bz;->i:D

    new-instance v0, Lcom/loc/bz$1;

    invoke-direct {v0, p0}, Lcom/loc/bz$1;-><init>(Lcom/loc/bz;)V

    iput-object v0, p0, Lcom/loc/bz;->j:Landroid/os/Handler;

    iput-wide v2, p0, Lcom/loc/bz;->k:D

    iput-wide v2, p0, Lcom/loc/bz;->l:D

    iput-wide v2, p0, Lcom/loc/bz;->m:D

    iput-wide v2, p0, Lcom/loc/bz;->n:D

    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/loc/bz;->o:[D

    iput-wide v2, p0, Lcom/loc/bz;->p:D

    iput-wide v4, p0, Lcom/loc/bz;->q:J

    iput-wide v4, p0, Lcom/loc/bz;->r:J

    :try_start_0
    iput-object p1, p0, Lcom/loc/bz;->s:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->s:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/loc/bz;->a:Landroid/hardware/SensorManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->b:Landroid/hardware/Sensor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->c:Landroid/hardware/Sensor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bz;->d:Landroid/hardware/Sensor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapSensorManager"

    const-string/jumbo v2, "<init>"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/loc/bz;->e:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bz;->e:Z

    :try_start_0
    iget-object v0, p0, Lcom/loc/bz;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/loc/bz;->b:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/bz;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/loc/bz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/bz;->d:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bz;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/loc/bz;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    const v10, 0x3e4ccccc    # 0.19999999f

    const-wide v8, 0x3fe99999a0000000L    # 0.800000011920929

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/bz;->d:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iget-object v1, p0, Lcom/loc/bz;->o:[D

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/loc/bz;->o:[D

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    mul-double/2addr v4, v8

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v3, v10

    float-to-double v6, v3

    add-double/2addr v4, v6

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/loc/bz;->o:[D

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/loc/bz;->o:[D

    const/4 v4, 0x1

    aget-wide v4, v3, v4

    mul-double/2addr v4, v8

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v3, v10

    float-to-double v6, v3

    add-double/2addr v4, v6

    aput-wide v4, v1, v2

    iget-object v1, p0, Lcom/loc/bz;->o:[D

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/loc/bz;->o:[D

    const/4 v4, 0x2

    aget-wide v4, v3, v4

    mul-double/2addr v4, v8

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v3, v10

    float-to-double v6, v3

    add-double/2addr v4, v6

    aput-wide v4, v1, v2

    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-double v2, v1

    iget-object v1, p0, Lcom/loc/bz;->o:[D

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/loc/bz;->k:D

    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-double v2, v1

    iget-object v1, p0, Lcom/loc/bz;->o:[D

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/loc/bz;->l:D

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/loc/bz;->o:[D

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/loc/bz;->m:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/bz;->q:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/loc/bz;->k:D

    iget-wide v4, p0, Lcom/loc/bz;->k:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/loc/bz;->l:D

    iget-wide v6, p0, Lcom/loc/bz;->l:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcom/loc/bz;->m:D

    iget-wide v6, p0, Lcom/loc/bz;->m:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/bz;->r:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/loc/bz;->r:J

    iput-wide v0, p0, Lcom/loc/bz;->q:J

    iget-wide v0, p0, Lcom/loc/bz;->p:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/loc/bz;->p:D

    iget-wide v0, p0, Lcom/loc/bz;->r:J

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/loc/bz;->p:D

    iget-wide v2, p0, Lcom/loc/bz;->r:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/loc/bz;->n:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bz;->p:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bz;->r:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :sswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/bz;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/loc/bz;->g:F

    :cond_2
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/loc/bz;->t:F

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getAltitude(FF)F

    move-result v0

    invoke-static {v0}, Ljdx;->a(F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/loc/bz;->f:D
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :sswitch_2
    :try_start_3
    iget-object v0, p0, Lcom/loc/bz;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/loc/bz;->h:F

    iget v0, p0, Lcom/loc/bz;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/loc/bz;->h:F

    float-to-double v0, v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/loc/bz;->h:F

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/loc/bz;->h:F
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method
