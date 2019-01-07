.class public final Lbsn;
.super Ljava/lang/Object;
.source "DeviceBindFullFlowMonitor.java"


# static fields
.field protected static a:Lcom/alibaba/doraemon/statistics/Statistics;

.field private static b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 19
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    sput-object v0, Lbsn;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 38
    sput-object v1, Lbsn;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    .line 39
    sput-object v1, Lbsn;->c:Ljava/lang/String;

    .line 40
    sput-object v1, Lbsn;->d:Ljava/lang/String;

    .line 43
    sget-object v0, Lbsn;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    if-nez v0, :cond_1

    .line 1050
    sget-object v0, Lbsn;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->getUnifyStatistics(I)Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;

    move-result-object v0

    .line 1051
    instance-of v2, v0, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    if-eqz v2, :cond_2

    .line 1052
    check-cast v0, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    .line 1054
    :goto_0
    if-nez v0, :cond_0

    .line 1055
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;-><init>(Landroid/content/Context;)V

    .line 44
    :cond_0
    sput-object v0, Lbsn;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    .line 46
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 82
    sget-object v0, Lbsn;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    sget-object v1, Lbsn;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitSuccess(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "DeviceBindFullFlowMonitor"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "commitSuccess bizType = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lbsn;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static a(I)V
    .locals 4
    .param p0, "devServId"    # I

    .prologue
    const/4 v0, 0x0

    .line 61
    sput-object v0, Lbsn;->c:Ljava/lang/String;

    .line 62
    sput-object v0, Lbsn;->d:Ljava/lang/String;

    .line 63
    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    .line 64
    const-string/jumbo v0, "m2_bind_active"

    sput-object v0, Lbsn;->c:Ljava/lang/String;

    .line 66
    :cond_0
    sget-object v0, Lbsn;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    sget-object v1, Lbsn;->c:Ljava/lang/String;

    const-string/jumbo v2, "1.0"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->startStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v0, "DeviceBindFullFlowMonitor"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "startStatistics bizType = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lbsn;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", version = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "1.0"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4
    .param p0, "step"    # Ljava/lang/String;

    .prologue
    .line 71
    sput-object p0, Lbsn;->d:Ljava/lang/String;

    .line 72
    sget-object v0, Lbsn;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    sget-object v1, Lbsn;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->startSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, "DeviceBindFullFlowMonitor"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "startSubFlowStatistics bizType = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lbsn;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", step = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "step"    # Ljava/lang/String;
    .param p1, "clientErrorCode"    # Ljava/lang/String;
    .param p2, "serverErrorCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 87
    sget-object v0, Lbsn;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    sget-object v1, Lbsn;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p1, v4}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, "DeviceBindFullFlowMonitor"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "commitFailed bizType = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lbsn;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", step = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", clientErrorCode = "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p1, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, ", serverErrorCode = "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lbsn;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4
    .param p0, "step"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-object v0, Lbsn;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    sget-object v1, Lbsn;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->endSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v0, "DeviceBindFullFlowMonitor"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "endSubFlowStatistics bizType = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lbsn;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", step = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
