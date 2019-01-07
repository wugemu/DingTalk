.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$52;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 2961
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$52;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2964
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2965
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "page"

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$52;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->F(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$52;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->F(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    move-result-object v1

    .line 3288
    iget v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->h:I

    .line 2965
    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2966
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$52;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$52;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v3

    aget-object v2, v2, v3

    const-string/jumbo v3, "guide_new_feature_click"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2968
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$52;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    .line 2969
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$52;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "pref_upgrade_guide_showed"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2970
    return-void

    .line 2965
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
