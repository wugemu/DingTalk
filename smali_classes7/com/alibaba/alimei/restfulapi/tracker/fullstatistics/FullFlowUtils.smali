.class public Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/FullFlowUtils;
.super Ljava/lang/Object;
.source "FullFlowUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startStatistics(Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;)V
    .locals 1
    .param p0, "model"    # Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;

    .prologue
    .line 16
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getFullFlowTracker()Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/IFullFlowTracker;

    move-result-object v0

    .line 17
    .local v0, "fullFlowTracker":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/IFullFlowTracker;
    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p0}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/IFullFlowTracker;->startStatistics(Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;)V

    .line 20
    :cond_0
    return-void
.end method
