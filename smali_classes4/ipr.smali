.class public final Lipr;
.super Ljava/lang/Object;
.source "SensorCollectWorker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public a:Landroid/hardware/Sensor;

.field public b:Landroid/hardware/SensorManager;

.field public c:Ljava/lang/String;

.field d:I

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;)V
    .locals 4
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "type"    # Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lipr;->e:Ljava/lang/Object;

    .line 1142
    const-string/jumbo v0, "[,,]"

    iput-object v0, p0, Lipr;->f:Ljava/lang/String;

    .line 1143
    const/4 v0, 0x0

    iput-object v0, p0, Lipr;->a:Landroid/hardware/Sensor;

    .line 51
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iput-object p1, p0, Lipr;->b:Landroid/hardware/SensorManager;

    .line 56
    invoke-virtual {p2}, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->getmSensorType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lipr;->a:Landroid/hardware/Sensor;

    .line 57
    invoke-virtual {p2}, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->getSensorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lipr;->c:Ljava/lang/String;

    .line 58
    invoke-virtual {p2}, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->getmSensorType()I

    move-result v0

    iput v0, p0, Lipr;->d:I

    .line 60
    iget-object v0, p0, Lipr;->a:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SensorCollectWorker: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->getSensorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \u6ce8\u518c\u5931\u8d25.\uff3b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SensorCollectWorker: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->getSensorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \u6ce8\u518c\u6210\u529f.\uff3b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lipr;->a:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, -0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lipr;->d:I

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    iget-object v2, p0, Lipr;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    :try_start_0
    iget-object v0, p0, Lipr;->f:Ljava/lang/String;

    .line 103
    .local v0, "retData":Ljava/lang/String;
    monitor-exit v2

    .line 104
    return-object v0

    .line 103
    .end local v0    # "retData":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 139
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 109
    if-eqz p1, :cond_2

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v5, :cond_2

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v2, "sensorDataItem":Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v5

    .line 113
    .local v1, "len":I
    const-string/jumbo v5, "["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 117
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v0

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v4, v5, v6

    .line 118
    .local v4, "value":F
    float-to-int v3, v4

    .line 119
    .local v3, "v":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v1, :cond_0

    .line 121
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v3    # "v":I
    .end local v4    # "value":F
    :cond_1
    const-string/jumbo v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0    # "i":I
    .end local v1    # "len":I
    :goto_1
    iget-object v6, p0, Lipr;->e:Ljava/lang/Object;

    monitor-enter v6

    .line 129
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lipr;->f:Ljava/lang/String;

    .line 130
    monitor-exit v6

    .line 134
    .end local v2    # "sensorDataItem":Ljava/lang/StringBuilder;
    :cond_2
    return-void

    .line 130
    .restart local v2    # "sensorDataItem":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :catch_0
    move-exception v5

    goto :goto_1
.end method
