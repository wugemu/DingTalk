.class public Lgph;
.super Lgpf;
.source "CSpaceUploadBaseTask.java"


# instance fields
.field protected l:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field m:Z

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Z

.field protected r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

.field protected s:Lgoy;

.field protected t:J

.field private u:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;ZILandroid/content/Context;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isLwp"    # Z
    .param p4, "conflictType"    # I
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lgpf;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;-><init>()V

    iput-object v0, p0, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    .line 80
    new-instance v0, Lgoy;

    invoke-direct {v0}, Lgoy;-><init>()V

    iput-object v0, p0, Lgph;->s:Lgoy;

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgph;->t:J

    .line 87
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    .line 88
    check-cast p2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .end local p2    # "data":Ljava/lang/Object;
    iput-object p2, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 90
    :cond_0
    iput-boolean p3, p0, Lgph;->m:Z

    .line 91
    iput-object p5, p0, Lgph;->a:Landroid/content/Context;

    .line 92
    iput p4, p0, Lgph;->u:I

    .line 93
    return-void
.end method

.method static synthetic a(Lgph;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 7
    .param p0, "x0"    # Lgph;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const-wide/16 v4, 0x0

    .line 55
    .line 2224
    iget-object v0, p0, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 2225
    new-instance v6, Lgph$2;

    invoke-direct {v6, p0, p1}, Lgph$2;-><init>(Lgph;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 2282
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    .line 3109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2282
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    .line 4109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2282
    invoke-virtual/range {v1 .. v6}, Lgon;->a(JJLcma;)V

    .line 55
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 97
    invoke-super {p0}, Lgpf;->a()V

    .line 98
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    iget-object v1, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1149
    invoke-static {v1}, Lgos$d;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    .line 1150
    if-eqz v2, :cond_0

    iget-object v3, v0, Lgos;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    :cond_0
    :goto_0
    iget-object v0, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgoq;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 100
    return-void

    .line 1153
    :cond_1
    new-instance v3, Lgos$d;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lgos$d;-><init>(B)V

    .line 1154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lgos$d;->a:J

    .line 1155
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v4

    iput-wide v4, v3, Lgos$d;->d:J

    .line 1156
    iget-object v0, v0, Lgos;->a:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 6
    .param p1, "info"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 311
    instance-of v0, p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 312
    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 315
    :cond_0
    invoke-super {p0, p1}, Lgpf;->a(Ljava/lang/Object;)V

    .line 318
    iget-boolean v0, p0, Lgph;->m:Z

    iget-object v1, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v2, 0x1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lgoq;->a(ZLcom/alibaba/alimei/cspace/model/DentryModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    :goto_0
    return-void

    .line 325
    :cond_1
    const-string/jumbo v0, "CSpaceUploadBaseTask"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lgph$3;

    invoke-direct {v1, p0}, Lgph$3;-><init>(Lgph;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lgph;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 288
    return-void
.end method

.method protected final a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "isCommitError"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 291
    instance-of v0, p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v0, :cond_1

    .line 292
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceUploadBaseTask"

    const-string/jumbo v2, "CSpaceUploadBaseTask notifyFailed and info not DentryModel"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 298
    iget-object v0, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-super {p0, v0, p2, p3}, Lgpf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    if-eqz p4, :cond_0

    const-string/jumbo v0, "408"

    .line 302
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 303
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 305
    iget-boolean v0, p0, Lgph;->m:Z

    iget-object v1, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v2, 0x0

    iget-object v4, p0, Lgph;->j:Ljava/lang/String;

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lgoq;->a(ZLcom/alibaba/alimei/cspace/model/DentryModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)V
    .locals 12
    .param p1, "mediaID"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 106
    iget-boolean v1, p0, Lgph;->d:Z

    if-eqz v1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "7"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 111
    iget-boolean v1, p0, Lgph;->n:Z

    if-nez v1, :cond_3

    .line 112
    iget-object v1, p0, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    const-string/jumbo v2, "7"

    const-string/jumbo v3, "Y"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lgox;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v1

    iget-object v2, p0, Lgph;->r:Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;->generalSuccessModel()Lcom/alibaba/doraemon/impl/statistics/unify/model/FullFlowUnifyStatisticsModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 114
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUploadUnifyStatistics;->e()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;

    move-result-object v1

    iget-object v2, p0, Lgph;->s:Lgoy;

    invoke-virtual {v2}, Lgoy;->a()Lgoy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceUnifyStatistics;->commit(Lcom/alibaba/doraemon/impl/statistics/unify/model/UnifyStatisticsModel;)V

    .line 116
    iget-object v1, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1, v11}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 117
    iget-object v1, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1, p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTempUrl(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v3

    iget-boolean v1, p0, Lgph;->m:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "lwpUploadFile"

    :goto_1
    iget-boolean v2, p0, Lgph;->m:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "doUploadFile"

    :goto_2
    iget-object v4, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3, v1, v2, v4}, Lgos;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 121
    iget-object v1, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p0, v1}, Lgph;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_1
    const-string/jumbo v1, "httpUploadFile"

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "/attachment/mupload"

    goto :goto_2

    .line 125
    :cond_3
    const-string/jumbo v1, "add_dentry"

    iput-object v1, p0, Lgph;->j:Ljava/lang/String;

    .line 127
    new-instance v7, Lgph$1;

    invoke-direct {v7, p0}, Lgph$1;-><init>(Lgph;)V

    .line 198
    .local v7, "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v0, Lgnx;

    invoke-direct {v0}, Lgnx;-><init>()V

    .line 199
    .local v0, "paramObject":Lgnx;
    iget v1, p0, Lgph;->u:I

    iput v1, v0, Lgnx;->a:I

    .line 200
    iget-object v1, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgnx;->b:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgnx;->c:Ljava/lang/String;

    .line 202
    iput-object p1, v0, Lgnx;->d:Ljava/lang/String;

    .line 203
    iput v11, v0, Lgnx;->e:I

    .line 204
    iput-boolean v11, v0, Lgnx;->f:Z

    .line 206
    iget-object v1, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    iget-object v1, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgnx;->g:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCorpId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgnx;->h:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getProirity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgnx;->i:Ljava/lang/String;

    .line 212
    :cond_4
    iget-boolean v1, p0, Lgph;->q:Z

    if-eqz v1, :cond_5

    .line 213
    iget-object v1, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgnx;->j:Ljava/lang/String;

    .line 216
    :cond_5
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    .line 2052
    new-instance v5, Lggv;

    invoke-direct {v5}, Lggv;-><init>()V

    .line 2054
    new-instance v6, Lgha;

    invoke-direct {v6}, Lgha;-><init>()V

    .line 2055
    iget v8, v0, Lgnx;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v6, Lgha;->a:Ljava/lang/Integer;

    .line 2056
    iput-object v6, v5, Lggv;->a:Lgha;

    .line 2057
    iget-object v6, v0, Lgnx;->b:Ljava/lang/String;

    .line 2109
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 2057
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lggv;->b:Ljava/lang/Long;

    .line 2058
    iget-object v6, v0, Lgnx;->c:Ljava/lang/String;

    iput-object v6, v5, Lggv;->c:Ljava/lang/String;

    .line 2059
    iput-object v10, v5, Lggv;->d:Ljava/lang/String;

    .line 2060
    iput-object v10, v5, Lggv;->e:Ljava/lang/String;

    .line 2061
    iget-object v6, v0, Lgnx;->d:Ljava/lang/String;

    iput-object v6, v5, Lggv;->f:Ljava/lang/String;

    .line 2062
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lggv;->g:Ljava/lang/Integer;

    .line 2063
    iput-object v10, v5, Lggv;->h:Ljava/lang/String;

    .line 2064
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lggv;->i:Ljava/lang/Boolean;

    .line 2066
    new-instance v6, Lghf;

    invoke-direct {v6}, Lghf;-><init>()V

    .line 2067
    iget-object v8, v0, Lgnx;->g:Ljava/lang/String;

    iput-object v8, v6, Lghf;->a:Ljava/lang/String;

    .line 2068
    iget-object v8, v0, Lgnx;->h:Ljava/lang/String;

    iput-object v8, v6, Lghf;->b:Ljava/lang/String;

    .line 2069
    iget-object v8, v0, Lgnx;->i:Ljava/lang/String;

    iput-object v8, v6, Lghf;->c:Ljava/lang/String;

    .line 2070
    iput-object v6, v5, Lggv;->j:Lghf;

    .line 2072
    iput-object v10, v5, Lggv;->k:Ljava/lang/String;

    .line 2073
    iput-object v10, v5, Lggv;->l:Ljava/lang/String;

    .line 2074
    iget-object v6, v0, Lgnx;->j:Ljava/lang/String;

    iput-object v6, v5, Lggv;->m:Ljava/lang/String;

    .line 2075
    iput-object v10, v5, Lggv;->n:Ljava/lang/String;

    .line 2076
    iput-object v10, v5, Lggv;->o:Ljava/lang/String;

    .line 2077
    iput-object v10, v5, Lggv;->p:Ljava/lang/String;

    .line 216
    iget-object v6, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v7}, Lgon;->a(JLjava/lang/String;Lggv;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 2
    .param p1, "startNewTask"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 352
    iget-boolean v0, p0, Lgph;->d:Z

    if-eqz v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-super {p0, p1}, Lgpf;->a(Z)V

    .line 357
    iget-object v0, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 359
    iget-object v0, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p0, v0}, Lgph;->b(Ljava/lang/Object;)V

    .line 361
    invoke-static {}, Lgos;->a()Lgos;

    move-result-object v0

    iget-object v1, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1}, Lgos;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lgos$d;

    .line 363
    iget-object v0, p0, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgoq;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0
.end method
