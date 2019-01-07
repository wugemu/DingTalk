.class final Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;
.super Ljava/lang/Object;
.source "FriendRequestMoreActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->b:Ljava/lang/String;

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
    .line 387
    .line 1390
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->dismissLoadingDialog()V

    .line 1391
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->e()Lfmp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-boolean v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->showMobile:Z

    invoke-interface {v0, v1, v2}, Lfmp;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)I

    .line 1392
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_friend_request_status_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1393
    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1394
    const-string/jumbo v1, "friend_request_status"

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1395
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1398
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/accept_friend"

    new-instance v2, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5$1;-><init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 387
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
    .line 418
    const-string/jumbo v1, "13013"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->dismissLoadingDialog()V

    .line 420
    move-object v0, p0

    .line 421
    .local v0, "finalThis":Lcma;
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lezg$l;->dt_friend_accept_safe_tips:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    const/4 v3, 0x0

    .line 422
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->ok:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5$2;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5$2;-><init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;Lcma;)V

    .line 423
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 433
    .end local v0    # "finalThis":Lcma;
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 414
    return-void
.end method
