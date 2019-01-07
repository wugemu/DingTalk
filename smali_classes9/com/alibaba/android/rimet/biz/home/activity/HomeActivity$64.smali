.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;
.super Landroid/database/ContentObserver;
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

.field private b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3805
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64$1;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 3821
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;->onChange(ZLandroid/net/Uri;)V

    .line 3822
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3827
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3828
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;->b:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3830
    return-void
.end method
