.class final Lgph$1;
.super Ljava/lang/Object;
.source "CSpaceUploadBaseTask.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgph;->a(Ljava/lang/String;)V
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
.field final synthetic a:Lgph;


# direct methods
.method constructor <init>(Lgph;)V
    .locals 0
    .param p1, "this$0"    # Lgph;

    .prologue
    .line 127
    iput-object p1, p0, Lgph$1;->a:Lgph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 127
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2130
    if-eqz p1, :cond_3

    .line 2131
    iput v4, p1, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadStatus:I

    .line 2132
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2133
    iget-object v0, p0, Lgph$1;->a:Lgph;

    iget-object v0, v0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceTypeBelong(Ljava/lang/String;)V

    .line 2135
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2136
    iget-object v0, p0, Lgph$1;->a:Lgph;

    iget-object v0, v0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCid(Ljava/lang/String;)V

    .line 2138
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2139
    iget-object v0, p0, Lgph$1;->a:Lgph;

    iget-object v0, v0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setServerId(Ljava/lang/String;)V

    .line 2141
    :cond_2
    iget-object v0, p0, Lgph$1;->a:Lgph;

    iget-object v0, v0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadedSize(J)V

    .line 2144
    :cond_3
    iget-object v0, p0, Lgph$1;->a:Lgph;

    iget-object v0, v0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 2146
    const-string/jumbo v0, "true"

    iget-object v1, p0, Lgph$1;->a:Lgph;

    iget-object v1, v1, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtend()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2148
    const-string/jumbo v0, "CSpaceUploadBaseTask"

    iget-object v1, p0, Lgph$1;->a:Lgph;

    .line 3055
    iget-object v1, v1, Lgph;->p:Ljava/lang/String;

    .line 2148
    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lgpt;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 2151
    :cond_4
    iget-object v0, p0, Lgph$1;->a:Lgph;

    .line 4055
    iget-boolean v0, v0, Lgph;->o:Z

    .line 2151
    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 2152
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2153
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2154
    :cond_5
    iget-object v0, p0, Lgph$1;->a:Lgph;

    iget-object v0, v0, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "7"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    iget-object v0, p0, Lgph$1;->a:Lgph;

    invoke-static {v0, p1}, Lgph;->a(Lgph;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    :goto_0
    return-void

    .line 2157
    :cond_6
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v1

    iget-object v0, p0, Lgph$1;->a:Lgph;

    .line 5055
    iget-boolean v0, v0, Lgph;->m:Z

    .line 2158
    if-eqz v0, :cond_7

    const-string/jumbo v0, "lwpUploadFile"

    :goto_1
    const-string/jumbo v2, "addDentry"

    iget-object v3, p0, Lgph$1;->a:Lgph;

    iget-object v3, v3, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2157
    invoke-virtual {v1, v0, v2, v3}, Lgos;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 2160
    iget-object v0, p0, Lgph$1;->a:Lgph;

    invoke-virtual {v0, p1}, Lgph;->a(Ljava/lang/Object;)V

    .line 2162
    iget-object v0, p0, Lgph$1;->a:Lgph;

    iget-object v0, v0, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "7"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgph$1;->a:Lgph;

    iget-object v1, v1, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalSuccessModel()Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 2164
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgph$1;->a:Lgph;

    iget-object v1, v1, Lgph;->s:Lgoy;

    invoke-virtual {v1}, Lgoy;->a()Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    goto :goto_0

    .line 2158
    :cond_7
    const-string/jumbo v0, "httpUploadFile"

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 175
    const-string/jumbo v0, "13026000"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lgph$1;->a:Lgph;

    iget-object v1, p0, Lgph$1;->a:Lgph;

    iget-object v1, v1, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1, p1, p2, v4}, Lgph;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    iget-object v1, p0, Lgph$1;->a:Lgph;

    iget-object v1, v1, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1}, Lgos;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lgos$d;

    .line 179
    iget-object v0, p0, Lgph$1;->a:Lgph;

    iget-object v0, v0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgoq;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 180
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceUploadBaseTask"

    const-string/jumbo v2, "addFileInfoToServer"

    iget-object v3, p0, Lgph$1;->a:Lgph;

    iget-object v3, v3, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, p1, p2, v6, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgph$1;->a:Lgph;

    iget-object v1, v1, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "7"

    const-string/jumbo v3, "1071"

    invoke-virtual {v1, v2, v3, p1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 184
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgph$1;->a:Lgph;

    iget-object v1, v1, Lgph;->s:Lgoy;

    const-string/jumbo v2, "5033"

    invoke-virtual {v1, v2, v6}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 195
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    iget-object v1, p0, Lgph$1;->a:Lgph;

    .line 1055
    iget-boolean v1, v1, Lgph;->m:Z

    .line 188
    if-eqz v1, :cond_1

    const-string/jumbo v1, "lwpUploadFile"

    :goto_1
    const-string/jumbo v2, "addDentry"

    iget-object v3, p0, Lgph$1;->a:Lgph;

    iget-object v3, v3, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1150
    invoke-static {p1, v4}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v4

    move-object v5, p2

    .line 187
    invoke-virtual/range {v0 .. v5}, Lgos;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    .line 191
    iget-object v0, p0, Lgph$1;->a:Lgph;

    iget-object v1, p0, Lgph$1;->a:Lgph;

    iget-object v1, v1, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1, p1, p2}, Lgph;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgph$1;->a:Lgph;

    iget-object v1, v1, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "7"

    const-string/jumbo v3, "1072"

    invoke-virtual {v1, v2, v3, p1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 194
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgph$1;->a:Lgph;

    iget-object v1, v1, Lgph;->s:Lgoy;

    const-string/jumbo v2, "5034"

    invoke-virtual {v1, v2, v6}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    goto :goto_0

    .line 188
    :cond_1
    const-string/jumbo v1, "httpUploadFile"

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 171
    return-void
.end method
