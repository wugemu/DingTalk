.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;
.super Ljava/lang/Object;
.source "CSpaceListFragment.java"

# interfaces
.implements Lfzz$b;


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
    .line 1678
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 4
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1682
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_filelist_viewstat_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1684
    if-nez p1, :cond_0

    .line 1693
    :goto_0
    return-void

    .line 1688
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1689
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->k(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)J

    move-result-wide v2

    invoke-static {v0, p1, v1, v2, v3}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;IJ)V

    goto :goto_0

    .line 1691
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    sget v1, Lfzs$h;->network_no_connection:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->s(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lgdf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->s(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lgdf;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->t(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lgdf;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V

    .line 1700
    :cond_0
    return-void
.end method

.method public final c(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 1
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1705
    return-void
.end method

.method public final d(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->s(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lgdf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->s(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lgdf;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$9;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->t(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lgdf;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V

    .line 1712
    :cond_0
    return-void
.end method
