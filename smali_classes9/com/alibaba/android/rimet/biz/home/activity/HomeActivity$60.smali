.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$60;
.super Landroid/content/BroadcastReceiver;
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


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 3654
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$60;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3657
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0}, Leek;->a()Ljava/util/List;

    .line 3658
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$60;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->af(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3659
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$60;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->af(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->notifyDataSetChanged()V

    .line 3661
    :cond_0
    return-void
.end method
