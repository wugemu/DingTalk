.class public interface abstract Lcom/alibaba/doraemon/health/monitor/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# static fields
.field public static final MONITOR_ARTIFACT:Ljava/lang/String; = "MONITOR"

.field public static final TYPE_SYSTEMRES_ALARM:I = 0x2

.field public static final TYPE_SYSTEMRES_ALL:I = 0xff

.field public static final TYPE_SYSTEMRES_SENSOR:I = 0x1

.field public static final TYPE_SYSTEMRES_WACKLOCK:I = 0x4


# virtual methods
.method public abstract addSystemResListener(ILcom/alibaba/doraemon/health/monitor/SystemResListener;)V
.end method

.method public abstract clearSystemResStatistics(I)V
.end method

.method public abstract getSystemResStatistics(I)Lcom/alibaba/doraemon/health/monitor/CallStatistics;
.end method

.method public abstract removeSystemResListener(ILcom/alibaba/doraemon/health/monitor/SystemResListener;)V
.end method
