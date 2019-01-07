.class public Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;
.super Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;
.source "ChatItemContainer.java"


# instance fields
.field private b:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer$1;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;->b:Landroid/view/GestureDetector;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer$1;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;->b:Landroid/view/GestureDetector;

    .line 24
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatItemContainer;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 29
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
