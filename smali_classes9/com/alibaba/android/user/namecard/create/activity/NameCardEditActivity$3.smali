.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;
.super Ljava/lang/Object;
.source "NameCardEditActivity.java"

# interfaces
.implements Lftb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

.field final synthetic b:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 185
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    .line 186
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    sget v2, Lezg$l;->dt_card_update_title_information:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 189
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    sget v2, Lezg$l;->dt_card_update_title_information_notification:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 190
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    sget v2, Lezg$l;->dt_card_later:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3$1;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 196
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    sget v2, Lezg$l;->dt_card_to_update:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3$2;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 208
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$3;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    const/4 v2, 0x0

    const-string/jumbo v3, "pages/jobcertification/jobcertification"

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
