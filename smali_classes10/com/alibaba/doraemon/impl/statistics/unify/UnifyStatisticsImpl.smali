.class public Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;
.super Ljava/lang/Object;
.source "UnifyStatisticsImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;


# static fields
.field protected static final DIMENSION_KEY_BIZ_TYPE:Ljava/lang/String; = "biztype"

.field protected static final DIMENSION_KEY_CHANNEL_TYPE:Ljava/lang/String; = "channel_type"

.field protected static final DIMENSION_KEY_ERROR_CODE:Ljava/lang/String; = "err_code"

.field protected static final DIMENSION_KEY_MIME:Ljava/lang/String; = "mime"

.field protected static final DIMENSION_KEY_RESULT:Ljava/lang/String; = "result"

.field protected static final DIMENSION_KEY_STATUS_CODE:Ljava/lang/String; = "statuscode"

.field protected static final DIMENSION_KEY_SUB_TYPE:Ljava/lang/String; = "subtype"

.field public static final DIMENSION_KEY_VERSION:Ljava/lang/String; = "version"

.field protected static final DIMENSION_KEY_VIP_FLAG:Ljava/lang/String; = "vip_flag"

.field protected static final MEASURE_KEY_RATE:Ljava/lang/String; = "rate"

.field public static final MEASURE_KEY_TOTAL_COST:Ljava/lang/String; = "cost"

.field protected static final MEASURE_KEY_TOTAL_SIZE:Ljava/lang/String; = "total_size"

.field protected static final MEASURE_KEY_TRANSFER_SIZE:Ljava/lang/String; = "transfer_size"

.field private static final MODULE:Ljava/lang/String; = "DDLOG"

.field private static final MONITOR_POINT:Ljava/lang/String; = "ALLIN"

.field protected static sStatistics:Lcom/alibaba/doraemon/statistics/Statistics;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    sput-object v0, Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;->sStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;->mIsRegistered:Z

    .line 69
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method


# virtual methods
.method public commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V
    .locals 6
    .param p1, "statisticsModel"    # Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->enableStat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    if-eqz p1, :cond_0

    .line 84
    iget-boolean v2, p0, Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;->mIsRegistered:Z

    if-nez v2, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;->register()V

    .line 88
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 89
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "version"

    iget-object v3, p1, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->version:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 90
    const-string/jumbo v2, "biztype"

    iget-object v3, p1, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 91
    const-string/jumbo v2, "subtype"

    iget-object v3, p1, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->subType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 92
    const-string/jumbo v2, "mime"

    iget-object v3, p1, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->mime:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 93
    const-string/jumbo v2, "vip_flag"

    iget-object v3, p1, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->vipFlag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 94
    const-string/jumbo v2, "channel_type"

    iget-object v3, p1, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->channelType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 95
    const-string/jumbo v2, "result"

    iget-object v3, p1, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->result:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 96
    const-string/jumbo v2, "statuscode"

    iget-object v3, p1, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->statusCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 97
    const-string/jumbo v2, "err_code"

    iget-object v3, p1, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 99
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 100
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "rate"

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->rate:D

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 101
    const-string/jumbo v2, "total_size"

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->totalSize:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 102
    const-string/jumbo v2, "transfer_size"

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->transferSize:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 103
    const-string/jumbo v2, "cost"

    iget-wide v4, p1, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->cost:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 105
    sget-object v2, Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;->sStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v3, "DDLOG"

    const-string/jumbo v4, "ALLIN"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0
.end method

.method public register()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 111
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 112
    .local v3, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v0, "version"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 113
    const-string/jumbo v0, "biztype"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 114
    const-string/jumbo v0, "subtype"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 115
    const-string/jumbo v0, "mime"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 116
    const-string/jumbo v0, "result"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 117
    const-string/jumbo v0, "statuscode"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 118
    const-string/jumbo v0, "err_code"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 121
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 122
    .local v4, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v0, "cost"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 125
    sget-object v0, Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;->sStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "DDLOG"

    const-string/jumbo v2, "ALLIN"

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 127
    iput-boolean v5, p0, Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;->mIsRegistered:Z

    .line 128
    return-void
.end method
