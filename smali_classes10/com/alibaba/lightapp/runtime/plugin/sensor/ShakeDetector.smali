.class public Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;
.super Ljava/lang/Object;
.source "ShakeDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;,
        Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;,
        Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;,
        Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Listener;
    }
.end annotation


# instance fields
.field private accelerometer:Landroid/hardware/Sensor;

.field private final listener:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Listener;

.field private mContext:Landroid/content/Context;

.field private mDefaultShakeInterval:I

.field private mHandler:Landroid/os/Handler;

.field private mHearShake:Z

.field private mShakeThreshold:I

.field private final queue:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Listener;Landroid/content/Context;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Listener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->mHandler:Landroid/os/Handler;

    .line 22
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->mShakeThreshold:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->mDefaultShakeInterval:I

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->mHearShake:Z

    .line 32
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->queue:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;

    .line 41
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->listener:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Listener;

    .line 42
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->mContext:Landroid/content/Context;

    .line 43
    const-string/jumbo v0, "sensor"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    .line 44
    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->mHearShake:Z

    return p1
.end method

.method private isAccelerating(Landroid/hardware/SensorEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 112
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v7, v6

    .line 113
    .local v0, "ax":F
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v7, v3

    .line 114
    .local v1, "ay":F
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v2, v7, v8

    .line 117
    .local v2, "az":F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float/2addr v7, v8

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    float-to-double v4, v7

    .line 118
    .local v4, "magnitudeSquared":D
    iget v7, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->mShakeThreshold:I

    iget v8, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->mShakeThreshold:I

    mul-int/2addr v7, v8

    int-to-double v8, v7

    cmpl-double v7, v4, v8

    if-lez v7, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v6

    goto :goto_0
.end method

.method private resetHearShakeTag()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;)V

    iget v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->mDefaultShakeInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 236
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->isAccelerating(Landroid/hardware/SensorEvent;)Z

    move-result v0

    .line 85
    .local v0, "accelerating":Z
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 86
    .local v2, "timestamp":J
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->queue:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->add(JZ)V

    .line 87
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->queue:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->isShaking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->queue:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SampleQueue;->clear()V

    .line 89
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->mHearShake:Z

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->mHearShake:Z

    .line 91
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->listener:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Listener;

    invoke-interface {v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Listener;->hearShake()V

    .line 92
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->resetHearShakeTag()V

    .line 95
    :cond_0
    return-void
.end method

.method public setShakeInterval(I)V
    .locals 0
    .param p1, "shakeInterval"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->mDefaultShakeInterval:I

    .line 50
    return-void
.end method

.method public setShakeThreshold(I)V
    .locals 0
    .param p1, "shakeThreshold"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->mShakeThreshold:I

    .line 47
    return-void
.end method

.method public start()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    move v0, v1

    .line 68
    :goto_0
    return v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 77
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    .line 78
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    .line 80
    :cond_0
    return-void
.end method
