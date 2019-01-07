.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$27;
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
    .line 1886
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$27;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

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
    .line 1889
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$27;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$27;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v2

    aget-object v1, v1, v2

    const-string/jumbo v2, "search_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1890
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$27;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->d(Landroid/content/Context;)V

    .line 1891
    return-void
.end method
