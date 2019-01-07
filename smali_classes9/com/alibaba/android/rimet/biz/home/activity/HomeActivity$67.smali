.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$67;
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
    .line 4051
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$67;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 4054
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$67;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 4055
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$67;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ah(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 4056
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$67;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4057
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$67;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$67;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iget v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d:I

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$67;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iget v3, v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(III)V

    .line 4058
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$67;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$67;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iget v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->e:I

    invoke-virtual {v0, v1, v4, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(III)V

    .line 4060
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->update(Ljava/lang/String;)V

    .line 4061
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$67;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Y(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 4062
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$67;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;

    .line 4063
    return-void
.end method
