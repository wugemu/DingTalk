.class public abstract Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;
.super Ljava/lang/Object;
.source "BaseServiceClient.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;


# instance fields
.field protected mDimensionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

.field protected mMeasureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field protected mStartMillis:J

.field protected mSuccess:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mSuccess:Z

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mDimensionMap:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mMeasureMap:Ljava/util/HashMap;

    .line 45
    new-instance v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    .line 46
    return-void
.end method


# virtual methods
.method protected commitStatics()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 93
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mMeasureMap:Ljava/util/HashMap;

    const-string/jumbo v3, "success_count"

    iget-boolean v1, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mSuccess:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-boolean v1, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mSuccess:Z

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mDimensionMap:Ljava/util/HashMap;

    const-string/jumbo v2, "content_length"

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->getContentLenth()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/alibaba/alimei/restfulapi/utils/CommonUtils;->getSizeRange(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->getContentLenth()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->totalSize:J

    .line 97
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    iget-wide v2, v2, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->totalSize:J

    iput-wide v2, v1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->transferSize:J

    .line 98
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->getSubStep(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    move-result-object v0

    .line 99
    .local v0, "rpcSubSetp":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    iget-wide v2, v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    const-wide/16 v2, 0x0

    :goto_1
    iput-wide v2, v1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->rate:D

    .line 104
    .end local v0    # "rpcSubSetp":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    :cond_0
    const-string/jumbo v1, "CMail"

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->getMp()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mDimensionMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mMeasureMap:Ljava/util/HashMap;

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/alimei/restfulapi/tracker/RpcTrackerWriter;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 105
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/FullFlowUtils;->startStatistics(Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;)V

    .line 106
    return-void

    .line 93
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 100
    .restart local v0    # "rpcSubSetp":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    iget-wide v2, v2, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->transferSize:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    iget-wide v4, v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    goto :goto_1
.end method

.method protected endHandleStatics()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mMeasureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "handle_cost"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mStartMillis:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "2"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->generalSuccessModel()Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    .line 90
    return-void
.end method

.method protected endNetStatics()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mMeasureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "rpc_cost"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mStartMillis:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mStartMillis:J

    .line 75
    return-void
.end method

.method public abstract getContentLenth()J
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getMp()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method protected setHandleError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mMeasureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "handle_cost"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mStartMillis:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mDimensionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "errCode"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mDimensionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "errMsg"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "2"

    const-string/jumbo v2, "N"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "2"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mSuccess:Z

    .line 84
    return-void
.end method

.method protected setRpcError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mMeasureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "rpc_cost"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mStartMillis:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mDimensionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "errCode"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mDimensionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "errMsg"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "N"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mSuccess:Z

    .line 68
    return-void
.end method

.method protected startStatics()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mStartMillis:J

    .line 53
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mMeasureMap:Ljava/util/HashMap;

    const-string/jumbo v1, "rpc_cost"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mDimensionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "path"

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "cmail_rpc"

    const-string/jumbo v2, "4.5.10"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ":"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->getMethod()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->reservation:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->mFullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/spi/BaseServiceClient;->getMp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->channelType:Ljava/lang/String;

    .line 59
    return-void
.end method
