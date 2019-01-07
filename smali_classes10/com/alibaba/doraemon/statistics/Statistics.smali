.class public interface abstract Lcom/alibaba/doraemon/statistics/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/statistics/Statistics$AtomStatistics;,
        Lcom/alibaba/doraemon/statistics/Statistics$FaultEvent;
    }
.end annotation


# static fields
.field public static final CLICK_CTRL_STATISTICS:I = 0x201

.field public static final CLICK_ITEM_STATISTICS:I = 0x202

.field public static final CUSTOM_STATISTIC:I = 0x6000

.field public static final PAGE_ENTER_STATISTICS:I = 0x2

.field public static final PAGE_LEAVE_STATISTICS:I = 0x3

.field public static final PAGE_PATH_STATISTICS:I = 0x100

.field public static final PAGE_SWITCH_PERF_STATISTICS:I = 0x1

.field public static final STATISTICS_ARTIFACT:Ljava/lang/String; = "STATISTICS"

.field public static final UNIFY_STATISTICS_TYPE_DEFAULT:I = 0x0

.field public static final UNIFY_STATISTICS_TYPE_FILE_DOWN_LOAD:I = 0x3

.field public static final UNIFY_STATISTICS_TYPE_FILE_UPLOAD:I = 0x2

.field public static final UNIFY_STATISTICS_TYPE_FULL_FLOW:I = 0x1

.field public static final USER_LOGIN_FAIL_STATISTICS:I = 0x303

.field public static final USER_LOGIN_STATISTICS:I = 0x301

.field public static final USER_REGISTER_STATISTICS:I = 0x302


# virtual methods
.method public abstract commit(Ljava/lang/String;Ljava/lang/String;D)V
.end method

.method public abstract commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V
.end method

.method public abstract commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
.end method

.method public abstract commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V
.end method

.method public abstract commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
.end method

.method public abstract commitFaultEvent(I)V
.end method

.method public abstract commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract commitRateSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract commitStatEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ctrlClicked(Ljava/lang/String;)V
.end method

.method public abstract ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract customEvent(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract endOffLineDurationStatistics(Ljava/lang/String;)V
.end method

.method public abstract endOffLineDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract endOffLineSubDurationStatistics([Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract enterPage(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract enterPage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract exposureManual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract exposureManual(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAtomStatistics()Lcom/alibaba/doraemon/statistics/Statistics$AtomStatistics;
.end method

.method public abstract getDebugStatistics2Log()Z
.end method

.method public abstract getUid()Ljava/lang/String;
.end method

.method public abstract getUnifyStatistics(I)Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;
.end method

.method public abstract initMotu(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract initMotu(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract initTBS(Landroid/app/Application;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract itemClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract leavePage(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract leavePage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V
.end method

.method public abstract register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V
.end method

.method public abstract register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V
.end method

.method public abstract registerMeasure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerStatEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerStatisticsListener(Lcom/alibaba/doraemon/statistics/StatisticsListener;)V
.end method

.method public abstract removeOffLineDurationStatistics(Ljava/lang/String;)V
.end method

.method public abstract reportOffLineDurationStatistics(Ljava/lang/String;J)V
.end method

.method public abstract setDebugStatistics2Log(Z)V
.end method

.method public abstract setUid(Ljava/lang/String;)V
.end method

.method public abstract startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startOffLineDurationStatistics(Ljava/lang/String;)V
.end method

.method public abstract startOffLineDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startOffLineSubDurationStatistics([Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract uninitTBS()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract unregisterStatisticsListener(Lcom/alibaba/doraemon/statistics/StatisticsListener;)V
.end method

.method public abstract userLogin(Ljava/lang/String;)V
.end method

.method public abstract userLoginFail(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract userLoginFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract userRegister(Ljava/lang/String;)V
.end method
