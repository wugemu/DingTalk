.class public final Lgpg;
.super Lgpf;
.source "CSpaceDownloadTask.java"


# instance fields
.field protected l:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field m:J

.field protected n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

.field protected o:Lgoy;

.field private p:Lyb;

.field private q:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lgpf;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;-><init>()V

    iput-object v0, p0, Lgpg;->q:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgpg;->m:J

    .line 95
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;-><init>()V

    iput-object v0, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    .line 96
    new-instance v0, Lgoy;

    invoke-direct {v0}, Lgoy;-><init>()V

    iput-object v0, p0, Lgpg;->o:Lgoy;

    .line 101
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    .line 102
    check-cast p2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .end local p2    # "object":Ljava/lang/Object;
    iput-object p2, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 107
    :goto_0
    iput-object p3, p0, Lgpg;->a:Landroid/content/Context;

    .line 108
    return-void

    .line 104
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v0, "CSpaceDownloadTask: mDentryModel is not inited"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lgpg;)V
    .locals 0
    .param p0, "x0"    # Lgpg;

    .prologue
    .line 73
    invoke-super {p0}, Lgpf;->a()V

    return-void
.end method

.method static synthetic a(Lgpg;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lgpg;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lgpg;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lgpg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lgpg;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lgpg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lgpg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lgpg;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lgpg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lgpg;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lgpg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lgpg;Z)V
    .locals 1
    .param p0, "x0"    # Lgpg;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgpg;->d(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 9
    .param p1, "flag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 452
    const-string/jumbo v1, "decrypt: flag: %s, enter"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-direct {p0, v1, v3}, Lgpg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    iget-boolean v1, p0, Lgpg;->d:Z

    if-eqz v1, :cond_1

    .line 454
    const-string/jumbo v1, "decrypt: canceled"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v1, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v3, "7"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 459
    new-instance v0, Lgpg$4;

    invoke-direct {v0, p0, p1}, Lgpg$4;-><init>(Lgpg;Ljava/lang/String;)V

    .line 525
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;>;"
    const-string/jumbo v1, "decrypt"

    iput-object v1, p0, Lgpg;->j:Ljava/lang/String;

    .line 527
    iget-boolean v1, p0, Lgpg;->f:Z

    if-eqz v1, :cond_2

    .line 528
    iget-object v3, p0, Lgpg;->q:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    iget-object v1, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    iget-object v1, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lgpg;->a(ILjava/lang/Object;JJ)V

    .line 531
    :cond_2
    iget-object v1, p0, Lgpg;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 532
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v4, Lcma;

    iget-object v1, p0, Lgpg;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v3, v0, v4, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;>;"
    check-cast v0, Lcma;

    .line 535
    .restart local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;>;"
    :cond_3
    const-string/jumbo v1, "decrypt: call CryptFileManager.decrypt"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lgpg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    invoke-static {}, Lglf;->a()Lglf;

    move-result-object v1

    iget-object v2, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3081
    if-eqz v0, :cond_0

    .line 3085
    const-string/jumbo v3, "crypt_file"

    invoke-static {v3, v8}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lglf$2;

    invoke-direct {v4, v1, v2, v0}, Lglf$2;-><init>(Lglf;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 597
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lgpg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 598
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "isCommitError"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 601
    const-string/jumbo v1, "notifyFailed: enter, errorCode: %s, flag: %s, errorMsg: %s, isCommitError: %b"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    iget-object v1, p0, Lgpg;->p:Lyb;

    if-eqz v1, :cond_0

    .line 604
    invoke-static {}, Lth;->a()Lya;

    move-result-object v1

    iget-object v2, p0, Lgpg;->p:Lyb;

    invoke-interface {v1, v2}, Lya;->a(Lyb;)V

    .line 607
    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo v1, "6000001"

    .line 608
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "408"

    .line 609
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "400"

    .line 610
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 611
    iget-object v1, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v4, p0, Lgpg;->j:Ljava/lang/String;

    move v2, v0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lgoq;->b(ZLcom/alibaba/alimei/cspace/model/DentryModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_1
    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-super {p0, v0, p1, p3}, Lgpf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 617
    .local v6, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, "notifyFailed---"

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 618
    invoke-virtual {v6, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 619
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 620
    .local v7, "method":Ljava/lang/String;
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "spacedownloadtask"

    const/4 v2, 0x0

    iget-object v3, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v7, p1, p3, v2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 764
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    invoke-static {v1}, Lgpp;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    invoke-direct {p0, p1}, Lgpg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4065
    const-string/jumbo v2, "cspace_download"

    const-string/jumbo v3, "cspace_download"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4, v1, p2}, Lgpp;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lgpg;)V
    .locals 6
    .param p0, "x0"    # Lgpg;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 73
    .line 5190
    const-string/jumbo v0, "checkNetWork: enter"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5191
    iget-boolean v0, p0, Lgpg;->d:Z

    if-eqz v0, :cond_0

    .line 5192
    const-string/jumbo v0, "checkNetWork: canceled"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5208
    :goto_0
    return-void

    .line 5196
    :cond_0
    iget-object v0, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 5197
    const-string/jumbo v0, "check_net"

    iput-object v0, p0, Lgpg;->j:Ljava/lang/String;

    .line 5198
    iget-object v0, p0, Lgpg;->a:Landroid/content/Context;

    invoke-static {v0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5199
    const-string/jumbo v0, "checkNetWork: disconnected network, fail"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5201
    invoke-static {}, Lgou;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "2"

    const-string/jumbo v3, "1021"

    invoke-virtual {v1, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 5202
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceDownloadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg;->o:Lgoy;

    const-string/jumbo v2, "6010"

    invoke-virtual {v1, v2, v5}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 5204
    const-string/jumbo v0, "00001"

    const-string/jumbo v1, "checkNet"

    .line 5206
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->network_no_connection:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5204
    invoke-direct {p0, v0, v1, v2, v4}, Lgpg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 5210
    :cond_1
    iget-object v0, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "2"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 5216
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgpg;->d(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lgpg;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lgpg;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lgpg;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lgpg;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 582
    const-string/jumbo v1, "notifySuccess: enter: url: %s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-direct {p0, v1, v4}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    iget-object v1, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v4, p0, Lgpg;->j:Ljava/lang/String;

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lgoq;->b(ZLcom/alibaba/alimei/cspace/model/DentryModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lgpg;->p:Lyb;

    if-eqz v1, :cond_0

    .line 588
    invoke-static {}, Lth;->a()Lya;

    move-result-object v1

    iget-object v4, p0, Lgpg;->p:Lyb;

    invoke-interface {v1, v4}, Lya;->a(Lyb;)V

    .line 592
    :cond_0
    iget-object v1, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lgoq;->b(ZLcom/alibaba/alimei/cspace/model/DentryModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-super {p0, p1}, Lgpf;->a(Ljava/lang/Object;)V

    .line 594
    return-void
.end method

.method private varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 774
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x14

    invoke-static {v1}, Lgpp;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    invoke-direct {p0, p1}, Lgpg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5061
    const-string/jumbo v2, "cspace_download"

    const-string/jumbo v3, "cspace_download"

    const/16 v4, 0x14

    invoke-static {v2, v3, v4, v1, p2}, Lgpp;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 783
    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v0, :cond_0

    .line 784
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "[CSpaceDownloadTask: key: "

    aput-object v1, v0, v2

    iget-object v1, p0, Lgpg;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "], "

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[CSpaceDownloadTask: key: "

    aput-object v1, v0, v2

    iget-object v1, p0, Lgpg;->g:Ljava/lang/String;

    .line 787
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, ", ids: "

    aput-object v1, v0, v4

    iget-object v1, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 788
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "-"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    iget-object v2, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 789
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 790
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "], "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object p1, v0, v1

    .line 786
    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 430
    const-string/jumbo v0, "download: enter"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iget-boolean v0, p0, Lgpg;->d:Z

    if-eqz v0, :cond_0

    .line 432
    const-string/jumbo v0, "download: canceled"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "6"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lgpg;->p:Lyb;

    if-nez v0, :cond_1

    .line 1632
    new-instance v0, Lgpg$6;

    invoke-direct {v0, p0}, Lgpg$6;-><init>(Lgpg;)V

    iput-object v0, p0, Lgpg;->p:Lyb;

    .line 1729
    invoke-static {}, Lth;->a()Lya;

    move-result-object v0

    iget-object v1, p0, Lgpg;->p:Lyb;

    new-array v2, v4, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 441
    :cond_1
    const-string/jumbo v0, "download"

    iput-object v0, p0, Lgpg;->j:Ljava/lang/String;

    .line 442
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    iget-object v1, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2250
    invoke-static {v1}, Lgos$a;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v1

    .line 2251
    if-eqz v1, :cond_2

    .line 2254
    iget-object v0, v0, Lgos;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgos$a;

    .line 2255
    if-eqz v0, :cond_2

    .line 2258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lgos$a;->b:J

    .line 444
    :cond_2
    const-string/jumbo v0, "download: call alimei download"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lth;->a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-result-object v0

    iget-object v1, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->download(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0
.end method

.method static synthetic c(Lgpg;)V
    .locals 6
    .param p0, "x0"    # Lgpg;

    .prologue
    const/4 v5, 0x0

    .line 73
    .line 5293
    const-string/jumbo v0, "info: enter"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5294
    iget-boolean v0, p0, Lgpg;->d:Z

    if-eqz v0, :cond_0

    .line 5295
    const-string/jumbo v0, "info: canceled"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5296
    :goto_0
    return-void

    .line 5299
    :cond_0
    iget-object v0, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "4"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 5300
    new-instance v2, Lgpg$3;

    invoke-direct {v2, p0}, Lgpg$3;-><init>(Lgpg;)V

    .line 5340
    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 5341
    :goto_1
    const-string/jumbo v0, "info"

    iput-object v0, p0, Lgpg;->j:Ljava/lang/String;

    .line 5342
    iget-object v0, p0, Lgpg;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 5343
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v4, Lcma;

    iget-object v0, p0, Lgpg;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v3, v2, v4, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5346
    :goto_2
    const-string/jumbo v2, "info: call infoDentry: spaceId: %s, fileId: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {p0, v2, v3}, Lgpg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5347
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    iget-object v3, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 5340
    :cond_1
    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2
.end method

.method static synthetic d(Lgpg;)V
    .locals 5
    .param p0, "x0"    # Lgpg;

    .prologue
    const/4 v4, 0x0

    .line 73
    .line 5355
    const-string/jumbo v0, "checkLocal: enter"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5356
    iget-boolean v0, p0, Lgpg;->d:Z

    if-eqz v0, :cond_0

    .line 5357
    const-string/jumbo v0, "checkLocal: canceled"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5414
    :goto_0
    return-void

    .line 5361
    :cond_0
    iget-object v0, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 5362
    const-string/jumbo v0, "check_local"

    iput-object v0, p0, Lgpg;->j:Ljava/lang/String;

    .line 5364
    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5365
    const-string/jumbo v0, "checkLocal: isCrypt: true"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5367
    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCryptLocalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpv;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5369
    const-string/jumbo v0, "checkLocal: plain text file exists, success"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5371
    iget-object v0, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "5"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 5372
    invoke-static {}, Lgou;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalSuccessModel()Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 5373
    iget-object v0, p0, Lgpg;->o:Lgoy;

    const-string/jumbo v1, "1"

    iput-object v1, v0, Lgoy;->a:Ljava/lang/String;

    .line 5374
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceDownloadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg;->o:Lgoy;

    invoke-virtual {v1}, Lgoy;->a()Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 5376
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "httpDownloadFile"

    const-string/jumbo v2, "localPreCheck"

    iget-object v3, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1, v2, v3}, Lgos;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 5378
    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCryptLocalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgpg;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 5380
    :cond_1
    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lgpv;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5382
    const-string/jumbo v0, "checkLocal: cipher text file exists, decrypt"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5384
    iget-object v0, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "5"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 5385
    iget-object v0, p0, Lgpg;->o:Lgoy;

    const-string/jumbo v1, "1"

    iput-object v1, v0, Lgoy;->a:Ljava/lang/String;

    .line 5388
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "httpDownloadFile"

    const-string/jumbo v2, "localPreCheck"

    iget-object v3, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1, v2, v3}, Lgos;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 5390
    const-string/jumbo v0, "checklocal"

    invoke-direct {p0, v0}, Lgpg;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5394
    :cond_2
    const-string/jumbo v0, "checkLocal: local file not found\uff0cdownload"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5396
    iget-object v0, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "5"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 5397
    invoke-direct {p0}, Lgpg;->c()V

    goto/16 :goto_0

    .line 5401
    :cond_3
    const-string/jumbo v0, "checkLocal: isCrypt: false"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5403
    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lgpv;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5405
    const-string/jumbo v0, "checkLocal: local file exists, success"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5407
    iget-object v0, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "5"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 5408
    invoke-static {}, Lgou;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalSuccessModel()Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 5409
    iget-object v0, p0, Lgpg;->o:Lgoy;

    const-string/jumbo v1, "1"

    iput-object v1, v0, Lgoy;->a:Ljava/lang/String;

    .line 5410
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceDownloadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg;->o:Lgoy;

    invoke-virtual {v1}, Lgoy;->a()Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 5412
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "httpDownloadFile"

    const-string/jumbo v2, "localPreCheck"

    iget-object v3, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1, v2, v3}, Lgos;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 5414
    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgpg;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5418
    :cond_4
    const-string/jumbo v0, "checkLocal: local file not found\uff0cdownload"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5420
    iget-object v0, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "5"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 5421
    invoke-direct {p0}, Lgpg;->c()V

    goto/16 :goto_0
.end method

.method private d(Z)V
    .locals 5
    .param p1, "isFirst"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 223
    const-string/jumbo v1, "checkLogin: enter, isFirst: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v1, v2}, Lgpg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-boolean v1, p0, Lgpg;->d:Z

    if-eqz v1, :cond_0

    .line 225
    const-string/jumbo v1, "checkLogin: canceled"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "3"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 231
    new-instance v0, Lgpg$2;

    invoke-direct {v0, p0, p1}, Lgpg$2;-><init>(Lgpg;Z)V

    .line 284
    .local v0, "listener":Lgqq;
    const-string/jumbo v1, "check_login"

    iput-object v1, p0, Lgpg;->j:Ljava/lang/String;

    .line 285
    const-string/jumbo v1, "checkLogin: call checkAccountLogin"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lgpg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-static {v0}, Lfzu;->a(Lgqq;)V

    goto :goto_0
.end method

.method static synthetic e(Lgpg;)V
    .locals 3
    .param p0, "x0"    # Lgpg;

    .prologue
    const/4 v2, 0x0

    .line 73
    .line 5543
    const-string/jumbo v0, "deleteCryptFile: enter"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5544
    iget-boolean v0, p0, Lgpg;->d:Z

    if-eqz v0, :cond_0

    .line 5545
    const-string/jumbo v0, "deleteCryptFile: canceled"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5546
    :goto_0
    return-void

    .line 5549
    :cond_0
    iget-object v0, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 5550
    const-string/jumbo v0, "delete_crypt"

    iput-object v0, p0, Lgpg;->j:Ljava/lang/String;

    .line 5551
    const-string/jumbo v0, "space_delete_crypt_file"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lgpg$5;

    invoke-direct {v1, p0}, Lgpg$5;-><init>(Lgpg;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 121
    const-string/jumbo v0, "start: enter"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "cspace_download"

    const-string/jumbo v4, "1.2"

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "dp_https"

    iput-object v1, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->channelType:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lgpx;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->mime:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-static {}, Lgot;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "1"

    :goto_1
    iput-object v0, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->vipFlag:Ljava/lang/String;

    .line 127
    iget-object v4, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v0

    :goto_2
    iput-wide v0, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->totalSize:J

    .line 128
    iget-object v0, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lgpg;->o:Lgoy;

    const-string/jumbo v1, "download"

    const-string/jumbo v4, "1.2"

    invoke-virtual {v0, v1, v4}, Lgoy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lgpg;->o:Lgoy;

    const-string/jumbo v1, "https"

    iput-object v1, v0, Lgoy;->channelType:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lgpg;->o:Lgoy;

    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lgpx;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, v1, Lgoy;->mime:Ljava/lang/String;

    .line 133
    iget-object v4, p0, Lgpg;->o:Lgoy;

    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v0

    :goto_4
    iput-wide v0, v4, Lgoy;->totalSize:J

    .line 135
    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v2

    :cond_0
    iput-wide v2, p0, Lgpg;->m:J

    .line 137
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceDownloadTask"

    const-string/jumbo v2, "CSpaceDownloadTask start : "

    iget-object v3, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, v3}, Lgot;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lgpg;->k:Lcom/alibaba/doraemon/threadpool/Thread;

    if-nez v0, :cond_6

    .line 141
    const-string/jumbo v0, "start: null mRunThread, fail"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-static {}, Lgou;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg;->n:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "1010"

    invoke-virtual {v1, v2, v3, v6}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 144
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceDownloadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpg;->o:Lgoy;

    const-string/jumbo v2, "6999"

    invoke-virtual {v1, v2, v6}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 146
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "httpDownloadFile"

    const-string/jumbo v2, "localPreCheck"

    iget-object v3, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const v4, 0xf1b32

    const-string/jumbo v5, "mRunThread is null"

    invoke-virtual/range {v0 .. v5}, Lgos;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    .line 149
    const-string/jumbo v0, "600"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->dt_space_error_inner:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v6, v1}, Lgpg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_5
    return-void

    .line 125
    :cond_1
    const-string/jumbo v0, ""

    goto/16 :goto_0

    .line 126
    :cond_2
    const-string/jumbo v0, "0"

    goto/16 :goto_1

    :cond_3
    move-wide v0, v2

    .line 127
    goto/16 :goto_2

    .line 132
    :cond_4
    const-string/jumbo v0, ""

    goto/16 :goto_3

    :cond_5
    move-wide v0, v2

    .line 133
    goto/16 :goto_4

    .line 153
    :cond_6
    const-string/jumbo v0, "start: mRunThread start run"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lgpg;->k:Lcom/alibaba/doraemon/threadpool/Thread;

    new-instance v1, Lgpg$1;

    invoke-direct {v1, p0}, Lgpg$1;-><init>(Lgpg;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_5
.end method

.method public final a(Z)V
    .locals 5
    .param p1, "startNewTask"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 737
    const-string/jumbo v0, "cancel: enter"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    iget-boolean v0, p0, Lgpg;->d:Z

    if-eqz v0, :cond_1

    .line 739
    const-string/jumbo v0, "cancel: canceled"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceDownloadTask"

    const-string/jumbo v2, "CSpaceDownloadTask cancel : "

    iget-object v3, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, v3}, Lgot;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string/jumbo v0, "cancel: call super.cancel"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    invoke-super {p0, p1}, Lgpf;->a(Z)V

    .line 749
    iget-object v0, p0, Lgpg;->j:Ljava/lang/String;

    const-string/jumbo v1, "download"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 750
    iget-object v0, p0, Lgpg;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DownloadDentryCommand:download"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/framework/AlimeiService;->cancelCommandByBizUUID(Landroid/content/Context;Ljava/lang/String;)V

    .line 753
    :cond_2
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    iget-object v1, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1}, Lgos;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lgos$a;

    .line 755
    iget-object v0, p0, Lgpg;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgoq;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 757
    iget-object v0, p0, Lgpg;->p:Lyb;

    if-eqz v0, :cond_0

    .line 758
    invoke-static {}, Lth;->a()Lya;

    move-result-object v0

    iget-object v1, p0, Lgpg;->p:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    goto :goto_0
.end method
