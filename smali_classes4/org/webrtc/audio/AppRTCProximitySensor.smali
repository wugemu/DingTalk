.class public Lorg/webrtc/audio/AppRTCProximitySensor;
.super Ljava/lang/Object;
.source "AppRTCProximitySensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppRTCProximitySensor"


# instance fields
.field private lastStateReportIsNear:Z

.field private final onSensorStateListener:Ljava/lang/Runnable;

.field private proximitySensor:Landroid/hardware/Sensor;

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private final threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorStateListener"    # Ljava/lang/Runnable;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->lastStateReportIsNear:Z

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AppRTCProximitySensor"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/utils/AppRTCUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iput-object p2, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->onSensorStateListener:Ljava/lang/Runnable;

    .line 55
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 56
    return-void
.end method

.method static create(Landroid/content/Context;Ljava/lang/Runnable;)Lorg/webrtc/audio/AppRTCProximitySensor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sensorStateListener"    # Ljava/lang/Runnable;

    .prologue
    .line 48
    new-instance v0, Lorg/webrtc/audio/AppRTCProximitySensor;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/audio/AppRTCProximitySensor;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private initDefaultSensor()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 130
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 138
    :goto_0
    return v0

    .line 133
    :cond_0
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    .line 134
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    .line 135
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    :cond_1
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCProximitySensor;->logProximitySensorInfo()V

    goto :goto_0
.end method

.method private logProximitySensorInfo()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 143
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Proximity sensor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "info":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string/jumbo v1, ", vendor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string/jumbo v1, ", power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getPower()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 150
    const-string/jumbo v1, ", resolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getResolution()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 151
    const-string/jumbo v1, ", max range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 152
    const-string/jumbo v1, ", min delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_2

    .line 155
    const-string/jumbo v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 159
    const-string/jumbo v1, ", max delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaxDelay()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const-string/jumbo v1, ", reporting mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v1, ", isWakeUpSensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 92
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/webrtc/utils/AppRTCUtils;->assertIsTrue(Z)V

    .line 93
    if-nez p2, :cond_0

    .line 94
    const-string/jumbo v0, "AppRTCProximitySensor"

    const-string/jumbo v1, "The values returned by this sensor cannot be trusted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 100
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 101
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lorg/webrtc/utils/AppRTCUtils;->assertIsTrue(Z)V

    .line 104
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v3

    .line 105
    .local v0, "distanceInCentimeters":F
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 107
    iput-boolean v2, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->lastStateReportIsNear:Z

    .line 115
    :goto_1
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->onSensorStateListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->onSensorStateListener:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSensorChanged"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/utils/AppRTCUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", distance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 122
    return-void

    .end local v0    # "distanceInCentimeters":F
    :cond_1
    move v1, v3

    .line 101
    goto :goto_0

    .line 110
    .restart local v0    # "distanceInCentimeters":F
    :cond_2
    iput-boolean v3, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->lastStateReportIsNear:Z

    goto :goto_1
.end method

.method public sensorReportsNearState()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 86
    iget-boolean v0, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->lastStateReportIsNear:Z

    return v0
.end method

.method public start()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/utils/AppRTCUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCProximitySensor;->initDefaultSensor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 70
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stop"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/utils/AppRTCUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/webrtc/audio/AppRTCProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method
