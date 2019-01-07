.class public final Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
.super Ljava/lang/Object;
.source "PowerStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SensorTimeInfo"
.end annotation


# instance fields
.field public sensor:Landroid/hardware/Sensor;

.field public start:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 469
    if-eqz p1, :cond_2

    instance-of v4, p1, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 470
    check-cast v3, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;

    .line 471
    .local v3, "sti":Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    const-string/jumbo v2, ""

    .line 472
    .local v2, "sensorStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;->sensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_0

    .line 473
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->toString()Ljava/lang/String;

    move-result-object v2

    .line 475
    :cond_0
    const-string/jumbo v0, ""

    .line 476
    .local v0, "otherSensorStr":Ljava/lang/String;
    iget-object v4, v3, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;->sensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_1

    .line 477
    iget-object v4, v3, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 485
    .end local v0    # "otherSensorStr":Ljava/lang/String;
    .end local v2    # "sensorStr":Ljava/lang/String;
    .end local v3    # "sti":Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 482
    .end local v1    # "ret":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;->sensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$SensorTimeInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
