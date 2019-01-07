.class public Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;
.super Ljava/lang/Object;
.source "AlimeiUnifyStatisticsModel.java"


# instance fields
.field public bizType:Ljava/lang/String;

.field public channelType:Ljava/lang/String;

.field public cost:J

.field public errorCode:Ljava/lang/String;

.field public rate:D

.field public reservation:Ljava/lang/String;

.field public result:Ljava/lang/String;

.field public startTime:J

.field public statusCode:Ljava/lang/String;

.field public subType:Ljava/lang/String;

.field public totalSize:J

.field public transferSize:J

.field public version:Ljava/lang/String;

.field public vipFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->version:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->bizType:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->subType:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->reservation:Ljava/lang/String;

    .line 41
    iput-wide v2, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->startTime:J

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->result:Ljava/lang/String;

    .line 51
    iput-wide v2, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->cost:J

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->rate:D

    .line 61
    iput-wide v2, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->totalSize:J

    .line 66
    iput-wide v2, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->transferSize:J

    .line 71
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->statusCode:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;->errorCode:Ljava/lang/String;

    return-void
.end method
