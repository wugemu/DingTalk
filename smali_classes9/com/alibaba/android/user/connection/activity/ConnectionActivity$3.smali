.class final Lcom/alibaba/android/user/connection/activity/ConnectionActivity$3;
.super Ljava/lang/Object;
.source "ConnectionActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$3;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 600
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->circle_timeline_list:I

    if-ne v0, v1, :cond_1

    .line 601
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$3;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->h(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfdp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$3;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->h(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfdp;

    move-result-object v0

    invoke-virtual {v0}, Lfdp;->d()V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$3;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->d(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 608
    :goto_0
    return v2

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$3;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->d(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method
