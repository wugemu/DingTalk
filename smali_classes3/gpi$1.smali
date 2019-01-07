.class final Lgpi$1;
.super Ljava/lang/Object;
.source "CSpaceUploadThroughHttpTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpi;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgpi;


# direct methods
.method constructor <init>(Lgpi;)V
    .locals 0
    .param p1, "this$0"    # Lgpi;

    .prologue
    .line 103
    iput-object p1, p0, Lgpi$1;->a:Lgpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x0

    .line 106
    iget-object v0, p0, Lgpi$1;->a:Lgpi;

    iget-boolean v0, v0, Lgpi;->e:Z

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lgpi$1;->a:Lgpi;

    invoke-static {v0}, Lgpi;->a(Lgpi;)V

    .line 112
    iget-object v0, p0, Lgpi$1;->a:Lgpi;

    iget-object v0, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v0, :cond_1

    .line 113
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpi$1;->a:Lgpi;

    iget-object v1, v1, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "1011"

    invoke-virtual {v1, v2, v3, v6}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 114
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpi$1;->a:Lgpi;

    iget-object v1, v1, Lgpi;->s:Lgoy;

    const-string/jumbo v2, "5000"

    invoke-virtual {v1, v2, v6}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 116
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "httpUploadFile"

    const-string/jumbo v2, "localPreCheck"

    iget-object v3, p0, Lgpi$1;->a:Lgpi;

    iget-object v3, v3, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const v4, 0xf1b33

    const-string/jumbo v5, "mDentryModel is null"

    invoke-virtual/range {v0 .. v5}, Lgos;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lgpi$1;->a:Lgpi;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v1, v2}, Lgpi;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lgpi$1;->a:Lgpi;

    iget-object v0, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 124
    iget-object v1, p0, Lgpi$1;->a:Lgpi;

    iget-object v0, p0, Lgpi$1;->a:Lgpi;

    iget-object v3, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v0, p0, Lgpi$1;->a:Lgpi;

    iget-object v0, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    iget-object v0, p0, Lgpi$1;->a:Lgpi;

    iget-object v0, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lgpi;->a(ILjava/lang/Object;JJ)V

    .line 126
    iget-object v0, p0, Lgpi$1;->a:Lgpi;

    iget-object v0, v0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lgpi$1;->a:Lgpi;

    invoke-static {v0}, Lgpi;->b(Lgpi;)V

    goto/16 :goto_0
.end method
