.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$39;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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
    .line 2125
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$39;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$39;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2129
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$39;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->c()V

    .line 2131
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$39;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$39;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->d()V

    .line 2139
    :cond_0
    return-void
.end method
