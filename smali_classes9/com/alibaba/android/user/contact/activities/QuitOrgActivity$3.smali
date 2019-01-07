.class final Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;
.super Ljava/lang/Object;
.source "QuitOrgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;->a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 168
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;->a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->b(Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;)I

    move-result v1

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;->a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;

    sget v2, Lezg$l;->quit_org_choose:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 209
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;->a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;->a:Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;

    sget v2, Lezg$l;->quit_org_confirm:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3$2;-><init>(Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;)V

    .line 173
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3$1;-><init>(Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;)V

    .line 201
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
