.class public Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;
.super Landroid/widget/GridView;
.source "WrapGridView.java"


# instance fields
.field private a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 25
    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 26
    .local v0, "mExpandSpec":I
    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    .line 27
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 35
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->a:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_1

    .line 36
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 57
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->isClickable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->isLongClickable()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 45
    :cond_2
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->pointToPosition(II)I

    move-result v0

    .line 51
    .local v0, "motionPosition":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 52
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 57
    .end local v0    # "motionPosition":I
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setOnClickInvalidPosListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickInvalidPosListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->a:Landroid/view/View$OnClickListener;

    .line 31
    return-void
.end method
