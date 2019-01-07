.class public final Lgpj;
.super Lgph;
.source "CSpaceUploadThroughLwpTask.java"


# instance fields
.field u:Z

.field v:J

.field w:I

.field private x:Lifu;

.field private final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;ILandroid/content/Context;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "conflictType"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 78
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgph;-><init>(Ljava/lang/String;Ljava/lang/Object;ZILandroid/content/Context;)V

    .line 59
    new-instance v0, Lifu;

    invoke-direct {v0}, Lifu;-><init>()V

    iput-object v0, p0, Lgpj;->x:Lifu;

    .line 61
    iput-boolean v6, p0, Lgpj;->u:Z

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgpj;->v:J

    .line 71
    iput v6, p0, Lgpj;->w:I

    .line 75
    const-string/jumbo v0, "CSpaceUploadThroughLwpTask"

    iput-object v0, p0, Lgpj;->y:Ljava/lang/String;

    .line 79
    return-void
.end method

.method static synthetic a(Lgpj;)V
    .locals 0
    .param p0, "x0"    # Lgpj;

    .prologue
    .line 57
    invoke-super {p0}, Lgph;->a()V

    return-void
.end method

.method static synthetic b(Lgpj;)V
    .locals 10
    .param p0, "x0"    # Lgpj;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 57
    .line 1151
    iget-boolean v0, p0, Lgpj;->d:Z

    if-nez v0, :cond_0

    .line 1155
    iget-object v0, p0, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "4"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 1156
    const-string/jumbo v0, "check_net"

    iput-object v0, p0, Lgpj;->j:Ljava/lang/String;

    .line 1158
    iget-object v0, p0, Lgpj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1159
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "4"

    const-string/jumbo v3, "1041"

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 1160
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpj;->s:Lgoy;

    const-string/jumbo v2, "5010"

    invoke-virtual {v1, v2, v4}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 1162
    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const-string/jumbo v1, "6000000"

    iget-object v2, p0, Lgpj;->a:Landroid/content/Context;

    sget v3, Lfzs$h;->network_no_connection:I

    .line 1164
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1162
    invoke-virtual {p0, v0, v1, v2, v5}, Lgpj;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    iget-boolean v0, p0, Lgpj;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgpj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1170
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "4"

    const-string/jumbo v3, "1042"

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 1171
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpj;->s:Lgoy;

    const-string/jumbo v2, "5011"

    invoke-virtual {v1, v2, v4}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 1173
    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const-string/jumbo v1, "13027001"

    iget-object v2, p0, Lgpj;->a:Landroid/content/Context;

    sget v3, Lfzs$h;->dt_cspace_upload_mobilenetwork:I

    .line 1175
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1173
    invoke-virtual {p0, v0, v1, v2, v5}, Lgpj;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1179
    :cond_2
    iget-object v0, p0, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "4"

    const-string/jumbo v3, "Y"

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iget-boolean v0, p0, Lgpj;->d:Z

    if-nez v0, :cond_0

    .line 1189
    iget-object v0, p0, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 1190
    const-string/jumbo v0, "upload"

    iput-object v0, p0, Lgpj;->j:Ljava/lang/String;

    .line 1192
    invoke-static {}, Lify;->a()Lify;

    move-result-object v0

    .line 1193
    new-instance v8, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v8}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    .line 2082
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/alibaba/wukong/upload/UploadParams;->d:Z

    .line 1195
    iget-object v1, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    .line 3058
    iput-object v1, v8, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 1198
    new-instance v9, Lgpj$2;

    invoke-direct {v9, p0}, Lgpj$2;-><init>(Lgpj;)V

    .line 1311
    iget-object v1, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 1312
    iget-object v3, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    iget-object v1, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lgpj;->a(ILjava/lang/Object;JJ)V

    .line 1313
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v1

    iget-object v2, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1, v2}, Lgos;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1314
    iget-object v1, p0, Lgpj;->x:Lifu;

    invoke-virtual {v0, v8, v9, v1}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifv;Lifu;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    .line 90
    iget-object v0, p0, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "cspace_upload"

    const-string/jumbo v4, "1.2"

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "lwp"

    iput-object v1, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->channelType:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lgpx;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->mime:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-static {}, Lgot;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "1"

    :goto_1
    iput-object v0, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->vipFlag:Ljava/lang/String;

    .line 94
    iget-object v4, p0, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v0

    :goto_2
    iput-wide v0, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->totalSize:J

    .line 95
    iget-object v0, p0, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lgpj;->s:Lgoy;

    const-string/jumbo v1, "upload"

    const-string/jumbo v4, "1.2"

    invoke-virtual {v0, v1, v4}, Lgoy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lgpj;->s:Lgoy;

    const-string/jumbo v1, "lwp"

    iput-object v1, v0, Lgoy;->channelType:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lgpj;->s:Lgoy;

    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lgpx;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, v1, Lgoy;->mime:Ljava/lang/String;

    .line 100
    iget-object v4, p0, Lgpj;->s:Lgoy;

    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v0

    :goto_4
    iput-wide v0, v4, Lgoy;->totalSize:J

    .line 101
    iget-object v0, p0, Lgpj;->s:Lgoy;

    const-string/jumbo v1, "0"

    iput-object v1, v0, Lgoy;->a:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    :cond_0
    iput-wide v2, p0, Lgpj;->t:J

    .line 105
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceUploadThroughLwpTask"

    const-string/jumbo v2, "CSpaceUploadThroughLwpTask start : "

    iget-object v3, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, v3}, Lgot;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lgpj;->k:Lcom/alibaba/doraemon/threadpool/Thread;

    if-nez v0, :cond_6

    .line 109
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpj;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "1010"

    invoke-virtual {v1, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 110
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpj;->s:Lgoy;

    const-string/jumbo v2, "5999"

    invoke-virtual {v1, v2, v5}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 112
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "lwpUploadFile"

    const-string/jumbo v2, "localPreCheck"

    iget-object v3, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const v4, 0xf1b32

    const-string/jumbo v5, "mRunThread is null"

    invoke-virtual/range {v0 .. v5}, Lgos;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    .line 115
    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const-string/jumbo v1, "600"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->dt_space_error_inner:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lgpj;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_5
    return-void

    .line 92
    :cond_1
    const-string/jumbo v0, ""

    goto/16 :goto_0

    .line 93
    :cond_2
    const-string/jumbo v0, "0"

    goto/16 :goto_1

    :cond_3
    move-wide v0, v2

    .line 94
    goto/16 :goto_2

    .line 99
    :cond_4
    const-string/jumbo v0, ""

    goto/16 :goto_3

    :cond_5
    move-wide v0, v2

    .line 100
    goto/16 :goto_4

    .line 119
    :cond_6
    iget-object v0, p0, Lgpj;->k:Lcom/alibaba/doraemon/threadpool/Thread;

    new-instance v1, Lgpj$1;

    invoke-direct {v1, p0}, Lgpj$1;-><init>(Lgpj;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_5
.end method

.method protected final a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 319
    invoke-super {p0, p1, p2, p3}, Lgph;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "upload"

    const-string/jumbo v2, "CSpaceUploadThroughLwpTask.notifyFailed"

    const/4 v3, 0x0

    iget-object v4, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, p2, p3, v3, v4}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public final a(Z)V
    .locals 8
    .param p1, "startNewTask"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 327
    iget-boolean v0, p0, Lgpj;->d:Z

    if-eqz v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 331
    :cond_0
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceUploadThroughLwpTask"

    const-string/jumbo v2, "CSpaceUploadThroughLwpTask cancel : "

    iget-object v3, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, v3}, Lgot;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lgpj;->x:Lifu;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lgpj;->x:Lifu;

    invoke-virtual {v0}, Lifu;->b()V

    .line 338
    :cond_1
    iget-boolean v0, p0, Lgpj;->u:Z

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v2, p0, Lgpj;->v:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadedSize(J)V

    .line 340
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lth;->a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-result-object v1

    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lgpj;->v:J

    iget-object v0, p0, Lgpj;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTempUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->updateUploadedSizeAndUrl(JJLjava/lang/String;Lxv;)V

    .line 343
    :cond_2
    invoke-super {p0, p1}, Lgph;->a(Z)V

    goto :goto_0
.end method
