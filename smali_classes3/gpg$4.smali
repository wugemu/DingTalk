.class final Lgpg$4;
.super Ljava/lang/Object;
.source "CSpaceDownloadTask.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpg;->a(Ljava/lang/String;)V
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
        "Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lgpg;


# direct methods
.method constructor <init>(Lgpg;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgpg;

    .prologue
    .line 459
    iput-object p1, p0, Lgpg$4;->b:Lgpg;

    iput-object p2, p0, Lgpg$4;->a:Ljava/lang/String;

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

    const/4 v5, 0x0

    .line 459
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    .line 1462
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    invoke-static {v0}, Lgpv;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1463
    :cond_0
    iget-object v0, p0, Lgpg$4;->b:Lgpg;

    const-string/jumbo v1, "decrypt: null cryptionDo, or plain text file missing, fail"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgpg;->b(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1465
    invoke-static {}, Lgou;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$4;->b:Lgpg;

    iget-object v1, v1, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "7"

    const-string/jumbo v3, "1072"

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 1466
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceDownloadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$4;->b:Lgpg;

    iget-object v1, v1, Lgpg;->o:Lgoy;

    const-string/jumbo v2, "6051"

    invoke-virtual {v1, v2, v4}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 1468
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1469
    const-string/jumbo v1, "decrypt---"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1470
    iget-object v1, p0, Lgpg$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1471
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1473
    iget-object v1, p0, Lgpg$4;->b:Lgpg;

    const-string/jumbo v2, ""

    .line 1475
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lfzs$h;->dt_file_decrypt_error_common:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1473
    invoke-static {v1, v2, v0, v3, v5}, Lgpg;->a(Lgpg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1485
    :goto_0
    return-void

    .line 1480
    :cond_1
    iget v0, p1, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    if-nez v0, :cond_2

    .line 1481
    iget-object v0, p0, Lgpg$4;->b:Lgpg;

    const-string/jumbo v1, "decrypt: success, deleteCryptFile"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgpg;->b(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1483
    iget-object v0, p0, Lgpg$4;->b:Lgpg;

    iget-object v0, v0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCryptLocalUrl(Ljava/lang/String;)V

    .line 1484
    iget-object v0, p0, Lgpg$4;->b:Lgpg;

    iget-object v0, v0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "7"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    iget-object v0, p0, Lgpg$4;->b:Lgpg;

    invoke-static {v0}, Lgpg;->e(Lgpg;)V

    goto :goto_0

    .line 1488
    :cond_2
    iget-object v0, p0, Lgpg$4;->b:Lgpg;

    const-string/jumbo v1, "decrypt: status: %d, fail"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lgpg;->b(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1490
    invoke-static {}, Lgou;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$4;->b:Lgpg;

    iget-object v1, v1, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "7"

    const-string/jumbo v3, "1073"

    iget v4, p1, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 1491
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceDownloadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$4;->b:Lgpg;

    iget-object v1, v1, Lgpg;->o:Lgoy;

    const-string/jumbo v2, "6052"

    iget v3, p1, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 1493
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1494
    const-string/jumbo v1, "decrypt---"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1495
    iget-object v1, p0, Lgpg$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1496
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1498
    iget-object v1, p0, Lgpg$4;->b:Lgpg;

    iget v2, p1, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1500
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lfzs$h;->dt_file_decrypt_error_common:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1498
    invoke-static {v1, v2, v0, v3, v5}, Lgpg;->a(Lgpg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 511
    iget-object v2, p0, Lgpg$4;->b:Lgpg;

    const-string/jumbo v3, "decrypt: code: %s, reason: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lgpg;->b(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    invoke-static {}, Lgou;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v2

    iget-object v3, p0, Lgpg$4;->b:Lgpg;

    iget-object v3, v3, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v4, "7"

    const-string/jumbo v5, "1071"

    invoke-virtual {v3, v4, v5, p1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 514
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceDownloadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v2

    iget-object v3, p0, Lgpg$4;->b:Lgpg;

    iget-object v3, v3, Lgpg;->o:Lgoy;

    const-string/jumbo v4, "6050"

    invoke-virtual {v3, v4, p1}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 516
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 517
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "decrypt---"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 518
    iget-object v2, p0, Lgpg$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 519
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "flagTmp":Ljava/lang/String;
    iget-object v2, p0, Lgpg$4;->b:Lgpg;

    invoke-static {v2, p1, v1, p2, v6}, Lgpg;->a(Lgpg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 522
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 507
    return-void
.end method
