.class public Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;
.super Ljava/lang/Object;
.source "AlimeiFullFlowUnifyStatisticsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;
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

.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;
    .param p2, "step"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->this$0:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->result:Ljava/lang/String;

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->cost:J

    .line 96
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel$SubFlowStatisticsModel;->step:Ljava/lang/String;

    .line 97
    return-void
.end method
