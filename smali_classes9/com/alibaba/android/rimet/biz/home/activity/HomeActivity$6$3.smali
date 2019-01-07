.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$3;
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
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$3;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$3;->a:Ljava/util/Map;

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
    .line 1047
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$3;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$3;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->dismiss()V

    .line 1051
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$3;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    .line 1053
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "HomeActivity#AdsDialog"

    const-string/jumbo v2, "comment_close_click"

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$3;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
