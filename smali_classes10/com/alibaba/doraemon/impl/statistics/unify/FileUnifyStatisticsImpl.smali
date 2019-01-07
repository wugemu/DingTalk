.class public abstract Lcom/alibaba/doraemon/impl/statistics/unify/FileUnifyStatisticsImpl;
.super Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;
.source "FileUnifyStatisticsImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;


# static fields
.field protected static final DIMENSION_KEY_BACKGROUND_CNT:Ljava/lang/String; = "background_cnt"

.field protected static final DIMENSION_KEY_IDC:Ljava/lang/String; = "idc"

.field protected static final DIMENSION_KEY_LWS_ACCESS:Ljava/lang/String; = "lws_access"

.field protected static final DIMENSION_KEY_ORG_ID:Ljava/lang/String; = "org_id"

.field protected static final DIMENSION_KEY_PORT:Ljava/lang/String; = "port"

.field protected static final DIMENSION_KEY_RESUME:Ljava/lang/String; = "resume"

.field protected static final DIMENSION_KEY_VPN:Ljava/lang/String; = "vpn"

.field protected static final MEASURE_KEY_BACKGROUND_TIME:Ljava/lang/String; = "background_time"

.field protected static final MEASURE_KEY_COST:Ljava/lang/String; = "cost"

.field protected static final MEASURE_KEY_FRAG:Ljava/lang/String; = "frag"

.field protected static final MEASURE_KEY_RETRY_COUNT:Ljava/lang/String; = "retry_count"

.field protected static final MEASURE_KEY_WAIT_TIME:Ljava/lang/String; = "wait_time"

.field protected static sIsRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/doraemon/impl/statistics/unify/FileUnifyStatisticsImpl;->sIsRegistered:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/statistics/unify/FileUnifyStatisticsImpl;->register()V

    .line 57
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
    .line 62
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/unify/FileUnifyStatisticsImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->enableStat(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 70
    check-cast v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;

    .line 72
    .local v1, "fileUnifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    sget-boolean v3, Lcom/alibaba/doraemon/impl/statistics/unify/FileUnifyStatisticsImpl;->sIsRegistered:Z

    if-nez v3, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/statistics/unify/FileUnifyStatisticsImpl;->register()V

    .line 76
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 77
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v3, "version"

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->version:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 78
    const-string/jumbo v3, "org_id"

    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 79
    const-string/jumbo v3, "idc"

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->idc:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 80
    const-string/jumbo v3, "lws_access"

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->lwsAccess:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 81
    const-string/jumbo v3, "port"

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->port:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 82
    const-string/jumbo v3, "vip_flag"

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->vipFlag:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 83
    const-string/jumbo v3, "biztype"

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 84
    const-string/jumbo v3, "subtype"

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->subType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 85
    const-string/jumbo v3, "mime"

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->mime:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 86
    const-string/jumbo v3, "channel_type"

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->channelType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 87
    const-string/jumbo v3, "result"

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->result:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 88
    const-string/jumbo v3, "statuscode"

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->statusCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 89
    const-string/jumbo v3, "err_code"

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 90
    const-string/jumbo v3, "background_cnt"

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->backgroundCnt:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 91
    const-string/jumbo v3, "resume"

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->resume:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 92
    const-string/jumbo v3, "vpn"

    iget-object v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->vpn:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 94
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    .line 95
    .local v2, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "rate"

    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->rate:D

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 96
    const-string/jumbo v3, "total_size"

    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->totalSize:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 97
    const-string/jumbo v3, "transfer_size"

    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->transferSize:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 98
    const-string/jumbo v3, "cost"

    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->cost:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 99
    const-string/jumbo v3, "background_time"

    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->backgroundTime:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 100
    const-string/jumbo v3, "wait_time"

    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->waitTime:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 101
    const-string/jumbo v3, "retry_count"

    iget v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->retryCount:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 102
    const-string/jumbo v3, "frag"

    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->frag:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 104
    sget-object v3, Lcom/alibaba/doraemon/impl/statistics/unify/FileUnifyStatisticsImpl;->sStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/statistics/unify/FileUnifyStatisticsImpl;->getModule()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/statistics/unify/FileUnifyStatisticsImpl;->getMonitorPoint()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0
.end method

.method protected abstract getModule()Ljava/lang/String;
.end method

.method protected abstract getMonitorPoint()Ljava/lang/String;
.end method

.method protected register()V
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
    const-string/jumbo v0, "org_id"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 114
    const-string/jumbo v0, "idc"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 115
    const-string/jumbo v0, "lws_access"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 116
    const-string/jumbo v0, "port"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 117
    const-string/jumbo v0, "vip_flag"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 118
    const-string/jumbo v0, "biztype"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 119
    const-string/jumbo v0, "subtype"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 120
    const-string/jumbo v0, "mime"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 121
    const-string/jumbo v0, "channel_type"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 122
    const-string/jumbo v0, "result"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 123
    const-string/jumbo v0, "statuscode"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 124
    const-string/jumbo v0, "err_code"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 125
    const-string/jumbo v0, "background_cnt"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 126
    const-string/jumbo v0, "resume"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 127
    const-string/jumbo v0, "vpn"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 130
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 131
    .local v4, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v0, "rate"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 132
    const-string/jumbo v0, "total_size"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 133
    const-string/jumbo v0, "transfer_size"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 134
    const-string/jumbo v0, "cost"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 135
    const-string/jumbo v0, "background_time"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 136
    const-string/jumbo v0, "wait_time"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 137
    const-string/jumbo v0, "retry_count"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 138
    const-string/jumbo v0, "frag"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 141
    sget-object v0, Lcom/alibaba/doraemon/impl/statistics/unify/FileUnifyStatisticsImpl;->sStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/statistics/unify/FileUnifyStatisticsImpl;->getModule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/statistics/unify/FileUnifyStatisticsImpl;->getMonitorPoint()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 143
    sput-boolean v5, Lcom/alibaba/doraemon/impl/statistics/unify/FileUnifyStatisticsImpl;->sIsRegistered:Z

    .line 144
    return-void
.end method
