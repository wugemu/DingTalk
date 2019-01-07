.class final Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MotionTrackListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 120
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$b;->b:I

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;->b()V

    .line 131
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$a;->a()V

    goto :goto_0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;Z)Z

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
