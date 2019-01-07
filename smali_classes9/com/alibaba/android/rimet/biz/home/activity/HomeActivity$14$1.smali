.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$14$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$14;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$14;

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$14$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 1397
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$14$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$14;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$14;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "pref_vivo_accs_enable"

    invoke-static {v2, v3, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 1398
    .local v0, "accsSwitch":Z
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_vivo_accs_enable"

    .line 2083
    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 1399
    .local v1, "featureOpen":Z
    if-eq v1, v0, :cond_0

    .line 1400
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$14$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$14;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$14;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "pref_vivo_accs_enable"

    invoke-static {v2, v3, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1402
    :cond_0
    return-void
.end method
