.class public Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;
.super Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;
.source "AlimeiFullFlowUnifyStatisticsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    }
.end annotation


# instance fields
.field public errorStep:Ljava/lang/String;

.field public subFlowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;-><init>()V

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->errorStep:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->subFlowMap:Ljava/util/Map;

    .line 19
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 76
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->version:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->bizType:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->subType:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->reservation:Ljava/lang/String;

    .line 80
    iput-wide v2, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startTime:J

    .line 81
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->result:Ljava/lang/String;

    .line 82
    iput-wide v2, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->cost:J

    .line 83
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->statusCode:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->errorCode:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->errorStep:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->subFlowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    return-void
.end method

.method public endSubFlow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "step"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->subFlowMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 43
    .local v0, "subFlow":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    if-eqz v0, :cond_0

    .line 44
    iput-object p2, v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->startTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    .line 48
    .end local v0    # "subFlow":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    :cond_0
    return-void
.end method

.method public generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;
    .locals 4
    .param p1, "errorStep"    # Ljava/lang/String;
    .param p2, "stepErrorCode"    # Ljava/lang/String;
    .param p3, "serverErrorCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 66
    const-string/jumbo v0, "N"

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->result:Ljava/lang/String;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->cost:J

    .line 68
    if-nez p1, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->errorStep:Ljava/lang/String;

    .line 69
    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    .end local p2    # "stepErrorCode":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->errorCode:Ljava/lang/String;

    .line 70
    if-nez p3, :cond_1

    const-string/jumbo p3, ""

    .end local p3    # "serverErrorCode":Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->statusCode:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "N"

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object p0

    .restart local p2    # "stepErrorCode":Ljava/lang/String;
    .restart local p3    # "serverErrorCode":Ljava/lang/String;
    :cond_2
    move-object v0, p1

    .line 68
    goto :goto_0
.end method

.method public generalSuccessModel()Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    const-string/jumbo v0, "Y"

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->result:Ljava/lang/String;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->cost:J

    .line 61
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->cost:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->rate:D

    .line 62
    return-object p0

    .line 61
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->transferSize:J

    iget-wide v2, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->cost:J

    div-long/2addr v0, v2

    long-to-double v0, v0

    goto :goto_0
.end method

.method public getSubStep(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    .locals 1
    .param p1, "step"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->subFlowMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startStatistics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->bizType:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->version:Ljava/lang/String;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startTime:J

    .line 25
    return-void
.end method

.method public startSubFlow(Ljava/lang/String;)V
    .locals 4
    .param p1, "step"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->subFlowMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 30
    .local v0, "subFlow":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .end local v0    # "subFlow":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;-><init>(Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;Ljava/lang/String;)V

    .line 32
    .restart local v0    # "subFlow":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->subFlowMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    iput-object p1, v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->step:Ljava/lang/String;

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->startTime:J

    .line 38
    .end local v0    # "subFlow":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    :cond_1
    return-void
.end method
