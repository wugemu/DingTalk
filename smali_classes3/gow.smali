.class public final Lgow;
.super Lgov;
.source "PreviewFullFlowStatistics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lgov;-><init>()V

    .line 36
    return-void
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 4
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 62
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_preview"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->getUnifyStatisticsModel(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;

    move-result-object v0

    .line 63
    .local v0, "unifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;
    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-static {}, Lgot;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    :goto_1
    iput-object v1, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->vipFlag:Ljava/lang/String;

    .line 69
    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgpx;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    const-string/jumbo v1, "video"

    iput-object v1, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->channelType:Ljava/lang/String;

    .line 81
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lgpx;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->mime:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->totalSize:J

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->transferSize:J

    goto :goto_0

    .line 67
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgpx;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    const-string/jumbo v1, "audio"

    iput-object v1, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->channelType:Ljava/lang/String;

    goto :goto_2

    .line 78
    :cond_4
    const-string/jumbo v1, "file"

    iput-object v1, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->channelType:Ljava/lang/String;

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)V
    .locals 9
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x0

    .line 99
    .local v0, "dataJson":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "dataJson":Lorg/json/JSONObject;
    .local v1, "dataJson":Lorg/json/JSONObject;
    move-object v0, v1

    .line 104
    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .restart local v0    # "dataJson":Lorg/json/JSONObject;
    :goto_1
    if-eqz v0, :cond_0

    .line 108
    const-string/jumbo v6, "success"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "result":Ljava/lang/String;
    const-string/jumbo v6, "errorCode"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "errorCode":Ljava/lang/String;
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "1000"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v6

    const-string/jumbo v7, "cspace_preview"

    const-string/jumbo v8, "6"

    invoke-interface {v6, v7, v8}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->endSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v6

    const-string/jumbo v7, "cspace_preview"

    const-string/jumbo v8, "7"

    invoke-interface {v6, v7, v8}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->startSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v3    # "errorCode":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 115
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v3    # "errorCode":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 117
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v6

    const-string/jumbo v7, "cspace_preview"

    const-string/jumbo v8, "7"

    invoke-interface {v6, v7, v8}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->endSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v6

    const-string/jumbo v7, "cspace_preview"

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitSuccess(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->c()V

    goto :goto_0

    .line 120
    :cond_3
    const-string/jumbo v6, "false"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 124
    const-string/jumbo v6, "20"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 125
    const-string/jumbo v5, "6"

    .line 129
    .local v5, "step":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v6

    const-string/jumbo v7, "cspace_preview"

    invoke-interface {v6, v7, v5, v3, v8}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v6

    invoke-virtual {v6, v3, v8}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    .end local v5    # "step":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "7"

    .restart local v5    # "step":Ljava/lang/String;
    goto :goto_2
.end method
