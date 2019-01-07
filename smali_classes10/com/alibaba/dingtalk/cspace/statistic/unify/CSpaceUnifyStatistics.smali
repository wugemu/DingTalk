.class public Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;
.super Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;
.source "CSpaceUnifyStatistics.java"


# static fields
.field private static volatile b:Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgoy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/statistics/unify/UnifyStatisticsImpl;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->a:Ljava/util/Map;

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->register()V

    .line 93
    return-void
.end method

.method public static e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;
    .locals 3

    .prologue
    .line 79
    sget-object v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->b:Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    if-nez v0, :cond_1

    .line 80
    const-class v1, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->b:Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->b:Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    .line 84
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    sget-object v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->b:Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "bizType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgoy;

    .line 123
    .local v0, "statisticsModel":Lgoy;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lgoy;->a()Lgoy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 129
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 102
    .local v0, "statisticsModel":Lgoy;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "statisticsModel":Lgoy;
    check-cast v0, Lgoy;

    .line 106
    .restart local v0    # "statisticsModel":Lgoy;
    :cond_1
    if-eqz v0, :cond_2

    .line 1053
    const-string/jumbo v1, ""

    iput-object v1, v0, Lgoy;->version:Ljava/lang/String;

    .line 1054
    const-string/jumbo v1, ""

    iput-object v1, v0, Lgoy;->bizType:Ljava/lang/String;

    .line 1055
    const-string/jumbo v1, ""

    iput-object v1, v0, Lgoy;->subType:Ljava/lang/String;

    .line 1056
    const-string/jumbo v1, ""

    iput-object v1, v0, Lgoy;->mime:Ljava/lang/String;

    .line 1057
    iput-wide v2, v0, Lgoy;->startTime:J

    .line 1058
    const-string/jumbo v1, ""

    iput-object v1, v0, Lgoy;->result:Ljava/lang/String;

    .line 1059
    iput-wide v2, v0, Lgoy;->cost:J

    .line 1060
    const-string/jumbo v1, "0"

    iput-object v1, v0, Lgoy;->statusCode:Ljava/lang/String;

    .line 1061
    const-string/jumbo v1, "0"

    iput-object v1, v0, Lgoy;->errorCode:Ljava/lang/String;

    .line 1062
    const-string/jumbo v1, ""

    iput-object v1, v0, Lgoy;->a:Ljava/lang/String;

    .line 1063
    const-string/jumbo v1, ""

    iput-object v1, v0, Lgoy;->b:Ljava/lang/String;

    .line 1064
    const-string/jumbo v1, ""

    iput-object v1, v0, Lgoy;->c:Ljava/lang/String;

    .line 1065
    const-string/jumbo v1, ""

    iput-object v1, v0, Lgoy;->d:Ljava/lang/String;

    .line 113
    :goto_1
    invoke-virtual {v0, p1, p2}, Lgoy;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    new-instance v0, Lgoy;

    .end local v0    # "statisticsModel":Lgoy;
    invoke-direct {v0}, Lgoy;-><init>()V

    .line 110
    .restart local v0    # "statisticsModel":Lgoy;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "stepErrorCode"    # Ljava/lang/String;
    .param p3, "serverErrorCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgoy;

    .line 139
    .local v0, "statisticsModel":Lgoy;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p2, p3}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 145
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .param p1, "bizType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgoy;

    .line 155
    .local v0, "statisticsModel":Lgoy;
    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V
    .locals 6
    .param p1, "statisticsModel"    # Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/statistics/StatisticsImpl;->enableStat(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    if-eqz p1, :cond_0

    instance-of v3, p1, Lgoy;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 182
    check-cast v0, Lgoy;

    .line 184
    .local v0, "cspaceUnifyStatisticsModel":Lgoy;
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->mIsRegistered:Z

    if-nez v3, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->register()V

    .line 188
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 189
    .local v1, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v3, "dp_ver"

    iget-object v4, v0, Lgoy;->version:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 190
    const-string/jumbo v3, "dp_biztype"

    iget-object v4, v0, Lgoy;->bizType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 191
    const-string/jumbo v3, "dp_subtype"

    iget-object v4, v0, Lgoy;->subType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 192
    const-string/jumbo v3, "dp_mime"

    iget-object v4, v0, Lgoy;->mime:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 193
    const-string/jumbo v3, "dp_vip"

    iget-object v4, v0, Lgoy;->vipFlag:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 194
    const-string/jumbo v3, "dp_channel"

    iget-object v4, v0, Lgoy;->channelType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 195
    const-string/jumbo v3, "dp_result"

    iget-object v4, v0, Lgoy;->result:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 196
    const-string/jumbo v3, "dp_err_code"

    iget-object v4, v0, Lgoy;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 197
    const-string/jumbo v3, "dp_stat_code"

    iget-object v4, v0, Lgoy;->statusCode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 198
    const-string/jumbo v3, "dp_res1"

    iget-object v4, v0, Lgoy;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 199
    const-string/jumbo v3, "dp_res2"

    iget-object v4, v0, Lgoy;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 200
    const-string/jumbo v3, "dp_res3"

    iget-object v4, v0, Lgoy;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 201
    const-string/jumbo v3, "dp_res4"

    iget-object v4, v0, Lgoy;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 203
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    .line 204
    .local v2, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "dp_rate"

    iget-wide v4, v0, Lgoy;->rate:D

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 205
    const-string/jumbo v3, "dp_total_size"

    iget-wide v4, v0, Lgoy;->totalSize:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 206
    const-string/jumbo v3, "dp_xfer_size"

    iget-wide v4, v0, Lgoy;->transferSize:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 207
    const-string/jumbo v3, "dp_cost"

    iget-wide v4, v0, Lgoy;->cost:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 220
    sget-object v3, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->sStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v4, "unify"

    const-string/jumbo v5, "cspace"

    invoke-interface {v3, v4, v5, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0
.end method

.method public final d(Ljava/lang/String;)Lgoy;
    .locals 1
    .param p1, "bizType"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgoy;

    goto :goto_0
.end method

.method protected register()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 227
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 228
    .local v3, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v0, "dp_ver"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 229
    const-string/jumbo v0, "dp_biztype"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 230
    const-string/jumbo v0, "dp_subtype"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 231
    const-string/jumbo v0, "dp_vip"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 232
    const-string/jumbo v0, "dp_mime"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 233
    const-string/jumbo v0, "dp_channel"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 234
    const-string/jumbo v0, "dp_result"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 235
    const-string/jumbo v0, "dp_err_code"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 236
    const-string/jumbo v0, "dp_stat_code"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 237
    const-string/jumbo v0, "dp_res1"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 238
    const-string/jumbo v0, "dp_res2"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 239
    const-string/jumbo v0, "dp_res3"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 240
    const-string/jumbo v0, "dp_res4"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 243
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 244
    .local v4, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v0, "dp_rate"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 245
    const-string/jumbo v0, "dp_total_size"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 246
    const-string/jumbo v0, "dp_xfer_size"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 247
    const-string/jumbo v0, "dp_cost"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 250
    sget-object v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->sStatistics:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "unify"

    const-string/jumbo v2, "cspace"

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 252
    iput-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->mIsRegistered:Z

    .line 253
    return-void
.end method
