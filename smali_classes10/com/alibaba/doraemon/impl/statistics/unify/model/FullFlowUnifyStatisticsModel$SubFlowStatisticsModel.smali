.class public Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
.super Ljava/lang/Object;
.source "FullFlowUnifyStatisticsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubFlowStatisticsModel"
.end annotation


# instance fields
.field public cost:J

.field public result:Ljava/lang/String;

.field public startTime:J

.field public step:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;
    .param p2, "step"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->this$0:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    .line 104
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->step:Ljava/lang/String;

    .line 105
    return-void
.end method
