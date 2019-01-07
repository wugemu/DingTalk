.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15$1;
.super Ljava/lang/Object;
.source "UserBusinessProfileSubActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field final synthetic b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;

    .prologue
    .line 1467
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15$1;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15$1;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1470
    const/4 v0, 0x0

    .line 1471
    .local v0, "event":Ljava/lang/String;
    if-ltz p2, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15$1;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getCount()I

    move-result v4

    if-gt p2, v4, :cond_0

    .line 1472
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15$1;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v4, p2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcng;

    .line 1473
    .local v2, "menu":Lcng;
    iget v4, v2, Lcng;->a:I

    sget v5, Lezg$l;->and_cspace_menu_forward_email:I

    if-ne v4, v5, :cond_2

    .line 1475
    const-string/jumbo v0, "profile_personal_email_click"

    .line 1476
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15$1;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;

    iget-object v4, v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->r(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    iget-boolean v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mIsEmailBind:Z

    if-eqz v4, :cond_1

    .line 1477
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v1

    .line 1478
    .local v1, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15$1;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;

    iget-object v4, v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15$1;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;

    iget-object v5, v5, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .line 1479
    invoke-static {v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v5

    invoke-static {v5}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15$1;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;

    iget-object v6, v6, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;->a:Ljava/lang/String;

    const/4 v7, 0x0

    .line 1478
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1493
    .end local v1    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    .end local v2    # "menu":Lcng;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1494
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15$1;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;

    iget-object v4, v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v4, v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->d(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;)V

    .line 1495
    return-void

    .line 1482
    .restart local v2    # "menu":Lcng;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SENDTO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1483
    .local v3, "sendEmailIntent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mailto:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15$1;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;

    iget-object v5, v5, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1484
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15$1;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;

    iget-object v4, v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-virtual {v4, v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1486
    .end local v3    # "sendEmailIntent":Landroid/content/Intent;
    :cond_2
    iget v4, v2, Lcng;->a:I

    sget v5, Lezg$l;->copy_to_clipboard:I

    if-ne v4, v5, :cond_0

    .line 1488
    const-string/jumbo v0, "profile_mail_copy_click"

    .line 1489
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15$1;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;

    iget-object v4, v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15$1;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;

    iget-object v5, v5, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15$1;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;

    iget-object v6, v6, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    sget v7, Lezg$l;->chat_copy_is_success:I

    .line 1490
    invoke-virtual {v6, v7}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1489
    invoke-static {v4, v5, v6}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    goto :goto_0
.end method
