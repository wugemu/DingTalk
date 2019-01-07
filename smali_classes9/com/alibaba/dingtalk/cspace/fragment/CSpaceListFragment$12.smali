.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$12;
.super Landroid/content/BroadcastReceiver;
.source "CSpaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$12;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 442
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$12;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$12;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$12;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 1051
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    .line 445
    if-eqz v2, :cond_2

    .line 446
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$12;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    sget v3, Lfzs$h;->cspace_network_error:I

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$12;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$12;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$12;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$12;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 449
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_3

    .line 452
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 453
    new-instance v1, Lgpa;

    invoke-direct {v1}, Lgpa;-><init>()V

    .line 454
    .local v1, "param":Lgpa;
    iput-object v0, v1, Lgpa;->a:Ljava/lang/Object;

    .line 455
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isWifiOnly()Z

    move-result v3

    iput-boolean v3, v1, Lgpa;->c:Z

    .line 456
    const/4 v3, 0x0

    iput-boolean v3, v1, Lgpa;->d:Z

    .line 457
    const/4 v3, 0x1

    iput v3, v1, Lgpa;->g:I

    .line 458
    invoke-static {}, Lgpe;->a()Lgpe;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$12;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lgpe$b;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lgpe;->a(Lgpa;Lgpe$b;)V

    goto :goto_1
.end method
