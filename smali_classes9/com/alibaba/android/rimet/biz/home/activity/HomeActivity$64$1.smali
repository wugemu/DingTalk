.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;

    .prologue
    .line 3805
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 3809
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3810
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->k(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)V

    .line 3816
    :goto_0
    return-void

    .line 3812
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z

    .line 3813
    const-string/jumbo v0, "pref_key_contact_change"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method
