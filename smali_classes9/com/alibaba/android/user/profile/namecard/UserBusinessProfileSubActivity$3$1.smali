.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3$1;
.super Ljava/lang/Object;
.source "UserBusinessProfileSubActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 804
    const-string/jumbo v1, "employee_info"

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 805
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->o(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "userDisplayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 807
    const-string/jumbo v1, "user_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 810
    const-string/jumbo v1, "media_id"

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3$1;->a:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    :cond_1
    return-object p1
.end method
