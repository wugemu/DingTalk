.class public Lcom/alibaba/security/biometrics/build/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field a:Z

.field private b:I

.field private c:Landroid/content/Context;

.field private d:F

.field private e:F

.field private f:F

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alibaba/security/biometrics/build/au;->b:I

    iput-object p1, p0, Lcom/alibaba/security/biometrics/build/au;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/security/biometrics/build/au;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x46

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-wide v0, p0, Lcom/alibaba/security/biometrics/build/au;->g:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v9

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    iget v5, p0, Lcom/alibaba/security/biometrics/build/au;->d:F

    sub-float v5, v0, v5

    iget v6, p0, Lcom/alibaba/security/biometrics/build/au;->e:F

    sub-float v6, v1, v6

    iget v7, p0, Lcom/alibaba/security/biometrics/build/au;->f:F

    sub-float v7, v4, v7

    iput v0, p0, Lcom/alibaba/security/biometrics/build/au;->d:F

    iput v1, p0, Lcom/alibaba/security/biometrics/build/au;->e:F

    iput v4, p0, Lcom/alibaba/security/biometrics/build/au;->f:F

    mul-float v0, v5, v5

    mul-float v1, v6, v6

    add-float/2addr v0, v1

    mul-float v1, v7, v7

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    iput-boolean v8, p0, Lcom/alibaba/security/biometrics/build/au;->a:Z

    iget v2, p0, Lcom/alibaba/security/biometrics/build/au;->b:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iput-boolean v9, p0, Lcom/alibaba/security/biometrics/build/au;->a:Z

    goto :goto_0
.end method
