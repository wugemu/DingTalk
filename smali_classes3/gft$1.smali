.class final Lgft$1;
.super Ljava/lang/Object;
.source "FilePreviewPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgft;->a()V
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
.field final synthetic a:Lgft;


# direct methods
.method constructor <init>(Lgft;)V
    .locals 0
    .param p1, "this$0"    # Lgft;

    .prologue
    .line 88
    iput-object p1, p0, Lgft$1;->a:Lgft;

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

    .line 88
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2091
    if-eqz p1, :cond_1

    .line 2092
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_preview"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->endSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    iget-object v0, p0, Lgft$1;->a:Lgft;

    .line 3046
    iput-object p1, v0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2095
    iget-object v2, p0, Lgft$1;->a:Lgft;

    .line 4142
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_preview"

    const-string/jumbo v3, "2"

    invoke-interface {v0, v1, v3}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->startSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 4144
    iget-object v0, v2, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v0, :cond_0

    .line 4145
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_preview"

    const-string/jumbo v2, "2"

    const-string/jumbo v3, "1020"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4146
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "1013"

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    :goto_0
    return-void

    .line 4150
    :cond_0
    new-instance v1, Lgft$2;

    invoke-direct {v1, v2}, Lgft$2;-><init>(Lgft;)V

    .line 4179
    iget-object v0, v2, Lgft;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 4180
    const-class v3, Lcma;

    iget-object v0, v2, Lgft;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v3, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4182
    :goto_1
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v3, v2, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lgon;->a(Ljava/lang/String;Ljava/util/List;Lcma;)V

    goto :goto_0

    .line 2097
    :cond_1
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_preview"

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "1012"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "1011"

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    iget-object v0, p0, Lgft$1;->a:Lgft;

    .line 5046
    iget-object v0, v0, Lgft;->d:Lgfs$b;

    .line 2100
    const/16 v1, 0x6b

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->cspace_info_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgfs$b;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 112
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_preview"

    const-string/jumbo v3, "1"

    const-string/jumbo v4, "1011"

    invoke-interface {v1, v2, v3, v4, p1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "1012"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/16 v1, 0x8

    invoke-static {v1, p1, p2}, Lggr;->a(ILjava/lang/String;Ljava/lang/String;)Lggs;

    move-result-object v0

    .line 122
    .local v0, "rpcError":Lggs;
    const-string/jumbo v1, "13020005"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lgft$1;->a:Lgft;

    .line 1046
    iget-object v1, v1, Lgft;->d:Lgfs$b;

    .line 123
    const/16 v2, 0x6c

    iget-object v3, v0, Lggs;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lgfs$b;->a(ILjava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string/jumbo v1, "13023000"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    iget-object v3, p0, Lgft$1;->a:Lgft;

    .line 1187
    new-instance v2, Lgft$3;

    invoke-direct {v2, v3}, Lgft$3;-><init>(Lgft;)V

    .line 1249
    iget-object v1, v3, Lgft;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 1250
    const-class v4, Lcma;

    iget-object v1, v3, Lgft;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v2, v4, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1253
    :goto_1
    iget-object v2, v3, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v3, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1254
    :goto_2
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v4

    iget-object v3, v3, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2, v1}, Lgon;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 1253
    :cond_1
    iget-object v2, v3, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 127
    :cond_2
    iget-object v1, p0, Lgft$1;->a:Lgft;

    .line 2046
    iget-object v1, v1, Lgft;->d:Lgfs$b;

    .line 127
    const/16 v2, 0x6b

    iget-object v3, v0, Lggs;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lgfs$b;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 107
    return-void
.end method
