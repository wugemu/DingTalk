.class final Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$17;
.super Ljava/lang/Object;
.source "DingListFragmentImplV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$17;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 390
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$17;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .line 1820
    iget v0, v1, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->e:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 1823
    new-instance v0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$6;

    invoke-direct {v0, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$6;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    const-class v2, Lcma;

    .line 1845
    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1823
    invoke-static {v0, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1846
    iget-object v2, v1, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->f:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1847
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1848
    sget v3, Laxp$i;->ding_delete_all_confirm:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1849
    sget v3, Laxp$i;->sure:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$7;

    invoke-direct {v4, v1, v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$7;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;Lcma;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1856
    sget v0, Laxp$i;->cancel:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$8;

    invoke-direct {v3, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$8;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1861
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 2169
    :cond_0
    :goto_0
    return-void

    .line 2152
    :cond_1
    const-string/jumbo v2, "pref_key_has_shown_delete_ding_confirm_dialog"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2154
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2155
    sget v3, Laxp$i;->dt_ding_delete_confirm:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2156
    sget v3, Laxp$i;->sure:I

    new-instance v4, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$14;

    invoke-direct {v4, v1, v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$14;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;Lcma;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2163
    sget v0, Laxp$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$15;

    invoke-direct {v3, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$15;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2168
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 2170
    :cond_2
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Lcma;)V

    goto :goto_0
.end method
