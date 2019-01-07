.class final Lgdx$11;
.super Ljava/lang/Object;
.source "DentryListUploadUseCase.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdx;
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
        "Lgre;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lgdx;


# direct methods
.method constructor <init>(Lgdx;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lgdx;

    .prologue
    .line 285
    iput-object p1, p0, Lgdx$11;->b:Lgdx;

    iput-object p2, p0, Lgdx$11;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 285
    check-cast p1, Lgre;

    .line 1288
    if-eqz p1, :cond_1

    .line 1293
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "DentryListUploadUseCase"

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "CSpaceListActivity checkBeforeUpload status = "

    aput-object v4, v2, v3

    .line 2019
    iget v3, p1, Lgre;->a:I

    .line 1293
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    iget v0, p1, Lgre;->a:I

    .line 1295
    if-ne v0, v5, :cond_0

    .line 1296
    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;

    iget-object v0, p0, Lgdx$11;->b:Lgdx;

    .line 3055
    iget-object v0, v0, Lgdx;->b:Landroid/content/Context;

    .line 1296
    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;-><init>(Landroid/app/Activity;)V

    .line 1297
    new-instance v0, Lgdx$11$1;

    invoke-direct {v0, p0}, Lgdx$11$1;-><init>(Lgdx$11;)V

    .line 4026
    iput-object v0, v1, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->a:Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$a;

    .line 1308
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->show()V

    .line 1315
    :goto_0
    return-void

    .line 5019
    :cond_0
    iget v0, p1, Lgre;->a:I

    .line 1312
    if-ne v0, v6, :cond_1

    .line 1313
    sget v0, Lfzs$h;->cspace_capacity_limit:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1314
    iget-object v0, p0, Lgdx$11;->a:Ljava/util/List;

    invoke-static {v0}, Lgpr;->a(Ljava/util/List;)V

    goto :goto_0

    .line 1318
    :cond_1
    iget-object v0, p0, Lgdx$11;->b:Lgdx;

    iget-object v1, p0, Lgdx$11;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lgdx;->a(Lgdx;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 327
    const-string/jumbo v0, "CSpaceListActivity checkBeforeUpload: dentryModels: null or empty"

    .line 328
    .local v0, "method":Ljava/lang/String;
    iget-object v1, p0, Lgdx$11;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgdx$11;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "CSpaceListActivity checkBeforeUpload: dentryModels.size: "

    aput-object v1, v2, v5

    const/4 v1, 0x1

    iget-object v3, p0, Lgdx$11;->a:Ljava/util/List;

    .line 330
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string/jumbo v3, ", "

    aput-object v3, v2, v1

    const/4 v3, 0x3

    const-string/jumbo v4, "dentryModels.get(0)"

    iget-object v1, p0, Lgdx$11;->a:Ljava/util/List;

    .line 331
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v4, v1}, Lgot;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 329
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    :cond_0
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "DentryListUploadUseCase"

    const/4 v3, 0x0

    .line 334
    invoke-static {v0, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lgdx$11;->b:Lgdx;

    iget-object v2, p0, Lgdx$11;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lgdx;->a(Lgdx;Ljava/util/List;)V

    .line 337
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 323
    return-void
.end method
