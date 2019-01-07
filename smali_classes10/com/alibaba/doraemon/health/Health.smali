.class public interface abstract Lcom/alibaba/doraemon/health/Health;
.super Ljava/lang/Object;
.source "Health.java"


# static fields
.field public static final HEALTH_ARTIFACT:Ljava/lang/String; = "HEALTH"

.field public static final TYPE_HEALTH_ALL:I = 0xff

.field public static final TYPE_HEALTH_MEMORY:I = 0x1

.field public static final TYPE_HEALTH_NETWORK:I = 0x4

.field public static final TYPE_HEALTH_POWER:I = 0x2

.field public static final TYPE_HEALTH_RESPONSE:I = 0x8


# virtual methods
.method public abstract addHealthWarner(Lcom/alibaba/doraemon/health/HealthWarner;)V
.end method

.method public abstract addMemoryDumper(Lcom/alibaba/doraemon/health/MemoryDumper;)V
.end method

.method public abstract addNetworkMonitor(Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;)V
.end method

.method public abstract addStatisticsWarner(Lcom/alibaba/doraemon/health/StatisticsWarner;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getBarrierPolicy()Lcom/alibaba/doraemon/health/BarrierPolicy;
.end method

.method public abstract getPowerFreqInfo()Lcom/alibaba/doraemon/health/HealthWarner$PowerFreqInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract init(Landroid/app/Application;)V
.end method

.method public abstract init(Landroid/app/Application;Landroid/content/Context;)V
.end method

.method public abstract removeHealthWarner(Lcom/alibaba/doraemon/health/HealthWarner;)V
.end method

.method public abstract removeStatisticsWarner(Lcom/alibaba/doraemon/health/StatisticsWarner;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract reportTraffic(Ljava/lang/String;ZZJJ)V
.end method

.method public abstract setBarrierPolicy(Lcom/alibaba/doraemon/health/BarrierPolicy;)V
.end method

.method public abstract setBarrierPolicy(Lcom/alibaba/doraemon/health/BarrierPolicy;[Ljava/lang/String;J)V
.end method

.method public abstract setHealthSettings(Lcom/alibaba/doraemon/health/HealthSettings;)V
.end method

.method public abstract startHealthStatistics()V
.end method

.method public abstract startRecord(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract stopHealthStatistics()V
.end method

.method public abstract stopRecord(ILcom/alibaba/doraemon/health/HealthDataCollector;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
