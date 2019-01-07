.class final Lcom/alibaba/android/dingtalkim/views/ChatItemContainer$1;
.super Ljava/lang/Object;
.source "ChatItemContainer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer$1;->a:Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 59
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer$1;->a:Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;

    .line 1033
    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    .line 59
    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer$1;->a:Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer$1;->a:Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer$1;->a:Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->O()Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    move-result-object v0

    .line 62
    .local v0, "list":Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(Landroid/graphics/PointF;)V

    .line 65
    .end local v0    # "list":Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;
    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
