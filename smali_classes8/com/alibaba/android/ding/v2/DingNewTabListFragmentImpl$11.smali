.class final Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$11;
.super Ljava/lang/Object;
.source "DingNewTabListFragmentImpl.java"

# interfaces
.implements Lcom/alibaba/android/ding/widget/DingNewTabActionBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$11;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$11;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->g()V

    .line 324
    return-void
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 328
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$11;->a:Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;

    .line 1715
    iget v0, v1, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->b:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 1718
    new-instance v0, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$3;

    invoke-direct {v0, v1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$3;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V

    const-class v2, Lcma;

    .line 1740
    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1718
    invoke-static {v0, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1741
    iget-object v2, v1, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1742
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1743
    sget v3, Laxp$i;->ding_delete_all_confirm:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1744
    sget v3, Laxp$i;->sure:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$4;

    invoke-direct {v4, v1, v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$4;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;Lcma;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1752
    sget v0, Laxp$i;->cancel:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$5;

    invoke-direct {v3, v1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$5;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1757
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1949
    :cond_0
    :goto_0
    return-void

    .line 1932
    :cond_1
    const-string/jumbo v2, "pref_key_has_shown_delete_ding_confirm_dialog"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1934
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1935
    sget v3, Laxp$i;->dt_ding_delete_confirm:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1936
    sget v3, Laxp$i;->sure:I

    new-instance v4, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$9;

    invoke-direct {v4, v1, v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$9;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;Lcma;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1943
    sget v0, Laxp$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$10;

    invoke-direct {v3, v1}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl$10;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;)V

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1948
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 1950
    :cond_2
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/v2/DingNewTabListFragmentImpl;->a(Lcma;)V

    goto :goto_0
.end method
