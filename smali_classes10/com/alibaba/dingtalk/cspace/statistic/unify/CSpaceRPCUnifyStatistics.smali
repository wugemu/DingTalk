.class public Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;
.super Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;
.source "CSpaceRPCUnifyStatistics.java"


# static fields
.field private static volatile b:Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public static a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->b:Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->b:Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->b:Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->b:Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "subType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Lgoy;

    invoke-direct {v0}, Lgoy;-><init>()V

    .line 45
    .local v0, "unifyStatisticsModel":Lgoy;
    const-string/jumbo v1, "rpc"

    const-string/jumbo v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lgoy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object p1, v0, Lgoy;->subType:Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Lgoy;->a()Lgoy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "statusCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Lgoy;

    invoke-direct {v0}, Lgoy;-><init>()V

    .line 58
    .local v0, "unifyStatisticsModel":Lgoy;
    const-string/jumbo v1, "rpc"

    const-string/jumbo v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lgoy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-object p1, v0, Lgoy;->subType:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, p2, p3}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    goto :goto_0
.end method
