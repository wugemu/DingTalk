.class final Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;
.super Ljava/lang/Object;
.source "SendFriendRequestActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

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
    .line 310
    .line 2313
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->dismissLoadingDialog()V

    .line 2314
    sget v0, Lezg$l;->request_has_sent:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2315
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_friend_request_status_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2316
    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->f(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2317
    const-string/jumbo v1, "friend_request_status"

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->SENT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2318
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2319
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->finish()V

    .line 310
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 329
    const-string/jumbo v1, "13012"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->dismissLoadingDialog()V

    .line 331
    move-object v0, p0

    .line 332
    .local v0, "finalThis":Lcma;
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lezg$l;->dt_friend_add_safe_tips:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    .line 333
    invoke-virtual {v1, v2, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->ok:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5$1;-><init>(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;Lcma;)V

    .line 334
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 345
    .end local v0    # "finalThis":Lcma;
    :goto_0
    const-string/jumbo v1, "bh_friend_add_server_error"

    const-string/jumbo v2, "code=%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 1315
    invoke-static {v6, v1, v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    return-void

    .line 341
    :cond_0
    const-string/jumbo v1, "SendFriendRequestActivity"

    const-string/jumbo v2, "add friend err %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->dismissLoadingDialog()V

    .line 343
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 325
    return-void
.end method
