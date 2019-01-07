.class final Lfgp$3;
.super Ljava/lang/Object;
.source "OrgApplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgp;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

.field final synthetic b:I

.field final synthetic c:Lfgp;


# direct methods
.method constructor <init>(Lfgp;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;I)V
    .locals 0
    .param p1, "this$0"    # Lfgp;

    .prologue
    .line 275
    iput-object p1, p0, Lfgp$3;->c:Lfgp;

    iput-object p2, p0, Lfgp$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iput p3, p0, Lfgp$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 279
    iget-object v2, p0, Lfgp$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->APPLIED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v2, v3, :cond_0

    .line 280
    iget-object v2, p0, Lfgp$3;->c:Lfgp;

    invoke-static {v2}, Lfgp;->a(Lfgp;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Lezg$l;->dt_group_apply_reject_confirm:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "message":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lfgp$3;->c:Lfgp;

    invoke-static {v2}, Lfgp;->a(Lfgp;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lfgp$3;->c:Lfgp;

    invoke-static {v3}, Lfgp;->a(Lfgp;)Landroid/app/Activity;

    move-result-object v3

    sget v4, Lezg$l;->cancel:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 286
    iget-object v2, p0, Lfgp$3;->c:Lfgp;

    invoke-static {v2}, Lfgp;->a(Lfgp;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Lezg$l;->sure:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfgp$3$1;

    invoke-direct {v3, p0}, Lfgp$3$1;-><init>(Lfgp$3;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 353
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 354
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 355
    const/4 v2, 0x0

    return v2

    .line 282
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lfgp$3;->c:Lfgp;

    invoke-static {v2}, Lfgp;->a(Lfgp;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Lezg$l;->delete_org_apply:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_0
.end method
