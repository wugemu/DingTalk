.class final Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$4;
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

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$4;->c:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$4;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 266
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$4;->c:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    const-class v2, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "org_apply_form_edit_mode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    const-string/jumbo v1, "org_apply_form_item_object"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 269
    const-string/jumbo v1, "org_apply_form_item_position"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$4;->c:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->e(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$4;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$4;->c:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    invoke-virtual {v1, v0, v4}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 271
    return-void
.end method
