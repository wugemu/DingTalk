.class final Lgph$2;
.super Ljava/lang/Object;
.source "CSpaceUploadBaseTask.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgph;
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
        "Lgrh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lgph;


# direct methods
.method constructor <init>(Lgph;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lgph;

    .prologue
    .line 225
    iput-object p1, p0, Lgph$2;->b:Lgph;

    iput-object p2, p0, Lgph$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 225
    check-cast p1, Lgrh;

    .line 1228
    if-nez p1, :cond_1

    .line 1229
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceUploadBaseTask"

    const-string/jumbo v2, "CSpaceUploadBaseTask getThumbnail mediaInfo is null"

    iget-object v3, p0, Lgph$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, v3}, Lgot;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v1

    iget-object v0, p0, Lgph$2;->b:Lgph;

    .line 2055
    iget-boolean v0, v0, Lgph;->m:Z

    .line 1232
    if-eqz v0, :cond_0

    const-string/jumbo v0, "lwpUploadFile"

    :goto_0
    const-string/jumbo v2, "addDentry"

    iget-object v3, p0, Lgph$2;->b:Lgph;

    iget-object v3, v3, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1231
    invoke-virtual {v1, v0, v2, v3}, Lgos;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1234
    iget-object v0, p0, Lgph$2;->b:Lgph;

    iget-object v1, p0, Lgph$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1}, Lgph;->a(Ljava/lang/Object;)V

    .line 1236
    iget-object v0, p0, Lgph$2;->b:Lgph;

    iget-object v0, v0, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "8"

    const-string/jumbo v2, "N"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgph$2;->b:Lgph;

    iget-object v1, v1, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalSuccessModel()Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 1238
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgph$2;->b:Lgph;

    iget-object v1, v1, Lgph;->s:Lgoy;

    invoke-virtual {v1}, Lgoy;->a()Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 1239
    :goto_1
    return-void

    .line 1232
    :cond_0
    const-string/jumbo v0, "httpUploadFile"

    goto :goto_0

    .line 1242
    :cond_1
    iget-object v0, p0, Lgph$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v2, p1, Lgrh;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDuration(J)V

    .line 1243
    iget-object v0, p0, Lgph$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p1, Lgrh;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicUrl(Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lgph$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v1, p1, Lgrh;->e:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicWidth(I)V

    .line 1245
    iget-object v0, p0, Lgph$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v1, p1, Lgrh;->f:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicHeight(I)V

    .line 1246
    iget-object v0, p0, Lgph$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p1, Lgrh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicUrl(Ljava/lang/String;)V

    .line 1247
    iget-object v0, p0, Lgph$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p1, Lgrh;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicCode(Ljava/lang/String;)V

    .line 1248
    iget-object v0, p0, Lgph$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v2, p1, Lgrh;->h:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicSize(J)V

    .line 1249
    iget-object v0, p0, Lgph$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v1, p1, Lgrh;->g:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicRotation(I)V

    .line 1251
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v1

    iget-object v0, p0, Lgph$2;->b:Lgph;

    .line 3055
    iget-boolean v0, v0, Lgph;->m:Z

    .line 1252
    if-eqz v0, :cond_2

    const-string/jumbo v0, "lwpUploadFile"

    :goto_2
    const-string/jumbo v2, "infoMediaInfo"

    iget-object v3, p0, Lgph$2;->b:Lgph;

    iget-object v3, v3, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1251
    invoke-virtual {v1, v0, v2, v3}, Lgos;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1254
    iget-object v0, p0, Lgph$2;->b:Lgph;

    iget-object v1, p0, Lgph$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1}, Lgph;->a(Ljava/lang/Object;)V

    .line 1256
    iget-object v0, p0, Lgph$2;->b:Lgph;

    iget-object v0, v0, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "7"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgph$2;->b:Lgph;

    iget-object v1, v1, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalSuccessModel()Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 1258
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgph$2;->b:Lgph;

    iget-object v1, v1, Lgph;->s:Lgoy;

    invoke-virtual {v1}, Lgoy;->a()Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    goto/16 :goto_1

    .line 1252
    :cond_2
    const-string/jumbo v0, "httpUploadFile"

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 268
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceUploadBaseTask"

    const-string/jumbo v2, "CSpaceUploadBaseTask.getThumbnail"

    const/4 v3, 0x0

    iget-object v4, p0, Lgph$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, p1, p2, v3, v4}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v1

    iget-object v0, p0, Lgph$2;->b:Lgph;

    .line 1055
    iget-boolean v0, v0, Lgph;->m:Z

    .line 272
    if-eqz v0, :cond_0

    const-string/jumbo v0, "lwpUploadFile"

    :goto_0
    const-string/jumbo v2, "addDentry"

    iget-object v3, p0, Lgph$2;->b:Lgph;

    iget-object v3, v3, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 271
    invoke-virtual {v1, v0, v2, v3}, Lgos;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 274
    iget-object v0, p0, Lgph$2;->b:Lgph;

    iget-object v1, p0, Lgph$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1}, Lgph;->a(Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lgph$2;->b:Lgph;

    iget-object v0, v0, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "8"

    const-string/jumbo v2, "N"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgph$2;->b:Lgph;

    iget-object v1, v1, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalSuccessModel()Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 278
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgph$2;->b:Lgph;

    iget-object v1, v1, Lgph;->s:Lgoy;

    invoke-virtual {v1}, Lgoy;->a()Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 279
    return-void

    .line 272
    :cond_0
    const-string/jumbo v0, "httpUploadFile"

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 264
    return-void
.end method
