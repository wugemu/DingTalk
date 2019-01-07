.class public final Lbmb;
.super Ljava/lang/Object;
.source "QuickConnectWifiFullFlowMonitor.java"


# static fields
.field protected static a:Lcom/alibaba/doraemon/statistics/Statistics;

.field private static b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 16
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    sput-object v0, Lbmb;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 27
    sput-object v1, Lbmb;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    .line 30
    sget-object v0, Lbmb;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    if-nez v0, :cond_1

    .line 1037
    sget-object v0, Lbmb;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->getUnifyStatistics(I)Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;

    move-result-object v0

    .line 1038
    instance-of v2, v0, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    if-eqz v2, :cond_2

    .line 1039
    check-cast v0, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    .line 1041
    :goto_0
    if-nez v0, :cond_0

    .line 1042
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;-><init>(Landroid/content/Context;)V

    .line 31
    :cond_0
    sput-object v0, Lbmb;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    .line 33
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lbmb;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    const-string/jumbo v1, "alpha_quick_connect_wifi"

    const-string/jumbo v2, "1.0"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->startStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "step"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v0, Lbmb;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    const-string/jumbo v1, "alpha_quick_connect_wifi"

    invoke-interface {v0, v1, p0}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->startSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "step"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v0, Lbmb;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    const-string/jumbo v1, "alpha_quick_connect_wifi"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, p1, v2}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lbmb;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    const-string/jumbo v1, "alpha_quick_connect_wifi"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitSuccess(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .param p0, "step"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lbmb;->b:Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    const-string/jumbo v1, "alpha_quick_connect_wifi"

    invoke-interface {v0, v1, p0}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->endSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
