.class public Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "HorizontalFeatureScrollView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:F

.field private c:Landroid/graphics/Rect;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->c:Landroid/graphics/Rect;

    .line 21
    iput-boolean v1, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->d:Z

    .line 22
    iput-boolean v1, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->e:Z

    .line 29
    return-void
.end method


# virtual methods
.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .prologue
    .line 72
    div-int/lit8 v0, p1, 0x2

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->fling(I)V

    .line 73
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->a:Landroid/view/View;

    .line 43
    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 44
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 64
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1081
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1082
    packed-switch v1, :pswitch_data_0

    .line 54
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1087
    :pswitch_1
    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->e:Z

    .line 1160
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 1089
    :goto_1
    if-eqz v1, :cond_0

    .line 2141
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->f:I

    add-int/lit16 v2, v2, 0xc8

    int-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2143
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2146
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2147
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2148
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2150
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 2151
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2153
    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->d:Z

    .line 2154
    iput v6, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->b:F

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1160
    goto :goto_1

    .line 1103
    :pswitch_2
    iget v1, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->b:F

    .line 1104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1105
    sub-float v1, v3, v1

    float-to-int v1, v1

    .line 1106
    iget-boolean v4, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->d:Z

    if-nez v4, :cond_5

    .line 2171
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->getScrollY()I

    move-result v1

    .line 2172
    if-nez v1, :cond_2

    .line 2173
    iput-boolean v2, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->e:Z

    .line 1112
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->e:Z

    if-eqz v1, :cond_4

    .line 1114
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1116
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->c:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->a:Landroid/view/View;

    .line 1117
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->a:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 1116
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1121
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->a:Landroid/view/View;

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    div-int/lit8 v5, v0, 0x3

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->a:Landroid/view/View;

    .line 1122
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    div-int/lit8 v7, v0, 0x3

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->a:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 1121
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1124
    iget v1, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->f:I

    div-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->f:I

    .line 1127
    :cond_4
    iput-boolean v2, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->d:Z

    .line 1128
    iput v3, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->b:F

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    .line 1082
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setContextView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/HorizontalFeatureScrollView;->g:Landroid/view/View;

    .line 179
    return-void
.end method
