.class final Lgpj$2$1;
.super Ljava/lang/Object;
.source "CSpaceUploadThroughLwpTask.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpj$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lifx;

.field final synthetic b:Lgpj$2;


# direct methods
.method constructor <init>(Lgpj$2;Lifx;)V
    .locals 0
    .param p1, "this$1"    # Lgpj$2;

    .prologue
    .line 229
    iput-object p1, p0, Lgpj$2$1;->b:Lgpj$2;

    iput-object p2, p0, Lgpj$2$1;->a:Lifx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 6
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 246
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpj$2$1;->b:Lgpj$2;

    iget-object v1, v1, Lgpj$2;->a:Lgpj;

    iget-object v1, v1, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "6"

    const-string/jumbo v3, "1061"

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->DBError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 247
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpj$2$1;->b:Lgpj$2;

    iget-object v1, v1, Lgpj$2;->a:Lgpj;

    iget-object v1, v1, Lgpj;->s:Lgoy;

    const-string/jumbo v2, "5032"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 249
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "lwpUploadFile"

    const-string/jumbo v2, "doUploadFile"

    iget-object v3, p0, Lgpj$2$1;->b:Lgpj$2;

    iget-object v3, v3, Lgpj$2;->a:Lgpj;

    iget-object v3, v3, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const v4, 0xf1b41

    sget-object v5, Lcom/alibaba/alimei/framework/SDKError;->DBError:Lcom/alibaba/alimei/framework/SDKError;

    .line 251
    invoke-virtual {v5}, Lcom/alibaba/alimei/framework/SDKError;->toString()Ljava/lang/String;

    move-result-object v5

    .line 249
    invoke-virtual/range {v0 .. v5}, Lgos;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    .line 252
    iget-object v0, p0, Lgpj$2$1;->b:Lgpj$2;

    iget-object v0, v0, Lgpj$2;->a:Lgpj;

    iget-object v1, p0, Lgpj$2$1;->b:Lgpj$2;

    iget-object v1, v1, Lgpj$2;->a:Lgpj;

    iget-object v1, v1, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DBError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->DBError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lgpj;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 229
    .line 1232
    iget-object v0, p0, Lgpj$2$1;->b:Lgpj$2;

    iget-object v0, v0, Lgpj$2;->a:Lgpj;

    iget-object v0, v0, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "6"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lgpj$2$1;->b:Lgpj$2;

    iget-object v0, v0, Lgpj$2;->a:Lgpj;

    iget-object v0, v0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgpj$2$1;->b:Lgpj$2;

    iget-object v0, v0, Lgpj$2;->a:Lgpj;

    iget-object v0, v0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v0

    .line 1235
    :goto_0
    iget-object v2, p0, Lgpj$2$1;->b:Lgpj$2;

    iget-object v2, v2, Lgpj$2;->a:Lgpj;

    iget-wide v2, v2, Lgpj;->t:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1236
    iget-object v2, p0, Lgpj$2$1;->b:Lgpj$2;

    iget-object v2, v2, Lgpj$2;->a:Lgpj;

    iget-object v2, v2, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    iget-object v3, p0, Lgpj$2$1;->b:Lgpj$2;

    iget-object v3, v3, Lgpj$2;->a:Lgpj;

    iget-wide v4, v3, Lgpj;->t:J

    sub-long/2addr v0, v4

    iput-wide v0, v2, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->transferSize:J

    .line 1238
    :cond_0
    iget-object v0, p0, Lgpj$2$1;->b:Lgpj$2;

    iget-object v0, v0, Lgpj$2;->a:Lgpj;

    iget-object v0, v0, Lgpj;->s:Lgoy;

    iget-object v1, p0, Lgpj$2$1;->b:Lgpj$2;

    iget-object v1, v1, Lgpj$2;->a:Lgpj;

    iget-object v1, v1, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    iget-wide v2, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->transferSize:J

    iput-wide v2, v0, Lgoy;->transferSize:J

    .line 1240
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    iget-object v1, p0, Lgpj$2$1;->b:Lgpj$2;

    iget-object v1, v1, Lgpj$2;->a:Lgpj;

    iget-object v1, v1, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1}, Lgos;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1241
    iget-object v0, p0, Lgpj$2$1;->b:Lgpj$2;

    iget-object v0, v0, Lgpj$2;->a:Lgpj;

    iget-object v1, p0, Lgpj$2$1;->a:Lifx;

    .line 2026
    iget-object v1, v1, Lifx;->a:Ljava/lang/String;

    .line 1241
    invoke-virtual {v0, v1}, Lgpj;->a(Ljava/lang/String;)V

    .line 229
    return-void

    .line 1234
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
