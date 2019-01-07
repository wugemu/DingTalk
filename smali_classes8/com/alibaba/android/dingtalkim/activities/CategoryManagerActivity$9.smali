.class final Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;
.super Ljava/lang/Object;
.source "CategoryManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 442
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lctk$g;->dialog_edit:I

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 444
    .local v1, "dialogView":Landroid/view/View;
    sget v3, Lctk$f;->dialog_edittext:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 445
    .local v2, "editText":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    sget v4, Lctk$i;->dt_im_category_create_input_placeholder:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 447
    new-array v3, v5, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x18

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 448
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 449
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    sget v4, Lctk$i;->dt_im_category_new_tip:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 450
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 451
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    sget v4, Lctk$i;->cancel:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 452
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    sget v4, Lctk$i;->sure:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9$1;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 465
    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 466
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 467
    return-void
.end method
