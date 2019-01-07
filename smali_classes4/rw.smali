.class public final Lrw;
.super Ljava/lang/Object;
.source "FullFlowTrackerImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/IFullFlowTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final startStatistics(Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;)V
    .locals 14
    .param p1, "model"    # Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 17
    if-nez p1, :cond_0

    .line 27
    .end local p1    # "model":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;
    :goto_0
    return-void

    .line 1022
    .restart local p1    # "model":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;
    :cond_0
    if-nez p1, :cond_1

    .line 1023
    const/4 v1, 0x0

    .line 23
    .end local p1    # "model":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;
    .local v1, "unifyModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;
    :goto_1
    const-string/jumbo v3, "STATISTICS"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 24
    .local v0, "sStatistics":Lcom/alibaba/doraemon/statistics/Statistics;
    invoke-interface {v0, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->getUnifyStatistics(I)Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;

    move-result-object v2

    .line 26
    .local v2, "unifyStatistics":Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;
    invoke-interface {v2, v1}, Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    goto :goto_0

    .line 1027
    .end local v0    # "sStatistics":Lcom/alibaba/doraemon/statistics/Statistics;
    .end local v1    # "unifyModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;
    .end local v2    # "unifyStatistics":Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;
    .restart local p1    # "model":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;
    :cond_1
    const/4 v3, 0x0

    .line 1028
    instance-of v4, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    if-eqz v4, :cond_3

    .line 1029
    new-instance v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-direct {v4}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;-><init>()V

    move v3, v7

    .line 1035
    :goto_2
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->version:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->version:Ljava/lang/String;

    .line 1036
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->bizType:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->bizType:Ljava/lang/String;

    .line 1037
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->subType:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->subType:Ljava/lang/String;

    .line 1038
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->vipFlag:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->vipFlag:Ljava/lang/String;

    .line 1039
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->reservation:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->mime:Ljava/lang/String;

    .line 1040
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->channelType:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->channelType:Ljava/lang/String;

    .line 1041
    iget-wide v8, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->startTime:J

    iput-wide v8, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->startTime:J

    .line 1042
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->result:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->result:Ljava/lang/String;

    .line 1043
    iget-wide v8, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->cost:J

    iput-wide v8, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->cost:J

    .line 1044
    iget-wide v8, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->rate:D

    iput-wide v8, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->rate:D

    .line 1045
    iget-wide v8, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->totalSize:J

    iput-wide v8, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->totalSize:J

    .line 1046
    iget-wide v8, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->transferSize:J

    iput-wide v8, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->transferSize:J

    .line 1047
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->statusCode:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->statusCode:Ljava/lang/String;

    .line 1048
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->errorCode:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->errorCode:Ljava/lang/String;

    .line 1050
    if-eqz v3, :cond_4

    move-object v3, v4

    .line 1051
    check-cast v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    .line 1052
    check-cast p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    .line 1054
    .end local p1    # "model":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->subFlowMap:Ljava/util/Map;

    if-eqz v5, :cond_4

    .line 1055
    iget-object v5, p1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->subFlowMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1056
    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1057
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1058
    if-eqz v5, :cond_2

    .line 1061
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1062
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 1063
    if-eqz v5, :cond_2

    .line 1066
    iget-object v9, v5, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->step:Ljava/lang/String;

    .line 1067
    new-instance v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v3, v9}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;-><init>(Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;Ljava/lang/String;)V

    .line 1068
    iget-wide v12, v5, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    iput-wide v12, v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    .line 1069
    iget-object v9, v5, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    iput-object v9, v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    .line 1070
    iget-wide v12, v5, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->startTime:J

    iput-wide v12, v10, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->startTime:J

    .line 1072
    iget-object v5, v3, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->subFlowMap:Ljava/util/Map;

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1032
    .restart local p1    # "model":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;
    :cond_3
    new-instance v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;

    invoke-direct {v4}, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;-><init>()V

    goto/16 :goto_2

    .end local p1    # "model":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;
    :cond_4
    move-object v1, v4

    .line 1077
    goto/16 :goto_1
.end method
