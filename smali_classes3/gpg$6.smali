.class final Lgpg$6;
.super Ljava/lang/Object;
.source "CSpaceDownloadTask.java"

# interfaces
.implements Lyb;


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
    .line 632
    iput-object p1, p0, Lgpg$6;->a:Lgpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 14
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v13, 0x0

    .line 635
    iget-object v0, p1, Lyc;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v0, :cond_1

    .line 726
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 638
    :cond_1
    iget-object v12, p1, Lyc;->g:Ljava/lang/Object;

    check-cast v12, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 639
    .local v12, "tempDentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    iget-object v0, v0, Lgpg;->h:Lgpf$b;

    invoke-interface {v0, v12}, Lgpf$b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgpg$6;->a:Lgpg;

    iget-object v1, v1, Lgpg;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    const-string/jumbo v1, "mDownloadEventListener: status: %d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p1, Lyc;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static {v0, v1, v2}, Lgpg;->a(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    iget v0, p1, Lyc;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 669
    :pswitch_1
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    iget-object v1, p0, Lgpg$6;->a:Lgpg;

    iget-object v1, v1, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2262
    invoke-static {v1}, Lgos$a;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v1

    .line 2263
    if-eqz v1, :cond_2

    .line 2266
    iget-object v0, v0, Lgos;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgos$a;

    .line 2267
    if-eqz v0, :cond_2

    .line 2270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lgos$a;->c:J

    .line 671
    :cond_2
    invoke-virtual {v12}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 672
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    const-string/jumbo v1, "mDownloadEventListener: StatusFinished: paused"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgpg;->b(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    const-string/jumbo v1, "6000001"

    const-string/jumbo v2, "downloadCancel"

    .line 678
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lfzs$h;->dt_common_cancel_download:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 676
    invoke-static {v0, v1, v2, v3, v13}, Lgpg;->a(Lgpg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 646
    :pswitch_2
    invoke-static {p1}, Lgpg;->a(Lyc;)Landroid/util/Pair;

    move-result-object v11

    .line 647
    .local v11, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v11, :cond_3

    .line 648
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    const-string/jumbo v1, "mDownloadEventListener: StatusFailure: errorCode: %d, errorMsg: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v3, v2, v13

    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lgpg;->b(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "httpDownloadFile"

    const-string/jumbo v2, "/attachment/mdown"

    iget-object v3, p0, Lgpg$6;->a:Lgpg;

    iget-object v3, v3, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v4, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 652
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 650
    invoke-virtual/range {v0 .. v5}, Lgos;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    .line 654
    invoke-static {}, Lgou;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$6;->a:Lgpg;

    iget-object v1, v1, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "6"

    const-string/jumbo v3, "1061"

    iget-object v4, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 655
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceDownloadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$6;->a:Lgpg;

    iget-object v1, v1, Lgpg;->o:Lgoy;

    const-string/jumbo v2, "6040"

    iget-object v3, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 658
    :cond_3
    iget-object v10, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 659
    .local v10, "ex":Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    iget-object v2, p0, Lgpg$6;->a:Lgpg;

    if-nez v10, :cond_4

    const v0, 0xf1b38

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "download"

    if-nez v10, :cond_5

    const-string/jumbo v0, "eventMessage.exception is null"

    move-object v1, v0

    .line 1625
    :goto_2
    if-eqz p1, :cond_6

    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isNetworkError()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v6

    .line 659
    :goto_3
    invoke-static {v2, v3, v4, v1, v0}, Lgpg;->a(Lgpg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v10}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v0

    goto :goto_1

    .line 661
    :cond_5
    invoke-virtual {v10}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_6
    move v0, v13

    .line 1625
    goto :goto_3

    .line 683
    .end local v10    # "ex":Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .end local v11    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_7
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    iget-object v0, v0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v12}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLocalUrl(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    iget-object v0, v0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p0, Lgpg$6;->a:Lgpg;

    iget-object v1, v1, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDownloadedSize(J)V

    .line 687
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    iget-object v0, v0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    iget-object v0, v0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v8

    .line 688
    .local v8, "downloadSize":J
    :goto_4
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    .line 3073
    iget-wide v0, v0, Lgpg;->m:J

    .line 688
    cmp-long v0, v8, v0

    if-lez v0, :cond_8

    .line 689
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    iget-object v0, v0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    iget-object v1, p0, Lgpg$6;->a:Lgpg;

    .line 4073
    iget-wide v2, v1, Lgpg;->m:J

    .line 689
    sub-long v2, v8, v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->transferSize:J

    .line 691
    :cond_8
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    iget-object v0, v0, Lgpg;->o:Lgoy;

    iget-object v1, p0, Lgpg$6;->a:Lgpg;

    iget-object v1, v1, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    iget-wide v2, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->transferSize:J

    iput-wide v2, v0, Lgoy;->transferSize:J

    .line 694
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    iget-object v0, v0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "6"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "httpDownloadFile"

    const-string/jumbo v2, "/attachment/mdown"

    iget-object v3, p0, Lgpg$6;->a:Lgpg;

    iget-object v3, v3, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1, v2, v3}, Lgos;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 698
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    iget-object v0, v0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 699
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    const-string/jumbo v1, "mDownloadEventListener: StatusFinished: decrypt"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgpg;->b(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    const-string/jumbo v1, "download"

    invoke-static {v0, v1}, Lgpg;->b(Lgpg;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 687
    .end local v8    # "downloadSize":J
    :cond_9
    const-wide/16 v8, 0x0

    goto :goto_4

    .line 703
    .restart local v8    # "downloadSize":J
    :cond_a
    invoke-static {}, Lgou;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$6;->a:Lgpg;

    iget-object v1, v1, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalSuccessModel()Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 704
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceDownloadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg$6;->a:Lgpg;

    iget-object v1, v1, Lgpg;->o:Lgoy;

    invoke-virtual {v1}, Lgoy;->a()Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 706
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    iget-object v1, p0, Lgpg$6;->a:Lgpg;

    iget-object v1, v1, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgpg;->a(Lgpg;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 711
    .end local v8    # "downloadSize":J
    :pswitch_3
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    iget-object v0, v0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v12}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDownloadedSize(J)V

    .line 714
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    .line 5073
    iget-wide v0, v0, Lgpg;->m:J

    .line 714
    invoke-virtual {v12}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    .line 715
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    invoke-virtual {v12}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v2

    const-wide/32 v4, 0xa0000

    sub-long/2addr v2, v4

    .line 6073
    iput-wide v2, v0, Lgpg;->m:J

    .line 718
    :cond_b
    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    iget-boolean v0, v0, Lgpg;->f:Z

    if-eqz v0, :cond_0

    .line 719
    iget-object v1, p0, Lgpg$6;->a:Lgpg;

    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    iget-object v3, v0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    iget-object v0, v0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    iget-object v0, p0, Lgpg$6;->a:Lgpg;

    iget-object v0, v0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v6

    move v2, v13

    invoke-virtual/range {v1 .. v7}, Lgpg;->a(ILjava/lang/Object;JJ)V

    goto/16 :goto_0

    .line 644
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
