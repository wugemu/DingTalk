.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$21;
.super Ljava/lang/Object;
.source "CSpaceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 975
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$21;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 978
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "space_files_new"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 979
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$21;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)I

    move-result v2

    invoke-static {v2}, Lgqu;->h(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$21;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 980
    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "addFile"

    invoke-static {v2, v3}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 981
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$21;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 982
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v2, Lfzs$h;->dt_space_no_permission_upload_tip:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 983
    sget v2, Lfzs$h;->dt_common_i_know:I

    new-instance v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$21$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$21$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$21;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 989
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 990
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 995
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :goto_0
    return-void

    .line 993
    :cond_0
    new-instance v1, Lgmd;

    invoke-direct {v1}, Lgmd;-><init>()V

    .line 994
    .local v1, "controller":Lgmd;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$21;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 1295
    new-instance v3, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-direct {v3, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;-><init>(Landroid/content/Context;)V

    .line 1296
    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setShowMenuItemIconInDialog(Z)V

    .line 1297
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setBottomMenuMax(I)V

    .line 1300
    invoke-static {}, Lcom/alibaba/android/dingtalk/doc/WEDocInterface;->a()Lcom/alibaba/android/dingtalk/doc/WEDocInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/doc/WEDocInterface;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1301
    const/16 v4, 0x13b0

    sget v5, Lfzs$h;->dt_cspace_ali_doc:I

    invoke-static {v5}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lfzs$e;->file_adoc:I

    invoke-static {v4, v5, v6}, Lgqm;->b(ILjava/lang/String;I)Lgqm;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 1302
    const/16 v4, 0x13ba

    sget v5, Lfzs$h;->dt_cspace_ali_xls:I

    invoke-static {v5}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lfzs$e;->file_axls:I

    invoke-static {v4, v5, v6}, Lgqm;->b(ILjava/lang/String;I)Lgqm;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 1309
    :cond_1
    :goto_1
    const/16 v4, 0x13c4

    sget v5, Lfzs$h;->space_upload:I

    invoke-static {v5}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lfzs$h;->icon_cloudup:I

    invoke-static {v4, v5, v6}, Lgqm;->a(ILjava/lang/String;I)Lgqm;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 1310
    const/16 v4, 0x13ce

    sget v5, Lfzs$h;->space_op_create_folder:I

    invoke-static {v5}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lfzs$h;->icon_folder_add:I

    invoke-static {v4, v5, v6}, Lgqm;->a(ILjava/lang/String;I)Lgqm;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 1312
    new-instance v4, Lgmb;

    invoke-direct {v4}, Lgmb;-><init>()V

    .line 1313
    new-instance v5, Lgmc;

    invoke-direct {v5, v2, v4, v3}, Lgmc;-><init>(Landroid/content/Context;Lgmb;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V

    .line 1314
    invoke-virtual {v5}, Lgmc;->a()V

    goto :goto_0

    .line 1304
    :cond_2
    invoke-static {}, Lglr;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1305
    const/16 v4, 0x1392

    sget v5, Lfzs$h;->dt_cspace_online_docx:I

    invoke-static {v5}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lfzs$e;->file_doc:I

    invoke-static {v4, v5, v6}, Lgqm;->b(ILjava/lang/String;I)Lgqm;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 1306
    const/16 v4, 0x139c

    sget v5, Lfzs$h;->dt_cspace_online_xlsx:I

    invoke-static {v5}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lfzs$e;->file_xls:I

    invoke-static {v4, v5, v6}, Lgqm;->b(ILjava/lang/String;I)Lgqm;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    goto :goto_1
.end method
