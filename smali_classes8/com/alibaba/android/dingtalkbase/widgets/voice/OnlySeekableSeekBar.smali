.class public Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;
.super Landroid/support/v7/widget/AppCompatSeekBar;
.source "OnlySeekableSeekBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 64
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :cond_0
    :goto_0
    return v6

    .line 30
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getWidth()I

    move-result v4

    .line 34
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getPaddingLeft()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getPaddingRight()I

    move-result v8

    sub-int v0, v7, v8

    .line 35
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 38
    .local v5, "x":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getPaddingLeft()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 39
    const/4 v3, 0x0

    .line 45
    .local v3, "scale":F
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getMax()I

    move-result v1

    .line 46
    .local v1, "max":I
    int-to-float v7, v1

    mul-float/2addr v7, v3

    add-float v2, v9, v7

    .line 47
    .local v2, "progress":F
    cmpg-float v7, v2, v9

    if-gez v7, :cond_5

    .line 48
    const/4 v2, 0x0

    .line 53
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getProgress()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v8, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    .line 54
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 40
    .end local v1    # "max":I
    .end local v2    # "progress":F
    .end local v3    # "scale":F
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getPaddingRight()I

    move-result v7

    sub-int v7, v4, v7

    if-le v5, v7, :cond_4

    .line 41
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_1

    .line 43
    .end local v3    # "scale":F
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getPaddingLeft()I

    move-result v7

    sub-int v7, v5, v7

    int-to-float v7, v7

    int-to-float v8, v0

    div-float v3, v7, v8

    .restart local v3    # "scale":F
    goto :goto_1

    .line 49
    .restart local v1    # "max":I
    .restart local v2    # "progress":F
    :cond_5
    int-to-float v7, v1

    cmpl-float v7, v2, v7

    if-lez v7, :cond_2

    .line 50
    int-to-float v2, v1

    goto :goto_2

    .line 59
    .end local v0    # "available":I
    .end local v1    # "max":I
    .end local v2    # "progress":F
    .end local v3    # "scale":F
    .end local v4    # "width":I
    .end local v5    # "x":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/OnlySeekableSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 62
    :cond_6
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
