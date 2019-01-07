.class public Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;
.super Ljava/lang/Object;
.source "UnifyStatisticsModel.java"


# instance fields
.field public bizType:Ljava/lang/String;

.field public channelType:Ljava/lang/String;

.field public cost:J

.field public errorCode:Ljava/lang/String;

.field public mime:Ljava/lang/String;

.field public rate:D

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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->version:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->bizType:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->subType:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->mime:Ljava/lang/String;

    .line 22
    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->startTime:J

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->result:Ljava/lang/String;

    .line 26
    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->cost:J

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->rate:D

    .line 30
    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->totalSize:J

    .line 32
    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->transferSize:J

    .line 34
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->statusCode:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->errorCode:Ljava/lang/String;

    return-void
.end method
