.class final Lgft$4;
.super Ljava/lang/Object;
.source "FilePreviewPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgft;->b()V
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
        "Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;",
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
    .line 297
    iput-object p1, p0, Lgft$4;->a:Lgft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 297
    check-cast p1, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;

    .line 1300
    iget-object v0, p0, Lgft$4;->a:Lgft;

    .line 2046
    iget-object v0, v0, Lgft;->d:Lgfs$b;

    .line 1300
    invoke-interface {v0, p1}, Lgfs$b;->a(Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;)V

    .line 297
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 309
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_preview"

    const-string/jumbo v3, "3"

    const-string/jumbo v4, "1033"

    invoke-interface {v1, v2, v3, v4, p1}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "1023"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;-><init>()V

    .line 313
    .local v0, "previewResultObject":Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;
    iput-object p1, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->errorCode:Ljava/lang/String;

    .line 314
    iput-object p2, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;->errorMessage:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lgft$4;->a:Lgft;

    .line 1046
    iget-object v1, v1, Lgft;->d:Lgfs$b;

    .line 315
    invoke-interface {v1, v0}, Lgfs$b;->a(Lcom/alibaba/dingtalk/cspace/model/SpaceOnlinePreviewResultObject;)V

    .line 316
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 305
    return-void
.end method
