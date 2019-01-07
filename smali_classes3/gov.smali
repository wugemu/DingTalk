.class public Lgov;
.super Ljava/lang/Object;
.source "FullFlowStatistics.java"


# static fields
.field protected static a:Lcom/alibaba/doraemon/statistics/Statistics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    sput-object v0, Lgov;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;
    .locals 4

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, "fullFlowUnifyStatistics":Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;
    sget-object v2, Lgov;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->getUnifyStatistics(I)Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;

    move-result-object v1

    .line 31
    .local v1, "unifyStatistics":Lcom/alibaba/doraemon/statistics/unify/UnifyStatistics;
    instance-of v2, v1, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 32
    check-cast v0, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    .line 35
    :cond_0
    if-nez v0, :cond_1

    .line 36
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;

    .end local v0    # "fullFlowUnifyStatistics":Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/FullFlowUnifyStatisticsImpl;-><init>(Landroid/content/Context;)V

    .line 39
    .restart local v0    # "fullFlowUnifyStatistics":Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;
    :cond_1
    return-object v0
.end method
