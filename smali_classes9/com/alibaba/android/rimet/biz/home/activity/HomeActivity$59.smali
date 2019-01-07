.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$59;
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
    .line 3617
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$59;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 3620
    const-string/jumbo v1, "com.workapp.HOMETAB_CLICKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3621
    sget-object v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a:Ljava/lang/String;

    .line 3622
    const-string/jumbo v1, "tabID"

    const v2, 0x7f1100b7

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3623
    .local v0, "tabId":I
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$59;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->u(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3624
    const v1, 0x7f1100b8

    if-ne v1, v0, :cond_1

    .line 3625
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$59;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->u(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    .line 3641
    .end local v0    # "tabId":I
    :cond_0
    :goto_0
    return-void

    .line 3627
    .restart local v0    # "tabId":I
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$59;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->u(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 3630
    .end local v0    # "tabId":I
    :cond_2
    const-string/jumbo v1, "com.workapp.show.jump_xpn_url"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3631
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$59;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ae(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    goto :goto_0

    .line 3632
    :cond_3
    const-string/jumbo v1, "ding_view_switch_action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3638
    const-string/jumbo v1, "pref_key_recommend_info_first_show_"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3639
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v2, Lble;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->update(Ljava/lang/String;)V

    goto :goto_0
.end method
