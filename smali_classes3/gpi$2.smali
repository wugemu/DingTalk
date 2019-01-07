.class final Lgpi$2;
.super Ljava/lang/Object;
.source "CSpaceUploadThroughHttpTask.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpi;->d()V
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
    .line 242
    iput-object p1, p0, Lgpi$2;->a:Lgpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 12
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v11, 0x0

    .line 245
    if-nez p1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p1, Lyc;->a:Ljava/lang/String;

    const-string/jumbo v1, "cspace_dentry_create_upload_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    iget v0, p1, Lyc;->c:I

    if-ne v0, v2, :cond_2

    .line 252
    iget-object v10, p1, Lyc;->g:Ljava/lang/Object;

    check-cast v10, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 253
    .local v10, "tempModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lgpi$2;->a:Lgpi;

    iget-object v2, v2, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    iget-object v0, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v10}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadId(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    iget-object v0, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadedSize(J)V

    .line 256
    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    iget-object v0, v0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "3"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    iget-object v0, v0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    invoke-static {v0}, Lgpi;->c(Lgpi;)V

    goto :goto_0

    .line 262
    .end local v10    # "tempModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_2
    iget v0, p1, Lyc;->c:I

    if-ne v0, v3, :cond_0

    .line 263
    iget-object v0, p1, Lyc;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 264
    .local v6, "id":J
    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    iget-object v0, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    const-string/jumbo v1, "createUploadId"

    iget-object v2, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v0, v1, v2}, Lgpi;->a(Lgpi;Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 267
    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    iget-object v0, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 269
    const/4 v9, 0x0

    .line 270
    .local v9, "serverErrorCode":Ljava/lang/String;
    invoke-static {p1}, Lgpi;->a(Lyc;)Landroid/util/Pair;

    move-result-object v8

    .line 271
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v8, :cond_3

    .line 272
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "httpUploadFile"

    const-string/jumbo v2, "/attachment/mcreatefile"

    iget-object v3, p0, Lgpi$2;->a:Lgpi;

    iget-object v3, v3, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 274
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 272
    invoke-virtual/range {v0 .. v5}, Lgos;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    .line 275
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_4

    move-object v9, v11

    .line 277
    :cond_3
    :goto_1
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpi$2;->a:Lgpi;

    iget-object v1, v1, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "3"

    const-string/jumbo v3, "1031"

    invoke-virtual {v1, v2, v3, v9}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 278
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpi$2;->a:Lgpi;

    iget-object v1, v1, Lgpi;->s:Lgoy;

    const-string/jumbo v2, "5001"

    invoke-virtual {v1, v2, v11}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 280
    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentrySourceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    if-ne v0, v1, :cond_5

    .line 281
    iget-object v3, p0, Lgpi$2;->a:Lgpi;

    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    iget-object v2, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const-string/jumbo v1, "13023000"

    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 283
    :goto_2
    invoke-virtual {v3, v2, v1, v0}, Lgpi;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :cond_4
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 283
    :cond_5
    iget-object v3, p0, Lgpi$2;->a:Lgpi;

    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    iget-object v2, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const-string/jumbo v1, "5000000"

    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 284
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string/jumbo v0, ""

    goto :goto_2

    .line 289
    .end local v6    # "id":J
    .end local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9    # "serverErrorCode":Ljava/lang/String;
    :cond_7
    iget-object v0, p1, Lyc;->a:Ljava/lang/String;

    const-string/jumbo v1, "cspace_dentry_upload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget v0, p1, Lyc;->c:I

    if-ne v0, v2, :cond_8

    .line 292
    iget-object v10, p1, Lyc;->g:Ljava/lang/Object;

    check-cast v10, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 293
    .restart local v10    # "tempModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lgpi$2;->a:Lgpi;

    iget-object v2, v2, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    iget-object v0, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v10}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadedSize(J)V

    .line 295
    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    iget-object v0, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v10}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTempUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTempUrl(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    invoke-static {v0}, Lgpi;->c(Lgpi;)V

    goto/16 :goto_0

    .line 299
    .end local v10    # "tempModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_8
    iget v0, p1, Lyc;->c:I

    if-ne v0, v3, :cond_0

    .line 300
    iget-object v10, p1, Lyc;->g:Ljava/lang/Object;

    check-cast v10, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 301
    .restart local v10    # "tempModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lgpi$2;->a:Lgpi;

    iget-object v2, v2, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    const-string/jumbo v1, "upload"

    iget-object v2, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v0, v1, v2}, Lgpi;->a(Lgpi;Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 304
    invoke-virtual {v10}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 305
    invoke-virtual {v10, v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 308
    :cond_9
    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    iget-object v0, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v10}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 310
    const/4 v9, 0x0

    .line 311
    .restart local v9    # "serverErrorCode":Ljava/lang/String;
    invoke-static {p1}, Lgpi;->a(Lyc;)Landroid/util/Pair;

    move-result-object v8

    .line 312
    .restart local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v8, :cond_a

    .line 313
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "httpUploadFile"

    const-string/jumbo v2, "/attachment/mupload"

    iget-object v3, p0, Lgpi$2;->a:Lgpi;

    iget-object v3, v3, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 315
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 313
    invoke-virtual/range {v0 .. v5}, Lgos;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    .line 316
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_b

    move-object v9, v11

    .line 318
    :cond_a
    :goto_3
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpi$2;->a:Lgpi;

    iget-object v1, v1, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "5"

    const-string/jumbo v3, "1051"

    invoke-virtual {v1, v2, v3, v9}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 319
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpi$2;->a:Lgpi;

    iget-object v1, v1, Lgpi;->s:Lgoy;

    const-string/jumbo v2, "5020"

    invoke-virtual {v1, v2, v11}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 321
    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentrySourceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    if-ne v0, v1, :cond_c

    .line 322
    iget-object v3, p0, Lgpi$2;->a:Lgpi;

    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    iget-object v2, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const-string/jumbo v1, "13023000"

    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_4
    invoke-virtual {v3, v2, v1, v0}, Lgpi;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    :cond_b
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 324
    :cond_c
    iget-object v3, p0, Lgpi$2;->a:Lgpi;

    iget-object v0, p0, Lgpi$2;->a:Lgpi;

    iget-object v2, v0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const-string/jumbo v1, "5000001"

    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 325
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_d
    const-string/jumbo v0, ""

    goto :goto_4
.end method
