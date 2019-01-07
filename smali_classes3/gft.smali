.class public final Lgft;
.super Ljava/lang/Object;
.source "FilePreviewPresenter.java"

# interfaces
.implements Lgfs$a;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field c:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

.field d:Lgfs$b;

.field private final e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Z

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/cspace/model/DentryModel;JLjava/lang/String;ZLgfs$b;Landroid/content/Context;)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "previewVersion"    # J
    .param p4, "previewMode"    # Ljava/lang/String;
    .param p5, "waterMarkInSafeMode"    # Z
    .param p6, "view"    # Lgfs$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "FilePreviewPresenter"

    iput-object v0, p0, Lgft;->e:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lgft;->i:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lgft;->j:I

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lgft;->k:I

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lgft;->l:I

    .line 65
    iput-object p1, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 66
    iput-wide p2, p0, Lgft;->f:J

    .line 67
    iput-object p4, p0, Lgft;->g:Ljava/lang/String;

    .line 68
    iput-boolean p5, p0, Lgft;->h:Z

    .line 69
    iput-object p6, p0, Lgft;->d:Lgfs$b;

    .line 70
    iput-object p7, p0, Lgft;->a:Landroid/content/Context;

    .line 72
    invoke-interface {p6, p0}, Lgfs$b;->setPresenter(Lcjd;)V

    .line 73
    return-void
.end method

