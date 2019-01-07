.class final Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3$1;
.super Ljava/lang/Object;
.source "OrgApplyFormCustomizeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3$1;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3$1;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;->b:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->c(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)Lfko$a;

    move-result-object v1

    if-nez v1, :cond_0

    .line 237
    const-string/jumbo v1, "OrgApplyFormCustomizeActivity"

    const-string/jumbo v2, "initArgs: Presenter is null!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3$1;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;->b:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->b(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;)Lchl;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->fromIDLModel(Lchl;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v0

    .line 242
    .local v0, "editedFormObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3$1;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;->b:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->b(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3$1;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;->b:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->b(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3$1;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;->b:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->b(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3$1;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;

    iget-object v3, v3, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 247
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3$1;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;->b:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->c(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)Lfko$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3$1;->a:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;->b:Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->d(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Lfko$a;->a(JLcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;)V

    goto :goto_0

    .line 245
    :cond_1
    const-string/jumbo v1, "OrgApplyFormCustomizeActivity"

    const-string/jumbo v2, "onClick: unknown error! form or form.items is null!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
