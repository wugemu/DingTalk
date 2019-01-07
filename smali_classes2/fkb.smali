.class public final Lfkb;
.super Lfkc;
.source "MultipleDeptEmployeeViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lfkc;-><init>(Landroid/app/Activity;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected final f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 40
    iget-object v2, p0, Lfkb;->a:Landroid/app/Activity;

    const-string/jumbo v3, "pref_select_mult_dept_tips"

    invoke-static {v2, v3}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 41
    .local v1, "isHasShow":Z
    if-nez v1, :cond_0

    .line 42
    iget-object v2, p0, Lfkb;->a:Landroid/app/Activity;

    const-string/jumbo v3, "pref_select_mult_dept_tips"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 43
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lfkb;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v2, Lezg$l;->select_dept_tips:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 45
    sget v2, Lezg$l;->guide_text_i_know_that:I

    new-instance v3, Lfkb$1;

    invoke-direct {v3, p0, v0}, Lfkb$1;-><init>(Lfkb;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 53
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_0
    return-void
.end method
