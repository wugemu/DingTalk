.class final Lgpg$2;
.super Lgqq;
.source "CSpaceDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpg;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lgpg;


# direct methods
.method constructor <init>(Lgpg;Z)V
    .locals 0
    .param p1, "this$0"    # Lgpg;

    .prologue
    .line 231
    iput-object p1, p0, Lgpg$2;->b:Lgpg;

    iput-boolean p2, p0, Lgpg$2;->a:Z

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 234
    iget-object v0, p0, Lgpg$2;->b:Lgpg;

    const-string/jumbo v1, "checkLogin: onDataReceived"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgpg;->a(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-super {p0, p1}, Lgqq;->a(Ljava/lang/Void;)V

    .line 236
    iget-object v0, p0, Lgpg$2;->b:Lgpg;

    iget-object v0, v0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "3"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lgpg$2;->b:Lgpg;

    invoke-static {v0}, Lgpg;->c(Lgpg;)V

    .line 238
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 231
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lgpg$2;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 247
    invoke-super {p0, p1, p2}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v0, "0000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 249
    .local v6, "isSdkInitError":Z
    iget-object v0, p0, Lgpg$2;->b:Lgpg;

    const-string/jumbo v1, "checkLogin: code: %s, reason: %s, isFirst: %b, isSdkInitError: %b"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v8

    aput-object p2, v2, v7

    const/4 v3, 0x2

    iget-boolean v4, p0, Lgpg$2;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lgpg;->b(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    if-eqz v6, :cond_0

    iget-boolean v0, p0, Lgpg$2;->a:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgpg$2$1;

    invoke-direct {v1, p0}, Lgpg$2$1;-><init>(Lgpg$2;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 281
    :goto_0
    return-void

    .line 263
    :cond_0
    if-eqz v6, :cond_1

    .line 264
    invoke-static {}, Lgou;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$2;->b:Lgpg;

    iget-object v1, v1, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "3"

    const-string/jumbo v3, "1031"

    invoke-virtual {v1, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 265
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceDownloadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$2;->b:Lgpg;

    iget-object v1, v1, Lgpg;->o:Lgoy;

    const-string/jumbo v2, "6020"

    invoke-virtual {v1, v2, v5}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 267
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "httpDownloadFile"

    const-string/jumbo v2, "localPreCheck"

    iget-object v3, p0, Lgpg$2;->b:Lgpg;

    iget-object v3, v3, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const v4, 0xf1b3b

    const-string/jumbo v5, "alimei adk not inited"

    invoke-virtual/range {v0 .. v5}, Lgos;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    .line 280
    :goto_1
    iget-object v1, p0, Lgpg$2;->b:Lgpg;

    const-string/jumbo v2, "checklogin"

    if-nez v6, :cond_2

    move v0, v7

    :goto_2
    invoke-static {v1, p1, v2, p2, v0}, Lgpg;->a(Lgpg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-static {}, Lgou;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$2;->b:Lgpg;

    iget-object v1, v1, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "3"

    const-string/jumbo v3, "1032"

    invoke-virtual {v1, v2, v3, p1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 273
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceDownloadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$2;->b:Lgpg;

    iget-object v1, v1, Lgpg;->o:Lgoy;

    const-string/jumbo v2, "6021"

    invoke-virtual {v1, v2, p1}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 275
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "httpDownloadFile"

    const-string/jumbo v2, "localPreCheck"

    iget-object v3, p0, Lgpg$2;->b:Lgpg;

    iget-object v3, v3, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1150
    invoke-static {p1, v8}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v4

    move-object v5, p2

    .line 275
    invoke-virtual/range {v0 .. v5}, Lgos;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v8

    .line 280
    goto :goto_2
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 242
    invoke-super {p0, p1, p2}, Lgqq;->onProgress(Ljava/lang/Object;I)V

    .line 243
    return-void
.end method
