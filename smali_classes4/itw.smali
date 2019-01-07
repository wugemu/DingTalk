.class public final Litw;
.super Ljava/lang/Object;
.source "OneShotSensorEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Litx;

.field private c:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Litw;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Litx;)V
    .locals 0
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "sensorInfoRecorder"    # Litx;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Litw;->c:Landroid/hardware/SensorManager;

    .line 31
    iput-object p2, p0, Litw;->b:Litx;

    .line 32
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 61
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    sget-object v0, Litw;->a:Ljava/util/List;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Litw;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Litw;->c:Landroid/hardware/SensorManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 45
    :cond_0
    iget-object v0, p0, Litw;->b:Litx;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Litw;->b:Litx;

    invoke-interface {v0, p1}, Litx;->a(Landroid/hardware/SensorEvent;)V

    .line 48
    :cond_1
    sget-object v0, Litw;->a:Ljava/util/List;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    monitor-exit p0

    :goto_0
    return-void

    .line 50
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
