.class public Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;
.super Ljava/lang/Object;
.source "StepDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static CURRENT_SETP:I

.field public static SENSITIVITY:F

.field private static end:J

.field private static start:J


# instance fields
.field private mLastDiff:[F

.field private mLastDirections:[F

.field private mLastExtremes:[[F

.field private mLastMatch:I

.field private mLastValues:[F

.field private mScale:[F

.field private mYOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->CURRENT_SETP:I

    .line 15
    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->SENSITIVITY:F

    .line 19
    sput-wide v2, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->end:J

    .line 20
    sput-wide v2, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->start:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastValues:[F

    .line 17
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mScale:[F

    .line 24
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastDirections:[F

    .line 25
    new-array v0, v1, [[F

    new-array v1, v2, [F

    aput-object v1, v0, v3

    new-array v1, v2, [F

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastExtremes:[[F

    .line 26
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastDiff:[F

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastMatch:I

    .line 37
    const/high16 v0, 0x43700000    # 240.0f

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mYOffset:F

    .line 38
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mScale:[F

    const v1, -0x3ebc36e9

    aput v1, v0, v3

    .line 39
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mScale:[F

    const/high16 v1, -0x3f800000    # -4.0f

    aput v1, v0, v4

    .line 40
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 95
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    iget-object v7, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 45
    .local v7, "sensor":Landroid/hardware/Sensor;
    monitor-enter p0

    .line 46
    :try_start_0
    invoke-virtual {v7}, Landroid/hardware/Sensor;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 48
    const/4 v9, 0x0

    .line 49
    .local v9, "vSum":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v10, 0x3

    if-ge v3, v10, :cond_0

    .line 50
    iget v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mYOffset:F

    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v11, v11, v3

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mScale:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    mul-float/2addr v11, v12

    add-float v8, v10, v11

    .line 51
    .local v8, "v":F
    add-float/2addr v9, v8

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v8    # "v":F
    :cond_0
    const/high16 v10, 0x40400000    # 3.0f

    div-float v8, v9, v10

    .line 56
    .restart local v8    # "v":F
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastValues:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    cmpl-float v10, v8, v10

    if-lez v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    int-to-float v1, v10

    .line 58
    .local v1, "direction":F
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastDirections:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    neg-float v10, v10

    cmpl-float v10, v1, v10

    if-nez v10, :cond_2

    .line 60
    const/4 v10, 0x0

    cmpl-float v10, v1, v10

    if-lez v10, :cond_6

    const/4 v2, 0x0

    .line 62
    .local v2, "extType":I
    :goto_2
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastExtremes:[[F

    aget-object v10, v10, v2

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastValues:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    aput v12, v10, v11

    .line 63
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastExtremes:[[F

    aget-object v10, v10, v2

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastExtremes:[[F

    rsub-int/lit8 v12, v2, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 66
    .local v0, "diff":F
    sget v10, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->SENSITIVITY:F

    cmpl-float v10, v0, v10

    if-lez v10, :cond_1

    .line 67
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastDiff:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v10, v11

    cmpl-float v10, v0, v10

    if-lez v10, :cond_7

    const/4 v4, 0x1

    .line 68
    .local v4, "isAlmostAsLargeAsPrevious":Z
    :goto_3
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastDiff:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    div-float v11, v0, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    const/4 v6, 0x1

    .line 69
    .local v6, "isPreviousLargeEnough":Z
    :goto_4
    iget v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastMatch:I

    rsub-int/lit8 v11, v2, 0x1

    if-eq v10, v11, :cond_9

    const/4 v5, 0x1

    .line 71
    .local v5, "isNotContra":Z
    :goto_5
    if-eqz v4, :cond_a

    if-eqz v6, :cond_a

    if-eqz v5, :cond_a

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 74
    sput-wide v10, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->end:J

    sget-wide v12, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->start:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x1f4

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 76
    sget v10, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->CURRENT_SETP:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->CURRENT_SETP:I

    .line 77
    iput v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastMatch:I

    .line 78
    sget-wide v10, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->end:J

    sput-wide v10, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->start:J

    .line 84
    .end local v4    # "isAlmostAsLargeAsPrevious":Z
    .end local v5    # "isNotContra":Z
    .end local v6    # "isPreviousLargeEnough":Z
    :cond_1
    :goto_6
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastDiff:[F

    const/4 v11, 0x0

    aput v0, v10, v11

    .line 86
    .end local v0    # "diff":F
    .end local v2    # "extType":I
    :cond_2
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastDirections:[F

    const/4 v11, 0x0

    aput v1, v10, v11

    .line 87
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastValues:[F

    const/4 v11, 0x0

    aput v8, v10, v11

    .line 90
    .end local v1    # "direction":F
    .end local v3    # "i":I
    .end local v8    # "v":F
    .end local v9    # "vSum":F
    :cond_3
    monitor-exit p0

    return-void

    .line 56
    .restart local v3    # "i":I
    .restart local v8    # "v":F
    .restart local v9    # "vSum":F
    :cond_4
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastValues:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    cmpg-float v10, v8, v10

    if-gez v10, :cond_5

    const/4 v10, -0x1

    goto/16 :goto_1

    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 60
    .restart local v1    # "direction":F
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 67
    .restart local v0    # "diff":F
    .restart local v2    # "extType":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 68
    .restart local v4    # "isAlmostAsLargeAsPrevious":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 69
    .restart local v6    # "isPreviousLargeEnough":Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_5

    .line 81
    .restart local v5    # "isNotContra":Z
    :cond_a
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepDetector;->mLastMatch:I

    goto :goto_6

    .line 90
    .end local v0    # "diff":F
    .end local v1    # "direction":F
    .end local v2    # "extType":I
    .end local v3    # "i":I
    .end local v4    # "isAlmostAsLargeAsPrevious":Z
    .end local v5    # "isNotContra":Z
    .end local v6    # "isPreviousLargeEnough":Z
    .end local v8    # "v":F
    .end local v9    # "vSum":F
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method
