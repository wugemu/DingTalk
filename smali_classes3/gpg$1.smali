.class final Lgpg$1;
.super Ljava/lang/Object;
.source "CSpaceDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpg;->a()V
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
    .line 154
    iput-object p1, p0, Lgpg$1;->a:Lgpg;

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

    const/4 v4, 0x0

    .line 157
    iget-object v0, p0, Lgpg$1;->a:Lgpg;

    const-string/jumbo v1, "start: mRunThread running"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgpg;->a(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lgpg$1;->a:Lgpg;

    iget-boolean v0, v0, Lgpg;->e:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lgpg$1;->a:Lgpg;

    const-string/jumbo v1, "start: mRunThread: mIsProcessing is true, return"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgpg;->b(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lgpg$1;->a:Lgpg;

    const-string/jumbo v1, "start: mRunThread: call super.start()"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgpg;->a(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lgpg$1;->a:Lgpg;

    invoke-static {v0}, Lgpg;->a(Lgpg;)V

    .line 167
    iget-object v0, p0, Lgpg$1;->a:Lgpg;

    iget-object v0, v0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lgpg$1;->a:Lgpg;

    const-string/jumbo v1, "start: mRunThread: null dentry, fail"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgpg;->b(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-static {}, Lgou;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$1;->a:Lgpg;

    iget-object v1, v1, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "1011"

    invoke-virtual {v1, v2, v3, v6}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 171
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceDownloadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$1;->a:Lgpg;

    iget-object v1, v1, Lgpg;->o:Lgoy;

    const-string/jumbo v2, "6000"

    invoke-virtual {v1, v2, v6}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 173
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "httpDownloadFile"

    const-string/jumbo v2, "localPreCheck"

    iget-object v3, p0, Lgpg$1;->a:Lgpg;

    iget-object v3, v3, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const v4, 0xf1b33

    const-string/jumbo v5, "mDentryModel is null"

    invoke-virtual/range {v0 .. v5}, Lgos;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    .line 176
    iget-object v0, p0, Lgpg$1;->a:Lgpg;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v6, v2}, Lgpg;->a(Lgpg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    iget-object v1, p0, Lgpg$1;->a:Lgpg;

    iget-object v1, v1, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1239
    invoke-static {v1}, Lgos$a;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    .line 1240
    if-eqz v2, :cond_2

    iget-object v3, v0, Lgos;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    :cond_2
    :goto_1
    iget-object v0, p0, Lgpg$1;->a:Lgpg;

    iget-object v0, v0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgoq;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 182
    iget-object v0, p0, Lgpg$1;->a:Lgpg;

    iget-object v0, v0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lgpg$1;->a:Lgpg;

    invoke-static {v0}, Lgpg;->b(Lgpg;)V

    goto/16 :goto_0

    .line 1243
    :cond_3
    new-instance v3, Lgos$a;

    invoke-direct {v3, v4}, Lgos$a;-><init>(B)V

    .line 1244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lgos$a;->a:J

    .line 1245
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v4

    iput-wide v4, v3, Lgos$a;->d:J

    .line 1246
    iget-object v0, v0, Lgos;->b:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
