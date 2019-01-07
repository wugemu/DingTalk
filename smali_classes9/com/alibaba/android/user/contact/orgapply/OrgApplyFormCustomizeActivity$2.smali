.class final Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$2;
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
.field final synthetic a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$2;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$2;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    const-class v2, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "org_apply_form_edit_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$2;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    return-void
.end method
