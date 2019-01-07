.class final Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;
.super Ljava/lang/Object;
.source "VerifyContactActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/VerifyContactActivity$7;->run()V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyContactActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 351
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1354
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->dismissLoadingDialog()V

    .line 1358
    if-eqz p1, :cond_4

    .line 1359
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 2215
    iput-wide v2, v0, Lccr;->a:J

    .line 1360
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v0, v2, v3}, Lchy;->updateQuotaCenter(J)V

    .line 1361
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1363
    invoke-static {}, Lfxn;->a()Lfxn;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfxn;->a(Landroid/content/Context;)V

    .line 1364
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->loginSuccess()V

    .line 1366
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "pref_user_id"

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v0, v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1368
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->k(Lcom/alibaba/android/user/login/VerifyContactActivity;)V

    .line 1370
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1$1;-><init>(Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1382
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDataComplete:Z

    if-eqz v0, :cond_3

    .line 1384
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1386
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1387
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isOrgAuth:Z

    if-eqz v1, :cond_1

    .line 1388
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const/4 v1, 0x3

    invoke-interface {v0, v4, v5, v1}, Lcom/alibaba/wukong/im/ConversationService;->listConversations(Lcom/alibaba/wukong/Callback;II)V

    .line 1389
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->l(Lcom/alibaba/android/user/login/VerifyContactActivity;)V

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1391
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDataComplete:Z

    invoke-static {v1, v6, v2, v0, v3}, Lcom/alibaba/android/user/login/VerifyContactActivity;->a(Lcom/alibaba/android/user/login/VerifyContactActivity;ZLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1394
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->l(Lcom/alibaba/android/user/login/VerifyContactActivity;)V

    goto :goto_0

    .line 1397
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDataComplete:Z

    invoke-static {v0, v6, v4, v4, v1}, Lcom/alibaba/android/user/login/VerifyContactActivity;->a(Lcom/alibaba/android/user/login/VerifyContactActivity;ZLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1401
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v0, v5, v4, v4, v5}, Lcom/alibaba/android/user/login/VerifyContactActivity;->a(Lcom/alibaba/android/user/login/VerifyContactActivity;ZLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 413
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-static {}, Lcom/alibaba/android/user/login/VerifyContactActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "verify contact onException:%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v9

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->dismissLoadingDialog()V

    .line 418
    const-string/jumbo v0, "12304"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyContactActivity;->c(Lcom/alibaba/android/user/login/VerifyContactActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_1
    const-string/jumbo v0, "12303"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->server_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyContactActivity;->c(Lcom/alibaba/android/user/login/VerifyContactActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_2
    const-string/jumbo v0, "12306"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->failed_ssl_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyContactActivity;->c(Lcom/alibaba/android/user/login/VerifyContactActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_3
    const-string/jumbo v0, "login_contact_confirm_nopass_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 428
    const-string/jumbo v0, "11045"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "11046"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 429
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    sget v1, Lezg$l;->login_verify_contact_retry:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 430
    .local v5, "nextAction":Ljava/lang/String;
    const-string/jumbo v6, "https://qr.dingtalk.com/login_verify_contact.html"

    .line 436
    .local v6, "actionScheme":Ljava/lang/String;
    :goto_1
    new-instance v0, Lfjl;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-direct {v0, v1}, Lfjl;-><init>(Landroid/app/Activity;)V

    sget v1, Lezg$g;->icon_verify_fail:I

    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    sget v3, Lezg$l;->login_verify_contact_title:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    sget v4, Lezg$l;->login_verify_contact_fail:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "tempCode"

    iget-object v8, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v8, v8, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    .line 437
    invoke-static {v8}, Lcom/alibaba/android/user/login/VerifyContactActivity;->i(Lcom/alibaba/android/user/login/VerifyContactActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "phone_number"

    iget-object v8, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v8, v8, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/login/VerifyContactActivity;->m(Lcom/alibaba/android/user/login/VerifyContactActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "https://qr.dingtalk.com/login_pwd.html"

    move-object v4, p2

    .line 436
    invoke-virtual/range {v0 .. v9}, Lfjl;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 438
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->finish()V

    goto/16 :goto_0

    .line 432
    .end local v5    # "nextAction":Ljava/lang/String;
    .end local v6    # "actionScheme":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$7$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;->f:Lcom/alibaba/android/user/login/VerifyContactActivity;

    sget v1, Lezg$l;->login_report_loss_action_return:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 433
    .restart local v5    # "nextAction":Ljava/lang/String;
    const-string/jumbo v6, "https://qr.dingtalk.com/login_pwd.html"

    .restart local v6    # "actionScheme":Ljava/lang/String;
    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 409
    return-void
.end method
