.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;ZLjava/util/Map;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;->d:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    iput-boolean p3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;->b:Z

    iput-object p4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 1009
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;->d:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;->d:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->dismiss()V

    .line 1013
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;->d:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0, v5}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    .line 1014
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->actUrl2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1015
    const-string/jumbo v0, "ads"

    const-class v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "url2:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->actUrl2:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;->b:Z

    if-eqz v0, :cond_2

    .line 1018
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;->d:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Landroid/content/Context;)V

    .line 1023
    :goto_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "HomeActivity#AdsDialog"

    const-string/jumbo v2, "comment_like_click"

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1020
    :cond_2
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;->d:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$1;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->actUrl2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
