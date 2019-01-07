.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$9;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$9;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 1112
    check-cast p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    .line 2116
    if-eqz p1, :cond_0

    .line 2120
    const-string/jumbo v0, "pref_key_show_work_method_push_reddot"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2121
    const-string/jumbo v0, "pref_key_show_work_method_push_dialog"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2123
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$9;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;)V

    .line 2125
    const-class v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$9$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$9$1;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$9;Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1112
    :cond_0
    return-void
.end method
