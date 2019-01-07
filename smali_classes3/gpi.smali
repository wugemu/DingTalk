.class public final Lgpi;
.super Lgph;
.source "CSpaceUploadThroughHttpTask.java"


# instance fields
.field private final u:Ljava/lang/String;

.field private v:Lyb;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;ILandroid/content/Context;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "conflictType"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgph;-><init>(Ljava/lang/String;Ljava/lang/Object;ZILandroid/content/Context;)V

    .line 58
    const-string/jumbo v0, "CSpaceUploadThroughHttpTask"

    iput-object v0, p0, Lgpi;->u:Ljava/lang/String;

    .line 64
    return-void
.end method

.method static synthetic a(Lgpi;)V
    .locals 0
    .param p0, "x0"    # Lgpi;

    .prologue
    .line 56
    invoke-super {p0}, Lgph;->a()V

    return-void
.end method

.method static synthetic a(Lgpi;Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 6
    .param p0, "x0"    # Lgpi;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 56
    .line 2362
    if-nez p2, :cond_0

    .line 2363
    const-string/jumbo v0, "(AlimeiSdkException is null)"

    move-object v1, v0

    .line 2368
    :goto_0
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "CSpaceUploadThroughHttpTask"

    const/4 v4, 0x0

    iget-object v5, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2369
    invoke-static {p1, v1, v0, v4, v5}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v0

    .line 2368
    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 2365
    :cond_0
    const-string/jumbo v1, "(see error msg)"

    .line 2366
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lgpi;)V
    .locals 6
    .param p0, "x0"    # Lgpi;

    .prologue
    .line 56
    .line 2137
    iget-boolean v0, p0, Lgpi;->d:Z

    if-nez v0, :cond_0

    .line 2141
    iget-object v0, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 2142
    const-string/jumbo v0, "upload_id"

    iput-object v0, p0, Lgpi;->j:Ljava/lang/String;

    .line 2144
    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v1, 0x2

    iput v1, v0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadStatus:I

    .line 2146
    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2147
    iget-object v0, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "2"

    const-string/jumbo v2, "N"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    iget-object v0, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 2149
    invoke-direct {p0}, Lgpi;->d()V

    .line 2150
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lth;->a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-result-object v0

    iget-object v1, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->createUploadId(JJ)V

    :cond_0
    :goto_0
    return-void

    .line 2152
    :cond_1
    iget-object v0, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "2"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    iget-object v0, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 2155
    invoke-direct {p0}, Lgpi;->c()V

    goto :goto_0
.end method

.method private c()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 163
    iget-boolean v0, p0, Lgpi;->d:Z

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 167
    :cond_0
    const-string/jumbo v0, "upload"

    iput-object v0, p0, Lgpi;->j:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 170
    iget-object v3, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lgpi;->a(ILjava/lang/Object;JJ)V

    .line 173
    iget-wide v0, p0, Lgpi;->t:J

    iget-object v3, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 174
    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v0

    const-wide/32 v4, 0x7d000

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lgpi;->t:J

    .line 177
    :cond_1
    iget-object v0, p0, Lgpi;->a:Landroid/content/Context;

    invoke-static {v0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v3, "5"

    const-string/jumbo v4, "1041"

    invoke-virtual {v1, v3, v4, v10}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 179
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpi;->s:Lgoy;

    const-string/jumbo v3, "5010"

    invoke-virtual {v1, v3, v10}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 181
    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const-string/jumbo v1, "6000000"

    iget-object v3, p0, Lgpi;->a:Landroid/content/Context;

    sget v4, Lfzs$h;->network_no_connection:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3, v2}, Lgpi;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 185
    :cond_2
    iget-boolean v0, p0, Lgpi;->i:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgpi;->a:Landroid/content/Context;

    invoke-static {v0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 186
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v3, "5"

    const-string/jumbo v4, "1042"

    invoke-virtual {v1, v3, v4, v10}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 187
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpi;->s:Lgoy;

    const-string/jumbo v3, "5011"

    invoke-virtual {v1, v3, v10}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 189
    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const-string/jumbo v1, "13027001"

    iget-object v3, p0, Lgpi;->a:Landroid/content/Context;

    sget v4, Lfzs$h;->dt_cspace_upload_mobilenetwork:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3, v2}, Lgpi;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 193
    :cond_3
    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTempUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v0

    iget-object v2, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 194
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    iget-object v1, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1}, Lgos;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 195
    iget-object v0, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "5"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v8

    .line 197
    .local v8, "uploadedSize":J
    :goto_1
    iget-wide v0, p0, Lgpi;->t:J

    cmp-long v0, v8, v0

    if-lez v0, :cond_4

    .line 198
    iget-object v0, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    iget-wide v2, p0, Lgpi;->t:J

    sub-long v2, v8, v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->transferSize:J

    .line 200
    :cond_4
    iget-object v0, p0, Lgpi;->s:Lgoy;

    iget-object v1, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    iget-wide v2, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->transferSize:J

    iput-wide v2, v0, Lgoy;->transferSize:J

    .line 202
    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTempUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgpi;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    .end local v8    # "uploadedSize":J
    :cond_5
    const-wide/16 v8, 0x0

    goto :goto_1

    .line 204
    :cond_6
    invoke-direct {p0}, Lgpi;->d()V

    .line 205
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    iget-object v1, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1}, Lgos;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 206
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lth;->a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-result-object v0

    iget-object v1, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->upload(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lgpi;)V
    .locals 0
    .param p0, "x0"    # Lgpi;

    .prologue
    .line 56
    invoke-direct {p0}, Lgpi;->c()V

    return-void
.end method

