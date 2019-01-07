.class final Lgpj$2;
.super Ljava/lang/Object;
.source "CSpaceUploadThroughLwpTask.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgpj;


# direct methods
.method constructor <init>(Lgpj;)V
    .locals 0
    .param p1, "this$0"    # Lgpj;

    .prologue
    .line 198
    iput-object p1, p0, Lgpj$2;->a:Lgpj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 12
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 269
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpj$2;->a:Lgpj;

    iget-object v1, v1, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "5"

    const-string/jumbo v3, "1051"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 270
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpj$2;->a:Lgpj;

    iget-object v1, v1, Lgpj;->s:Lgoy;

    const-string/jumbo v2, "5020"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 272
    const v0, 0x9c4c

    if-ne p1, v0, :cond_0

    .line 274
    const-string/jumbo v6, "CSpace"

    const-string/jumbo v7, "CSpaceUploadThroughLwpTask"

    const-string/jumbo v0, "CSpaceUploadThroughLwpTask.uploadFile"

    .line 275
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-string/jumbo v4, "task be cancel"

    iget-object v2, p0, Lgpj$2;->a:Lgpj;

    iget-object v5, v2, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object v2, p2

    .line 274
    invoke-static/range {v0 .. v5}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void

    .line 282
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 299
    move v4, p1

    .line 300
    .local v4, "commitCode":I
    move-object v5, p2

    .line 303
    .local v5, "commitMsg":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "lwpUploadFile"

    const-string/jumbo v2, "doUploadFile"

    iget-object v3, p0, Lgpj$2;->a:Lgpj;

    iget-object v3, v3, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual/range {v0 .. v5}, Lgos;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    .line 307
    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    iget-object v1, p0, Lgpj$2;->a:Lgpj;

    iget-object v1, v1, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lgpj;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    .end local v4    # "commitCode":I
    .end local v5    # "commitMsg":Ljava/lang/String;
    :sswitch_0
    const v4, 0xf1b33

    .line 285
    .restart local v4    # "commitCode":I
    new-array v0, v11, [Ljava/lang/String;

    const-string/jumbo v1, "lwp upload param is null: "

    aput-object v1, v0, v7

    .line 286
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string/jumbo v1, ": "

    aput-object v1, v0, v9

    aput-object p2, v0, v10

    .line 285
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 287
    .restart local v5    # "commitMsg":Ljava/lang/String;
    goto :goto_1

    .line 289
    .end local v4    # "commitCode":I
    .end local v5    # "commitMsg":Ljava/lang/String;
    :sswitch_1
    const v4, 0xf1b3e

    .line 290
    .restart local v4    # "commitCode":I
    new-array v0, v11, [Ljava/lang/String;

    const-string/jumbo v1, "lwp upload file not found: "

    aput-object v1, v0, v7

    .line 291
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string/jumbo v1, ": "

    aput-object v1, v0, v9

    aput-object p2, v0, v10

    .line 290
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 292
    .restart local v5    # "commitMsg":Ljava/lang/String;
    goto :goto_1

    .line 294
    .end local v4    # "commitCode":I
    .end local v5    # "commitMsg":Ljava/lang/String;
    :sswitch_2
    const v4, 0xf1b3d

    .line 295
    .restart local v4    # "commitCode":I
    new-array v0, v11, [Ljava/lang/String;

    const-string/jumbo v1, "lwp upload file read error: "

    aput-object v1, v0, v7

    .line 296
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string/jumbo v1, ": "

    aput-object v1, v0, v9

    aput-object p2, v0, v10

    .line 295
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 297
    .restart local v5    # "commitMsg":Ljava/lang/String;
    goto :goto_1

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        0x9c41 -> :sswitch_1
        0x9c43 -> :sswitch_0
        0x9c4a -> :sswitch_2
    .end sparse-switch
.end method

.method public final onProgress(JJI)V
    .locals 9
    .param p1, "totalSize"    # J
    .param p3, "uploadedSize"    # J
    .param p5, "per"    # I

    .prologue
    const/4 v2, 0x2

    .line 202
    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    .line 1057
    iget v0, v0, Lgpj;->w:I

    .line 202
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    iget-object v0, v0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    .line 203
    :cond_0
    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    .line 2057
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgpj;->u:Z

    .line 204
    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    .line 3057
    iput-wide p3, v0, Lgpj;->v:J

    .line 205
    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    iget-object v0, v0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, p3, p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadedSize(J)V

    .line 206
    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    iget-object v0, v0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 208
    iget-object v1, p0, Lgpj$2;->a:Lgpj;

    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    iget-object v3, v0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lgpj;->a(ILjava/lang/Object;JJ)V

    .line 214
    :goto_0
    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    iget-wide v0, v0, Lgpj;->t:J

    cmp-long v0, v0, p3

    if-lez v0, :cond_1

    .line 215
    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    const-wide/32 v2, 0x7d000

    sub-long v2, p3, v2

    iput-wide v2, v0, Lgpj;->t:J

    .line 217
    :cond_1
    return-void

    .line 210
    :cond_2
    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    .line 4057
    iget v1, v0, Lgpj;->w:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lgpj;->w:I

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 198
    check-cast p1, Lifx;

    .line 4221
    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    .line 5057
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgpj;->u:Z

    .line 4222
    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    iget-object v1, p0, Lgpj$2;->a:Lgpj;

    iget-object v1, v1, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    .line 6057
    iput-wide v2, v0, Lgpj;->v:J

    .line 4224
    if-eqz p1, :cond_0

    .line 7026
    iget-object v0, p1, Lifx;->a:Ljava/lang/String;

    .line 4224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4225
    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    iget-object v0, v0, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "5"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 4227
    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    iget-object v0, v0, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "6"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 4229
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lth;->a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-result-object v1

    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    iget-object v0, v0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    iget-object v0, v0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    .line 8026
    iget-object v6, p1, Lifx;->a:Ljava/lang/String;

    .line 4229
    new-instance v7, Lgpj$2$1;

    invoke-direct {v7, p0, p1}, Lgpj$2$1;-><init>(Lgpj$2;Lifx;)V

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->updateUploadedSizeAndUrl(JJLjava/lang/String;Lxv;)V

    :goto_0
    return-void

    .line 4256
    :cond_0
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpj$2;->a:Lgpj;

    iget-object v1, v1, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "5"

    const-string/jumbo v3, "1052"

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 4257
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpj$2;->a:Lgpj;

    iget-object v1, v1, Lgpj;->s:Lgoy;

    const-string/jumbo v2, "5031"

    invoke-virtual {v1, v2, v4}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 4259
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "lwpUploadFile"

    const-string/jumbo v2, "doUploadFile"

    iget-object v3, p0, Lgpj$2;->a:Lgpj;

    iget-object v3, v3, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const v4, 0xf1b38

    const-string/jumbo v5, "upload finish but i got null mediaID"

    invoke-virtual/range {v0 .. v5}, Lgos;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    .line 4262
    iget-object v0, p0, Lgpj$2;->a:Lgpj;

    iget-object v1, p0, Lgpj$2;->a:Lgpj;

    iget-object v1, v1, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const-string/jumbo v2, "5000003"

    const-string/jumbo v3, "upload finish but i got null mediaID"

    invoke-virtual {v0, v1, v2, v3}, Lgpj;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
