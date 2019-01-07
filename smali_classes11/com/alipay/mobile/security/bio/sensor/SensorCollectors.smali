.class public Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;
.super Ljava/lang/Object;
.source "SensorCollectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;
    }
.end annotation


# instance fields
.field a:[Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lipr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->ACCELEROMETER:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->MAGNETIC:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;->GYROSCOPE:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->a:[Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->b:Ljava/util/List;

    .line 52
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->reset(Landroid/content/Context;)V

    .line 53
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipr;

    .line 1075
    .local v0, "woker":Lipr;
    iget-object v2, v0, Lipr;->a:Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lipr;->b:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_0

    .line 1076
    iget-object v2, v0, Lipr;->b:Landroid/hardware/SensorManager;

    iget-object v3, v0, Lipr;->a:Landroid/hardware/Sensor;

    invoke-virtual {v2, v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1077
    const/4 v2, 0x0

    iput-object v2, v0, Lipr;->a:Landroid/hardware/Sensor;

    .line 1078
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SensorCollectWorker: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lipr;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u505c\u6b62\u91c7\u96c6\u6570\u636e.\uff3b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v0    # "woker":Lipr;
    :cond_1
    return-void
.end method

.method public getData()Lcom/alipay/mobile/security/bio/sensor/SensorData;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    new-instance v1, Lcom/alipay/mobile/security/bio/sensor/SensorData;

    invoke-direct {v1}, Lcom/alipay/mobile/security/bio/sensor/SensorData;-><init>()V

    .line 86
    .local v1, "sensorDataItem":Lcom/alipay/mobile/security/bio/sensor/SensorData;
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->b:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 88
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lipr;

    .line 89
    .local v2, "woker":Lipr;
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2}, Lipr;->b()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {v2}, Lipr;->a()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 92
    iput-object v0, v1, Lcom/alipay/mobile/security/bio/sensor/SensorData;->a:Ljava/lang/String;

    .line 94
    :cond_1
    invoke-virtual {v2}, Lipr;->a()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 95
    iput-object v0, v1, Lcom/alipay/mobile/security/bio/sensor/SensorData;->c:Ljava/lang/String;

    .line 97
    :cond_2
    invoke-virtual {v2}, Lipr;->a()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 98
    iput-object v0, v1, Lcom/alipay/mobile/security/bio/sensor/SensorData;->b:Ljava/lang/String;

    goto :goto_0

    .line 105
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "woker":Lipr;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getData:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/sensor/SensorData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 106
    return-object v1
.end method

.method public reset(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    if-nez p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 62
    const-string/jumbo v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 63
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->a:[Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 64
    .local v2, "sensorType":Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->b:Ljava/util/List;

    new-instance v7, Lipr;

    invoke-direct {v7, v1, v2}, Lipr;-><init>(Landroid/hardware/SensorManager;Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "sensorManager":Landroid/hardware/SensorManager;
    .end local v2    # "sensorType":Lcom/alipay/mobile/security/bio/sensor/SensorCollectors$SensorType;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startListening()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipr;

    .line 1068
    .local v0, "woker":Lipr;
    iget-object v2, v0, Lipr;->a:Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lipr;->b:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_0

    .line 1069
    iget-object v2, v0, Lipr;->b:Landroid/hardware/SensorManager;

    iget-object v3, v0, Lipr;->a:Landroid/hardware/Sensor;

    const v4, 0xc350

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1070
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SensorCollectWorker: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lipr;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u5f00\u59cb\u91c7\u96c6\u6570\u636e.\uff3b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v0    # "woker":Lipr;
    :cond_1
    return-void
.end method
