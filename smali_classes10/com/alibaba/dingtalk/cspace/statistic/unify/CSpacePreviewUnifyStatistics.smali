.class public Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;
.super Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;
.source "CSpacePreviewUnifyStatistics.java"


# static fields
.field private static volatile b:Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public static a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->b:Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->b:Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->b:Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->b:Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 4
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 44
    if-nez p0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "preview"

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->d(Ljava/lang/String;)Lgoy;

    move-result-object v0

    .line 49
    .local v0, "unifyStatisticsModel":Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgpx;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    const-string/jumbo v1, "video"

    iput-object v1, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->channelType:Ljava/lang/String;

    .line 61
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lgpx;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->mime:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->totalSize:J

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->transferSize:J

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgpx;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    const-string/jumbo v1, "audio"

    iput-object v1, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->channelType:Ljava/lang/String;

    goto :goto_1

    .line 58
    :cond_3
    const-string/jumbo v1, "file"

    iput-object v1, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;->channelType:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "statusCode"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string/jumbo v0, "preview"

    invoke-super {p0, v0, p1, p2}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    const-string/jumbo v0, "preview"

    const-string/jumbo v1, "1.0"

    invoke-super {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "preview"

    invoke-super {p0, v0}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->b(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 87
    const-string/jumbo v0, "preview"

    invoke-super {p0, v0}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->c(Ljava/lang/String;)V

    .line 88
    return-void
.end method
