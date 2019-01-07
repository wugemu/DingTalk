.class public final Ljjz;
.super Ljava/lang/Object;
.source "ArtcProximitySensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final a:Lorg/webrtc/ThreadUtils$ThreadChecker;

.field public final b:Landroid/hardware/SensorManager;

.field public c:Landroid/hardware/Sensor;

.field public d:Z

.field private final e:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorStateListener"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Ljjz;->a:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Ljjz;->c:Landroid/hardware/Sensor;

    .line 45
    iput-boolean v3, p0, Ljjz;->d:Z

    .line 53
    const-string/jumbo v0, "ArtcProximitySensor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ArtcProximitySensor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljjy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iput-object p2, p0, Ljjz;->e:Ljava/lang/Runnable;

    .line 55
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Ljjz;->b:Landroid/hardware/SensorManager;

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Runnable;)Ljjz;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sensorStateListener"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    new-instance v0, Ljjz;

    invoke-direct {v0, p0, p1}, Ljjz;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Ljjz;->a:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 76
    const-string/jumbo v0, "ArtcProximitySensor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stop"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljjy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Ljjz;->c:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Ljjz;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ljjz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Ljjz;->a:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 92
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljjy;->a(Z)V

    .line 93
    if-nez p2, :cond_0

    .line 94
    const-string/jumbo v0, "ArtcProximitySensor"

    const-string/jumbo v2, "The values returned by this sensor cannot be trusted"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 92
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
    iget-object v1, p0, Ljjz;->a:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 101
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljjy;->a(Z)V

    .line 104
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v3

    .line 105
    .local v0, "distanceInCentimeters":F
    iget-object v1, p0, Ljjz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 106
    const-string/jumbo v1, "ArtcProximitySensor"

    const-string/jumbo v4, "Proximity sensor => NEAR state"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iput-boolean v2, p0, Ljjz;->d:Z

    .line 115
    :goto_1
    iget-object v1, p0, Ljjz;->e:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Ljjz;->e:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 119
    :cond_0
    const-string/jumbo v1, "ArtcProximitySensor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onSensorChanged"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljjy;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": accuracy="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", timestamp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", distance="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return-void

    .end local v0    # "distanceInCentimeters":F
    :cond_1
    move v1, v3

    .line 101
    goto :goto_0

    .line 109
    .restart local v0    # "distanceInCentimeters":F
    :cond_2
    const-string/jumbo v1, "ArtcProximitySensor"

    const-string/jumbo v2, "Proximity sensor => FAR state"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iput-boolean v3, p0, Ljjz;->d:Z

    goto :goto_1
.end method
