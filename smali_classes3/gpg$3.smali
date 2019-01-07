.class final Lgpg$3;
.super Ljava/lang/Object;
.source "CSpaceDownloadTask.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgpg;


# direct methods
.method constructor <init>(Lgpg;)V
    .locals 0
    .param p1, "this$0"    # Lgpg;

    .prologue
    .line 300
    iput-object p1, p0, Lgpg$3;->a:Lgpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 300
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1303
    iget-object v0, p0, Lgpg$3;->a:Lgpg;

    const-string/jumbo v1, "info: onDataReceived"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgpg;->a(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1305
    if-nez p1, :cond_0

    .line 1306
    iget-object v0, p0, Lgpg$3;->a:Lgpg;

    const-string/jumbo v1, "info: infoDentry: null dentry, fail"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgpg;->b(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1307
    invoke-static {}, Lgou;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$3;->a:Lgpg;

    iget-object v1, v1, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "4"

    const-string/jumbo v3, "1041"

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 1308
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceDownloadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$3;->a:Lgpg;

    iget-object v1, v1, Lgpg;->o:Lgoy;

    const-string/jumbo v2, "6030"

    invoke-virtual {v1, v2, v4}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 1310
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "httpDownloadFile"

    const-string/jumbo v2, "infoDentry"

    iget-object v3, p0, Lgpg$3;->a:Lgpg;

    iget-object v3, v3, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const v4, 0xf1b37

    const-string/jumbo v5, "infoDentry returns null"

    invoke-virtual/range {v0 .. v5}, Lgos;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    .line 1313
    iget-object v0, p0, Lgpg$3;->a:Lgpg;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "info"

    const-string/jumbo v3, "info and get file is null"

    invoke-static {v0, v1, v2, v3}, Lgpg;->a(Lgpg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    :goto_0
    return-void

    .line 1317
    :cond_0
    iget-object v0, p0, Lgpg$3;->a:Lgpg;

    iput-object p1, v0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1318
    iget-object v0, p0, Lgpg$3;->a:Lgpg;

    iget-object v0, v0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "4"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lgpg$3;->a:Lgpg;

    invoke-static {v0}, Lgpg;->d(Lgpg;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 328
    iget-object v0, p0, Lgpg$3;->a:Lgpg;

    const-string/jumbo v1, "info: infoDentry: code: %s, reason: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lgpg;->b(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-static {}, Lgou;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$3;->a:Lgpg;

    iget-object v1, v1, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "4"

    const-string/jumbo v3, "1042"

    invoke-virtual {v1, v2, v3, p1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 331
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceDownloadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$3;->a:Lgpg;

    iget-object v1, v1, Lgpg;->o:Lgoy;

    const-string/jumbo v2, "6031"

    invoke-virtual {v1, v2, p1}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 333
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "httpDownloadFile"

    const-string/jumbo v2, "infoDentry"

    iget-object v3, p0, Lgpg$3;->a:Lgpg;

    iget-object v3, v3, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1150
    invoke-static {p1, v4}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v4

    move-object v5, p2

    .line 333
    invoke-virtual/range {v0 .. v5}, Lgos;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    .line 336
    iget-object v0, p0, Lgpg$3;->a:Lgpg;

    const-string/jumbo v1, "info"

    invoke-static {v0, p1, v1, p2}, Lgpg;->a(Lgpg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 324
    return-void
.end method