.method private d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 238
    iget-object v0, p0, Lgpi;->v:Lyb;

    if-eqz v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 242
    :cond_0
    new-instance v0, Lgpi$2;

    invoke-direct {v0, p0}, Lgpi$2;-><init>(Lgpi;)V

    iput-object v0, p0, Lgpi;->v:Lyb;

    .line 333
    invoke-static {}, Lth;->a()Lya;

    move-result-object v0

    iget-object v1, p0, Lgpi;->v:Lyb;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "cspace_dentry_create_upload_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "cspace_dentry_upload"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lya;->a(Lyb;[Ljava/lang/String;)V

    goto :goto_0
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

    .line 75
    iget-object v0, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "cspace_upload"

    const-string/jumbo v4, "1.2"

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "dp_https"

    iput-object v1, v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->channelType:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lgpx;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->mime:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-static {}, Lgot;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "1"

    :goto_1
    iput-object v0, v1, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->vipFlag:Ljava/lang/String;

    .line 79
    iget-object v4, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v0

    :goto_2
    iput-wide v0, v4, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->totalSize:J

    .line 80
    iget-object v0, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lgpi;->s:Lgoy;

    const-string/jumbo v1, "upload"

    const-string/jumbo v4, "1.2"

    invoke-virtual {v0, v1, v4}, Lgoy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lgpi;->s:Lgoy;

    const-string/jumbo v1, "https"

    iput-object v1, v0, Lgoy;->channelType:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lgpi;->s:Lgoy;

    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lgpx;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, v1, Lgoy;->mime:Ljava/lang/String;

    .line 85
    iget-object v4, p0, Lgpi;->s:Lgoy;

    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v0

    :goto_4
    iput-wide v0, v4, Lgoy;->totalSize:J

    .line 87
    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    :cond_0
    iput-wide v2, p0, Lgpi;->t:J

    .line 89
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceUploadThroughHttpTask"

    const-string/jumbo v2, "CSpaceUploadThroughHttpTask start : "

    iget-object v3, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, v3}, Lgot;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lgpi;->k:Lcom/alibaba/doraemon/threadpool/Thread;

    if-nez v0, :cond_6

    .line 93
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpi;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "1010"

    invoke-virtual {v1, v2, v3, v5}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 94
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v0

    iget-object v1, p0, Lgpi;->s:Lgoy;

    const-string/jumbo v2, "5999"

    invoke-virtual {v1, v2, v5}, Lgoy;->b(Ljava/lang/String;Ljava/lang/String;)Lgoy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 96
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    const-string/jumbo v1, "httpUploadFile"

    const-string/jumbo v2, "localPreCheck"

    iget-object v3, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const v4, 0xf1b32

    const-string/jumbo v5, "mRunThread is null"

    invoke-virtual/range {v0 .. v5}, Lgos;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V

    .line 99
    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const-string/jumbo v1, "600"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->dt_space_error_inner:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lgpi;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_5
    return-void

    .line 77
    :cond_1
    const-string/jumbo v0, ""

    goto/16 :goto_0

    .line 78
    :cond_2
    const-string/jumbo v0, "0"

    goto/16 :goto_1

    :cond_3
    move-wide v0, v2

    .line 79
    goto/16 :goto_2

    .line 84
    :cond_4
    const-string/jumbo v0, ""

    goto/16 :goto_3

    :cond_5
    move-wide v0, v2

    .line 85
    goto/16 :goto_4

    .line 103
    :cond_6
    iget-object v0, p0, Lgpi;->k:Lcom/alibaba/doraemon/threadpool/Thread;

    new-instance v1, Lgpi$1;

    invoke-direct {v1, p0}, Lgpi$1;-><init>(Lgpi;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_5
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 226
    iget-object v0, p0, Lgpi;->v:Lyb;

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lth;->a()Lya;

    move-result-object v0

    iget-object v1, p0, Lgpi;->v:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lgpi;->v:Lyb;

    .line 231
    :cond_0
    invoke-super {p0, p1}, Lgph;->a(Ljava/lang/Object;)V

    .line 232
    return-void
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
    const/4 v4, 0x0

    .line 212
    iget-object v0, p0, Lgpi;->v:Lyb;

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lth;->a()Lya;

    move-result-object v0

    iget-object v1, p0, Lgpi;->v:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 214
    iput-object v4, p0, Lgpi;->v:Lyb;

    .line 217
    :cond_0
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "uploadtask"

    const-string/jumbo v2, "CSpaceUploadThroughHttpTask"

    iget-object v3, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, p2, p3, v4, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-super {p0, p1, p2, p3}, Lgph;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public final a(Z)V
    .locals 6
    .param p1, "startNewTask"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x4

    .line 338
    iget-boolean v0, p0, Lgpi;->d:Z

    if-eqz v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceUploadThroughHttpTask"

    const-string/jumbo v2, "CSpaceUploadThroughHttpTask cancel : "

    iget-object v3, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2, v3}, Lgot;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 347
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_upload_cancel_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lgpi;->a:Landroid/content/Context;

    iget-object v1, p0, Lgpi;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1481
    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "UploadDentryCommand:upload:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ":uploaded:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-static {v0, v1}, Lcom/alibaba/alimei/framework/AlimeiService;->cancelCommandByBizUUID(Landroid/content/Context;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lgpi;->v:Lyb;

    if-eqz v0, :cond_1

    .line 352
    invoke-static {}, Lth;->a()Lya;

    move-result-object v0

    iget-object v1, p0, Lgpi;->v:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lgpi;->v:Lyb;

    .line 356
    :cond_1
    invoke-super {p0, p1}, Lgph;->a(Z)V

    goto :goto_0
.end method
