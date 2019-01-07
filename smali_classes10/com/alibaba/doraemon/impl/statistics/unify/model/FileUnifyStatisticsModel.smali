.class public Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
.super Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;
.source "FileUnifyStatisticsModel.java"


# instance fields
.field public backgroundCnt:Ljava/lang/String;

.field public backgroundTime:J

.field public frag:J

.field public idc:Ljava/lang/String;

.field public lwsAccess:Ljava/lang/String;

.field public orgId:J

.field public port:Ljava/lang/String;

.field public resume:Ljava/lang/String;

.field public retryCount:I

.field public vpn:Ljava/lang/String;

.field public waitTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;-><init>()V

    .line 33
    const-string/jumbo v0, "1.2"

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;->version:Ljava/lang/String;

    .line 34
    return-void
.end method
