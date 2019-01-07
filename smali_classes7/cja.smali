.class public final Lcja;
.super Ljava/lang/Object;
.source "IpcStat.java"


# static fields
.field private static final a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcja;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 22
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "ipc"

    const-string/jumbo v2, "ipc_time"

    const-string/jumbo v3, "measure_ipc_time"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->registerMeasure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "ipc"

    const-string/jumbo v2, "connectTime"

    const-string/jumbo v3, "measure_connect_time"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->registerMeasure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static a(J)V
    .locals 8
    .param p0, "start"    # J

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, p0

    .line 45
    .local v2, "time":J
    invoke-static {}, Lcja;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x64

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 46
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    .line 47
    .local v0, "measure":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v1, "measure_ipc_time"

    long-to-double v4, v2

    invoke-virtual {v0, v1, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 48
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v4, "ipc"

    const-string/jumbo v5, "ipc_time"

    const/4 v6, 0x0

    invoke-interface {v1, v4, v5, v6, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 50
    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "ipc"

    const-string/jumbo v2, "ipc_sp_success_rate"

    const-string/jumbo v3, "ipc_sp_fail"

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public static c()V
    .locals 6

    .prologue
    .line 30
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "ipc"

    const-string/jumbo v2, "ipc_failed_count"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    .line 31
    return-void
.end method

.method public static d()V
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "ipc"

    const-string/jumbo v2, "ipc_sp_success_rate"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 54
    sget-object v1, Lcja;->a:Ljava/util/Random;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
