.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;
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
    .line 1971
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1974
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1975
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "unread_cnt"

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->getRedCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1976
    const-string/jumbo v1, "todoEnabled"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "oa_ringring_click"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1978
    invoke-static {}, Leel;->f()Leek;

    move-result-object v1

    invoke-interface {v1}, Leek;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1980
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->o(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lejt;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1981
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    new-instance v2, Lejt;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lejt;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lejt;)Lejt;

    .line 1983
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32$1;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;)V

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .line 2010
    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->o(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lejt;

    move-result-object v3

    .line 1983
    invoke-static {v1, v2, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;Lejt;)V

    .line 2014
    :goto_0
    return-void

    .line 2012
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->q(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    goto :goto_0
.end method
