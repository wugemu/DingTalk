.class final Lgft$2;
.super Ljava/lang/Object;
.source "FilePreviewPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgft;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgft;


# direct methods
.method constructor <init>(Lgft;)V
    .locals 0
    .param p1, "this$0"    # Lgft;

    .prologue
    .line 150
    iput-object p1, p0, Lgft$2;->a:Lgft;

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
    const/4 v1, 0x0

    .line 150
    check-cast p1, Ljava/util/Map;

    .line 4154
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    const-string/jumbo v2, "cspace_preview"

    const-string/jumbo v3, "2"

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->endSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 4156
    iget-object v2, p0, Lgft$2;->a:Lgft;

    if-nez p1, :cond_0

    move-object v0, v1

    .line 6046
    :goto_0
    iput-object v0, v2, Lgft;->c:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .line 4157
    iget-object v0, p0, Lgft$2;->a:Lgft;

    .line 7046
    iget-object v0, v0, Lgft;->d:Lgfs$b;

    .line 4157
    iget-object v2, p0, Lgft$2;->a:Lgft;

    .line 8046
    iget-object v2, v2, Lgft;->c:Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .line 4157
    invoke-interface {v0, v2}, Lgfs$b;->a(Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;)V

    .line 4158
    iget-object v0, p0, Lgft$2;->a:Lgft;

    .line 9046
    iget-object v0, v0, Lgft;->d:Lgfs$b;

    .line 4158
    iget-object v2, p0, Lgft$2;->a:Lgft;

    .line 10046
    iget-object v2, v2, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4158
    invoke-interface {v0, v2}, Lgfs$b;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 4159
    iget-object v0, p0, Lgft$2;->a:Lgft;

    .line 11046
    iget-object v0, v0, Lgft;->d:Lgfs$b;

    .line 4159
    const/16 v2, 0x6a

    invoke-interface {v0, v2, v1}, Lgfs$b;->a(ILjava/lang/String;)V

    .line 150
    return-void

    .line 4156
    :cond_0
    iget-object v0, p0, Lgft$2;->a:Lgft;

    .line 5046
    iget-object v0, v0, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4156
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_preview"

    const-string/jumbo v2, "2"

    const-string/jumbo v3, "1021"

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "1014"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "FilePreviewPresenter"

    const-string/jumbo v2, "FilePreviewPresenter.infoFileExt"

    iget-object v3, p0, Lgft$2;->a:Lgft;

    .line 1046
    iget-object v3, v3, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 173
    invoke-static {v2, p1, p2, v4, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lgft$2;->a:Lgft;

    .line 2046
    iget-object v0, v0, Lgft;->d:Lgfs$b;

    .line 175
    iget-object v1, p0, Lgft$2;->a:Lgft;

    .line 3046
    iget-object v1, v1, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 175
    invoke-interface {v0, v1}, Lgfs$b;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 176
    iget-object v0, p0, Lgft$2;->a:Lgft;

    .line 4046
    iget-object v0, v0, Lgft;->d:Lgfs$b;

    .line 176
    const/16 v1, 0x6a

    invoke-interface {v0, v1, v4}, Lgfs$b;->a(ILjava/lang/String;)V

    .line 177
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 165
    return-void
.end method
