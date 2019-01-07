.class final Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$1;
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
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$1;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

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
    .line 105
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$1;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    const-class v3, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "org_apply_form_edit_mode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$1;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->a(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$1;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->b(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 110
    .local v0, "index":I
    const-string/jumbo v3, "org_apply_form_item_object"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$1;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->b(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 111
    const-string/jumbo v2, "org_apply_form_item_position"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    .end local v0    # "index":I
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$1;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    return-void
.end method
