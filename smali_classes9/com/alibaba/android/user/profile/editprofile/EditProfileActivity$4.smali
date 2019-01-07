.class final Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "EditProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$4;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 481
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$4;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    const-string/jumbo v0, "action_key_select_org_type"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$4;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    const-string/jumbo v0, "action_key_selected_org_industry"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 487
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$4;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->l(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$4;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->m(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$4;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->l(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$4;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->m(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$4;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->l(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$4;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->c(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    goto :goto_0
.end method
