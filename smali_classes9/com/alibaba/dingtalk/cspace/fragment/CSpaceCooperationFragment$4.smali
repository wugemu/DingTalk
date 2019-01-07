.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;
.super Ljava/lang/Object;
.source "CSpaceCooperationFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->e()V
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
        "Lgnz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 739
    check-cast p1, Lgnz;

    .line 1742
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1745
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->K_()Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    move-result-object v0

    .line 1746
    if-eqz v0, :cond_0

    .line 1747
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->dismissLoadingDialog()V

    .line 1749
    :cond_0
    if-nez p1, :cond_2

    .line 1750
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    :cond_1
    :goto_0
    return-void

    .line 2018
    :cond_2
    iget-object v0, p1, Lgnz;->a:Ljava/util/List;

    .line 1755
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    move v0, v1

    :goto_1
    invoke-static {v2, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;Z)Z

    .line 1756
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->i(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2026
    iget-object v0, p1, Lgnz;->b:Ljava/util/List;

    .line 1758
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1759
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->i(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1761
    :cond_4
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v2, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;Z)Z

    .line 1763
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->j(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->i(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1764
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->j(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;Z)V

    goto :goto_0

    .line 1755
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 1766
    :cond_7
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 776
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->K_()Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    move-result-object v0

    .line 780
    .local v0, "spaceBaseActivity":Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    if-eqz v0, :cond_1

    .line 781
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->dismissLoadingDialog()V

    .line 783
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    sget v2, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 784
    const-string/jumbo v1, "CSpace"

    invoke-static {}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "showCreateCooperationFolderDialog: getDingDriveAvailableOrgList: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "errorCode: "

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, ", errorMsg: "

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 772
    return-void
.end method
