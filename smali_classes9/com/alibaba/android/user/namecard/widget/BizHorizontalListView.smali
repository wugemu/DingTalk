.class public Lcom/alibaba/android/user/namecard/widget/BizHorizontalListView;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
.source "BizHorizontalListView.java"


# instance fields
.field private a:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "isEnableEdgeGlow"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 30
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 31
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 47
    :goto_0
    :pswitch_0
    iput v0, p0, Lcom/alibaba/android/user/namecard/widget/BizHorizontalListView;->a:I

    .line 48
    iput v2, p0, Lcom/alibaba/android/user/namecard/widget/BizHorizontalListView;->f:I

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 33
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/BizHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 36
    :pswitch_2
    iget v4, p0, Lcom/alibaba/android/user/namecard/widget/BizHorizontalListView;->a:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 37
    .local v1, "xDiff":I
    iget v4, p0, Lcom/alibaba/android/user/namecard/widget/BizHorizontalListView;->f:I

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 38
    .local v3, "yDiff":I
    if-ge v1, v3, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/BizHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/BizHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
