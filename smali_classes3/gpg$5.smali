.class final Lgpg$5;
.super Ljava/lang/Object;
.source "CSpaceDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgpg;


# direct methods
.method constructor <init>(Lgpg;)V
    .locals 0
    .param p1, "this$0"    # Lgpg;

    .prologue
    .line 551
    iput-object p1, p0, Lgpg$5;->a:Lgpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 554
    iget-object v1, p0, Lgpg$5;->a:Lgpg;

    const-string/jumbo v2, "deleteCryptFile: thread running"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lgpg;->a(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceDownloadTask"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "cryptFile download success: "

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string/jumbo v5, " spaceId = "

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lgpg$5;->a:Lgpg;

    iget-object v5, v5, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 558
    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, " fileId = "

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lgpg$5;->a:Lgpg;

    iget-object v5, v5, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 559
    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, " md5 = "

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lgpg$5;->a:Lgpg;

    iget-object v5, v5, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 560
    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgpv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 557
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 556
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lgpg$5;->a:Lgpg;

    iget-object v1, v1, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lgpg$5;->a:Lgpg;

    iget-object v1, v1, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 566
    iget-object v1, p0, Lgpg$5;->a:Lgpg;

    const-string/jumbo v2, "deleteCryptFile: deleted, success"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lgpg;->a(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    iget-object v1, p0, Lgpg$5;->a:Lgpg;

    iget-object v1, v1, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "8"

    const-string/jumbo v3, "Y"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-static {}, Lgou;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v1

    iget-object v2, p0, Lgpg$5;->a:Lgpg;

    iget-object v2, v2, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalSuccessModel()Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 574
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceDownloadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v1

    iget-object v2, p0, Lgpg$5;->a:Lgpg;

    iget-object v2, v2, Lgpg;->o:Lgoy;

    invoke-virtual {v2}, Lgoy;->a()Lgoy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 576
    iget-object v1, p0, Lgpg$5;->a:Lgpg;

    iget-object v2, p0, Lgpg$5;->a:Lgpg;

    iget-object v2, v2, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCryptLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lgpg;->a(Lgpg;Ljava/lang/String;)V

    .line 577
    return-void

    .line 568
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lgpg$5;->a:Lgpg;

    const-string/jumbo v2, "deleteCryptFile: already deleted, success"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lgpg;->a(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
