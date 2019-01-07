.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$4;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$4;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1063
    :goto_0
    return-void

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6$4;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->show()V

    goto :goto_0
.end method
