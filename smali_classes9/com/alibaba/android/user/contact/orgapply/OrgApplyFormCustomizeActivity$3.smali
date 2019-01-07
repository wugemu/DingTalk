.class final Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;
.super Ljava/lang/Object;
.source "OrgApplyFormCustomizeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;->b:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

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
    .line 231
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;->b:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lezg$l;->dt_org_apply_form_delete_custom_question_confirm:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->dt_common_delete:I

    .line 233
    invoke-static {v2}, Leda;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3$1;-><init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    .line 250
    invoke-static {v2}, Leda;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 251
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 252
    return-void
.end method
