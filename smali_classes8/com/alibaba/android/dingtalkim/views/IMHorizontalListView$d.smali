.class final Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$d;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "IMHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V
    .locals 0

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$d;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$d;-><init>(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$d;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->a(Landroid/view/MotionEvent;)Z

    .line 1016
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
    .line 1021
    const/4 v0, 0x1

    return v0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1026
    const/4 v0, 0x1

    return v0
.end method
