.class final Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;
.super Ljava/lang/Object;
.source "ManagerOrgSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 347
    .line 1350
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1351
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->h(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->h(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1355
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->h(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 1356
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1357
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1358
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    iget-object v4, v4, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->e(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1359
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->i(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    .line 1360
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v1, :cond_2

    .line 1361
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->i(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    .line 1363
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->h(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1364
    const-class v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1$1;-><init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1370
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org_employee_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1371
    const-string/jumbo v1, "fiter_notify_indicator_change"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1372
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1373
    :cond_3
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->g(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4$1;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;->b:Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->i(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 388
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 383
    return-void
.end method
