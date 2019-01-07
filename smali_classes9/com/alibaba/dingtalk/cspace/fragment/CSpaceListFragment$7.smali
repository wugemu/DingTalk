.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;
.super Ljava/lang/Object;
.source "CSpaceListFragment.java"

# interfaces
.implements Lfzz$a;


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
    .line 1569
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1572
    invoke-static {}, Lgpe;->a()Lgpe;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lgpe;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;I)V

    .line 1573
    return-void
.end method

.method public final b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 5
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1577
    if-nez p1, :cond_1

    .line 1611
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1582
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->k(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1583
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1584
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v2, Lfzs$h;->dt_cspace_upload_network_tip:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lfzs$h;->dt_cspace_upload_network_ok:I

    new-instance v4, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7$2;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7$2;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1585
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lfzs$h;->cancel:I

    new-instance v4, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7$1;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;)V

    .line 1595
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1601
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 1603
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_2
    new-instance v1, Lgpa;

    invoke-direct {v1}, Lgpa;-><init>()V

    .line 1604
    .local v1, "param":Lgpa;
    iput-object p1, v1, Lgpa;->a:Ljava/lang/Object;

    .line 1605
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isWifiOnly()Z

    move-result v2

    iput-boolean v2, v1, Lgpa;->c:Z

    .line 1606
    const/4 v2, 0x1

    iput v2, v1, Lgpa;->g:I

    .line 1607
    invoke-static {p1}, Lgpr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v2

    iput v2, v1, Lgpa;->f:I

    .line 1608
    invoke-static {}, Lgpe;->a()Lgpe;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lgpe$b;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lgpe;->a(Lgpa;Lgpe$b;)V

    goto :goto_0
.end method

.method public final c(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 8
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1615
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_filelist_delete_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1616
    if-nez p1, :cond_0

    .line 1617
    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 1618
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceListFragment"

    const-string/jumbo v3, "CSpaceListFragment.FileUploadOperateListener.delete: null dentryModel"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    :goto_0
    return-void

    .line 1622
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->r(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .line 1623
    .local v0, "dentryExtModel":Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    if-nez v0, :cond_1

    const-wide/16 v4, 0x0

    .line 1624
    .local v4, "editor":J
    :goto_1
    const/16 v1, 0x14a

    invoke-static {v1}, Lglz;->a(I)Lgly;

    move-result-object v7

    .line 1625
    .local v7, "handler":Lgly;
    if-eqz v7, :cond_2

    instance-of v1, v7, Lgmm;

    if-eqz v1, :cond_2

    move-object v1, v7

    .line 1626
    check-cast v1, Lgmm;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$7;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lgmm;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;JZ)V

    goto :goto_0

    .line 1623
    .end local v4    # "editor":J
    .end local v7    # "handler":Lgly;
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->getEditor()J

    move-result-wide v4

    goto :goto_1

    .line 1628
    .restart local v4    # "editor":J
    .restart local v7    # "handler":Lgly;
    :cond_2
    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 1629
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceListFragment"

    const-string/jumbo v3, "CSpaceListFragment.FileUploadOperateListener.delete: invalid SpaceMenuDeleteHandler"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
