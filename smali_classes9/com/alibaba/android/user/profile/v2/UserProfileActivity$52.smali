.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 4024
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4024
    .line 5027
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->dismissLoadingDialog()V

    .line 5028
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 5029
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->supportInvalidateOptionsMenu()V

    .line 5030
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->E(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5031
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->k(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lezg$l;->sendmsg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5032
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    sget v1, Lezg$l;->sendmsg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 5034
    :cond_0
    sget-object v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 5042
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.friend_request_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5043
    const-string/jumbo v1, "friend_request_position"

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 5044
    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->X(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)I

    move-result v2

    .line 5043
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5045
    const-string/jumbo v1, "friend_request_status"

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 5046
    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->S(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ordinal()I

    move-result v2

    .line 5045
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5047
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.friend_change"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5048
    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 5049
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 5050
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 5052
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->showLoadingDialog()V

    .line 5053
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;J)V

    .line 4024
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4063
    const-string/jumbo v1, "13013"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4064
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->dismissLoadingDialog()V

    .line 4065
    move-object v0, p0

    .line 4066
    .local v0, "finalThis":Lcma;
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lezg$l;->dt_friend_accept_safe_tips:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    const/4 v3, 0x0

    .line 4067
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->ok:I

    new-instance v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52$2;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52$2;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;Lcma;)V

    .line 4068
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 4073
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 4078
    .end local v0    # "finalThis":Lcma;
    :goto_0
    return-void

    .line 4075
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$52;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->dismissLoadingDialog()V

    .line 4076
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 4059
    return-void
.end method
