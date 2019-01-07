.class final Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;
.super Ljava/lang/Object;
.source "FriendAndGroupRequestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 391
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    :goto_0
    return-void

    .line 394
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 395
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->dt_friend_recommend_confirm_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 396
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    sget v2, Lezg$l;->cancel:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 397
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    sget v2, Lezg$l;->sure:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10$1;-><init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 408
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 409
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