.method static synthetic a(Lgft;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "x0"    # Lgft;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 46
    .line 3263
    if-nez p1, :cond_0

    .line 3264
    iget-object v0, p0, Lgft;->a:Landroid/content/Context;

    sget v1, Lfzs$h;->cspace_file_donot_exist:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3267
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 3268
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExpireTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExpireTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 3269
    iget-object v0, p0, Lgft;->a:Landroid/content/Context;

    sget v1, Lfzs$h;->cspace_file_expired_time:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExpireTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lgqh;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3271
    :cond_1
    iget-object v0, p0, Lgft;->a:Landroid/content/Context;

    sget v1, Lfzs$h;->cspace_file_donot_exist_time:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lgqh;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3274
    :cond_2
    iget-object v0, p0, Lgft;->a:Landroid/content/Context;

    sget v1, Lfzs$h;->cspace_file_donot_exist:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 78
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v2

    const-string/jumbo v3, "cspace_preview"

    const-string/jumbo v4, "1"

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->startSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v2, :cond_0

    .line 80
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v2

    const-string/jumbo v3, "cspace_preview"

    const-string/jumbo v4, "1"

    const-string/jumbo v5, "1010"

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v2

    const-string/jumbo v3, "1010"

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v2, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2}, Lgow;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 86
    iget-object v2, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 88
    new-instance v0, Lgft$1;

    invoke-direct {v0, p0}, Lgft$1;-><init>(Lgft;)V

    .line 132
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v2, p0, Lgft;->a:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 133
    const-class v3, Lcma;

    iget-object v2, p0, Lgft;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v0, v3, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    check-cast v0, Lcma;

    .line 136
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_1
    iget-object v2, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "filePath":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    iget-object v3, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 136
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public final b()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 282
    iget-object v1, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v1, :cond_1

    .line 283
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_preview"

    const-string/jumbo v4, "3"

    const-string/jumbo v5, "1032"

    invoke-interface {v1, v2, v4, v5, v6}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "1022"

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    const-string/jumbo v8, "file"

    .line 289
    .local v8, "fileType":Ljava/lang/String;
    iget-object v1, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgpx;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 290
    const-string/jumbo v8, "video"

    .line 295
    :cond_2
    :goto_1
    iget-object v1, p0, Lgft;->g:Ljava/lang/String;

    const-string/jumbo v2, "safe"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lgft;->h:Z

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    .line 297
    .local v0, "showWaterMark":Z
    :goto_2
    new-instance v3, Lgft$4;

    invoke-direct {v3, p0}, Lgft$4;-><init>(Lgft;)V

    .line 318
    .local v3, "previewListener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;>;"
    iget-object v1, p0, Lgft;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 319
    const-class v2, Lcma;

    iget-object v1, p0, Lgft;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v3, v2, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "previewListener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;>;"
    check-cast v3, Lcma;

    .line 322
    .restart local v3    # "previewListener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;>;"
    :cond_3
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    iget-object v1, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lgft;->f:J

    .line 1899
    if-eqz v3, :cond_0

    .line 2278
    new-instance v9, Lghs;

    invoke-direct {v9}, Lghs;-><init>()V

    .line 2279
    iput-object v4, v9, Lghs;->a:Ljava/lang/String;

    .line 2280
    iput-object v5, v9, Lghs;->b:Ljava/lang/String;

    .line 2281
    iput-object v8, v9, Lghs;->d:Ljava/lang/String;

    .line 2282
    const-wide/16 v10, 0x0

    cmp-long v1, v6, v10

    if-lez v1, :cond_4

    .line 2283
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v9, Lghs;->g:Ljava/lang/Long;

    .line 2285
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v9, Lghs;->k:Ljava/lang/Boolean;

    .line 1905
    iget-object v10, v2, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v1, Lgon$4;

    invoke-direct/range {v1 .. v8}, Lgon$4;-><init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v10, v9, v1}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->preview(Lghs;Liyv;)V

    goto :goto_0

    .line 291
    .end local v0    # "showWaterMark":Z
    .end local v3    # "previewListener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;>;"
    :cond_5
    iget-object v1, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgpx;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    const-string/jumbo v8, "audio"

    goto :goto_1

    .line 295
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final c()Landroid/util/Pair;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 328
    iget-object v0, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lgft;->a:Landroid/content/Context;

    sget v3, Lfzs$h;->cspace_preview_not_support:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 346
    :goto_0
    return-object v0

    .line 332
    :cond_0
    iget-object v0, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 342
    :cond_2
    iget-object v0, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 343
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lgft;->a:Landroid/content/Context;

    sget v3, Lfzs$h;->cspace_preview_not_support:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 346
    :cond_3
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 351
    iget-object v2, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v2, :cond_0

    .line 390
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v2, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgqu;->a(Ljava/lang/String;)I

    move-result v1

    .line 357
    .local v1, "spaceType":I
    invoke-static {v1}, Lgqu;->h(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    iget-object v2, p0, Lgft;->d:Lgfs$b;

    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v3, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "readOnly"

    invoke-static {v3, v4}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lgfs$b;->a(Z)V

    goto :goto_0

    .line 363
    :cond_1
    invoke-static {v1}, Lgqu;->e(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 364
    iget-object v2, p0, Lgft;->d:Lgfs$b;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lgfs$b;->a(Z)V

    goto :goto_0

    .line 368
    :cond_2
    new-instance v0, Lgft$5;

    invoke-direct {v0, p0}, Lgft$5;-><init>(Lgft;)V

    .line 386
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lgft;->a:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 387
    const-class v3, Lcma;

    iget-object v2, p0, Lgft;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v0, v3, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v0, Lcma;

    .line 389
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_3
    iget-object v2, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lgpr;->a(Ljava/lang/String;ZLcma;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 394
    iget-object v2, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v2, :cond_0

    .line 453
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v2, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgqu;->a(Ljava/lang/String;)I

    move-result v1

    .line 400
    .local v1, "spaceType":I
    invoke-static {v1}, Lgqu;->h(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    iget-object v2, p0, Lgft;->d:Lgfs$b;

    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v3, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "readWaterMark"

    invoke-static {v3, v4}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lgfs$b;->b(Z)V

    goto :goto_0

    .line 406
    :cond_1
    invoke-static {v1}, Lgqu;->e(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 407
    iget-object v2, p0, Lgft;->d:Lgfs$b;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lgfs$b;->b(Z)V

    goto :goto_0

    .line 411
    :cond_2
    new-instance v0, Lgft$6;

    invoke-direct {v0, p0}, Lgft$6;-><init>(Lgft;)V

    .line 449
    .local v0, "getReadOnlyListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lgft;->a:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 450
    const-class v3, Lcma;

    iget-object v2, p0, Lgft;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v0, v3, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "getReadOnlyListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v0, Lcma;

    .line 452
    .restart local v0    # "getReadOnlyListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_3
    iget-object v2, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lgpr;->a(Ljava/lang/String;ZLcma;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 457
    iget-object v2, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v2, :cond_0

    .line 490
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v2, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgqu;->a(Ljava/lang/String;)I

    move-result v1

    .line 462
    .local v1, "spaceType":I
    invoke-static {v1}, Lgqu;->h(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    iget-object v2, p0, Lgft;->d:Lgfs$b;

    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v3

    iget-object v4, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgqd;->c(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lgfs$b;->c(Z)V

    goto :goto_0

    .line 467
    :cond_1
    new-instance v0, Lgft$7;

    invoke-direct {v0, p0}, Lgft$7;-><init>(Lgft;)V

    .line 486
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lgft;->a:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 487
    const-class v3, Lcma;

    iget-object v2, p0, Lgft;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v0, v3, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v0, Lcma;

    .line 489
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_2
    iget-object v2, p0, Lgft;->a:Landroid/content/Context;

    iget-object v3, p0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lgpr;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method
