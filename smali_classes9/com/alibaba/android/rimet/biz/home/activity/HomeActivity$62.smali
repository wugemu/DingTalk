.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$62;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 3691
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$62;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 3694
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 3695
    .local v1, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    if-eqz v2, :cond_0

    .line 3697
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v2

    const-string/jumbo v3, "com.alibaba.android.oa.view.FirstCreateTeamTipDialog.isShowing"

    invoke-virtual {v2, v3, v5}, Lcnh;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 3698
    .local v0, "isFirstShowing":Z
    if-nez v0, :cond_0

    .line 3699
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$62;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;->userRightsLevel:I

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Landroid/app/Activity;I)V

    .line 3704
    .end local v0    # "isFirstShowing":Z
    :cond_0
    const-string/jumbo v2, "pref.key.new.user.lifestyle.guide.is.show"

    invoke-static {v2, v5}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 3705
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.workapp.new.user.lifestyle.guide"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3706
    invoke-virtual {v2, v3}, Ldq;->a(Landroid/content/Intent;)Z

    .line 3707
    return-void
.end method
