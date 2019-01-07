.class public Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
.super Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;
.source "FullFlowUnifyStatisticsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
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
            "Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;-><init>()V

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->errorStep:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->subFlowMap:Ljava/util/Map;

    .line 93
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 81
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->version:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->bizType:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->subType:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->mime:Ljava/lang/String;

    .line 85
    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startTime:J

    .line 86
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->result:Ljava/lang/String;

    .line 87
    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->cost:J

    .line 88
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->statusCode:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->errorCode:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->errorStep:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public endSubFlow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "step"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->subFlowMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 51
    .local v0, "subFlow":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    if-eqz v0, :cond_0

    .line 55
    iput-object p2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->startTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    goto :goto_0
.end method

.method public generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
    .locals 4
    .param p1, "errorStep"    # Ljava/lang/String;
    .param p2, "stepErrorCode"    # Ljava/lang/String;
    .param p3, "serverErrorCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    const-string/jumbo v0, "N"

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->result:Ljava/lang/String;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->cost:J

    .line 72
    if-nez p1, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->errorStep:Ljava/lang/String;

    .line 73
    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    .end local p2    # "stepErrorCode":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->errorCode:Ljava/lang/String;

    .line 74
    if-nez p3, :cond_1

    const-string/jumbo p3, ""

    .end local p3    # "serverErrorCode":Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->statusCode:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "N"

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-object p0

    .restart local p2    # "stepErrorCode":Ljava/lang/String;
    .restart local p3    # "serverErrorCode":Ljava/lang/String;
    :cond_2
    move-object v0, p1

    .line 72
    goto :goto_0
.end method

.method public generalSuccessModel()Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    const-string/jumbo v0, "Y"

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->result:Ljava/lang/String;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->cost:J

    .line 63
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->cost:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->rate:D

    .line 65
    return-object p0

    .line 63
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->transferSize:J

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->cost:J

    div-long/2addr v0, v2

    long-to-double v0, v0

    goto :goto_0
.end method

.method public startStatistics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->bizType:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->version:Ljava/lang/String;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startTime:J

    .line 26
    return-void
.end method

.method public startSubFlow(Ljava/lang/String;)V
    .locals 4
    .param p1, "step"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->subFlowMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .line 35
    .local v0, "subFlow":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    if-nez v0, :cond_1

    .line 36
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;

    .end local v0    # "subFlow":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    invoke-direct {v0, p0, p1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;-><init>(Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;Ljava/lang/String;)V

    .line 37
    .restart local v0    # "subFlow":Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->subFlowMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    iput-object p1, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->step:Ljava/lang/String;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->startTime:J

    goto :goto_0
.end method
