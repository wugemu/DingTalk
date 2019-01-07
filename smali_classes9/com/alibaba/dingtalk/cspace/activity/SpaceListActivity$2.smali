.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;
.super Ljava/lang/Object;
.source "SpaceListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;
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

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 426
    check-cast p1, Lgre;

    .line 1429
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    if-eqz p1, :cond_2

    .line 1438
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceBaseActivity"

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "CSpaceListActivity checkBeforeUpload status = "

    aput-object v4, v2, v3

    .line 2019
    iget v3, p1, Lgre;->a:I

    .line 1439
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1438
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    iget v0, p1, Lgre;->a:I

    .line 1441
    if-ne v0, v5, :cond_1

    .line 1442
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;-><init>(Landroid/app/Activity;)V

    .line 1443
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;)V

    .line 3026
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->a:Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$a;

    .line 1454
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog;->show()V

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 4019
    :cond_1
    iget v0, p1, Lgre;->a:I

    .line 1458
    if-ne v0, v6, :cond_2

    .line 1459
    sget v0, Lfzs$h;->cspace_capacity_limit:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1460
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->a:Ljava/util/List;

    invoke-static {v0}, Lgpr;->a(Ljava/util/List;)V

    goto :goto_0

    .line 1464
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 474
    const-string/jumbo v0, "CSpaceListActivity checkBeforeUpload: dentryModels: null or empty"

    .line 475
    .local v0, "method":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "CSpaceListActivity checkBeforeUpload: dentryModels.size: "

    aput-object v1, v2, v5

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->a:Ljava/util/List;

    .line 477
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    const/4 v1, 0x2

    const-string/jumbo v3, ", "

    aput-object v3, v2, v1

    const/4 v3, 0x3

    const-string/jumbo v4, "dentryModels.get(0)"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->a:Ljava/util/List;

    .line 478
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v4, v1}, Lgot;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 476
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    :cond_0
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceBaseActivity"

    const/4 v3, 0x0

    .line 481
    invoke-static {v0, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 480
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 489
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->O:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$2;->a:Ljava/util/List;

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 470
    return-void
.end method
