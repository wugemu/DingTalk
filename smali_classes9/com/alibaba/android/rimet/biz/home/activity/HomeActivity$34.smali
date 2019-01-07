.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$34;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 2019
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$34;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2023
    const-string/jumbo v2, "pref_key_show_work_method_push_reddot"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2025
    const/4 v0, 0x0

    .line 2026
    .local v0, "adsAlertStyleObject":Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;
    const-string/jumbo v2, "cache_key_show_work_method_push_data"

    invoke-static {v2}, Lcmu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2027
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 2028
    check-cast v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    .line 2031
    :cond_0
    if-eqz v0, :cond_1

    .line 2032
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$34;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;)V

    .line 2040
    .end local v0    # "adsAlertStyleObject":Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 2034
    .restart local v0    # "adsAlertStyleObject":Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$34;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->r(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    goto :goto_0

    .line 2037
    .end local v0    # "adsAlertStyleObject":Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;
    .end local v1    # "object":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$34;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->r(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    goto :goto_0
.end method
