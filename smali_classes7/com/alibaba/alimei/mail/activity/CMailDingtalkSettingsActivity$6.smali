.class final Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$6;
.super Ljava/lang/Object;
.source "CMailDingtalkSettingsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;
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
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 332
    .line 1335
    const-string/jumbo v0, "CMailDingtalkSettingsActivity"

    const-string/jumbo v1, "applyNewDingtalkId success"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.did.set.dingtalk.id"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1337
    const-string/jumbo v1, "dingtalk_id"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1338
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 1339
    if-eqz v1, :cond_0

    .line 1340
    const-string/jumbo v2, "dingtalk_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dingTalkId:Ljava/lang/String;

    .line 1341
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mAllowChangeDingTalkId:Z

    .line 1342
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1343
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$6$1;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$6$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$6;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1349
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->dismissLoadingDialog()V

    .line 1350
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1351
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->finish()V

    .line 332
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 361
    const-string/jumbo v0, "CMailDingtalkSettingsActivity"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "applyNewDingtalkId error, code: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->dismissLoadingDialog()V

    .line 366
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 357
    return-void
.end method
