.class final Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8;
.super Ljava/lang/Object;
.source "CsDentryListFragment.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lgqm;)V
    .locals 4
    .param p1, "menuObject"    # Lgqm;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 454
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_addbutton_doc_upload_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 456
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 457
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lfzs$h;->space_upload:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 458
    sget v1, Lfzs$b;->alm_cspace_upload_menu:I

    new-instance v2, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment$8;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 471
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 472
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 473
    return-void
.end method
