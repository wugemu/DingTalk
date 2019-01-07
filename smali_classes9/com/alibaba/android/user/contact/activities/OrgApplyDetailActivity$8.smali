.class final Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$8;
.super Landroid/content/BroadcastReceiver;
.source "OrgApplyDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$8;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 623
    const-string/jumbo v1, "com.workapp.org_apply_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    const-string/jumbo v1, "user_mobile"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "mobile":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$8;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$8;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$8;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .line 628
    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$8;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .line 630
    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v1

    invoke-static {v1}, Lfrb;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$8;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    iput v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    .line 632
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$8;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;I)V

    .line 635
    .end local v0    # "mobile":Ljava/lang/String;
    :cond_0
    return-void
.end method
