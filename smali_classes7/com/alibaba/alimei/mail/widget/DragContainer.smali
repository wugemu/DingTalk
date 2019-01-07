.class public Lcom/alibaba/alimei/mail/widget/DragContainer;
.super Landroid/widget/FrameLayout;
.source "DragContainer.java"


# instance fields
.field private a:Lafj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 31
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/DragContainer;->a:Lafj;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/DragContainer;->a:Lafj;

    .line 1154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Lafj;->b:F

    .line 1155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Lafj;->c:F

    .line 1157
    iget-object v3, v2, Lafj;->h:Landroid/view/VelocityTracker;

    if-nez v3, :cond_0

    .line 1158
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, v2, Lafj;->h:Landroid/view/VelocityTracker;

    .line 1160
    :cond_0
    iget-object v3, v2, Lafj;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1182
    :cond_1
    :goto_0
    :pswitch_0
    iget v2, v2, Lafj;->a:I

    if-ne v2, v0, :cond_2

    move v1, v0

    .line 31
    :cond_2
    if-eqz v1, :cond_4

    .line 34
    :goto_1
    return v0

    .line 1298
    :pswitch_1
    iget-object v3, v2, Lafj;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1299
    iget-object v3, v2, Lafj;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    .line 1300
    iget-object v4, v2, Lafj;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    .line 1301
    iget v5, v2, Lafj;->a:I

    if-ne v5, v0, :cond_1

    .line 1302
    iget-object v5, v2, Lafj;->f:Lcom/alibaba/alimei/mail/widget/DragContainer;

    new-instance v6, Lafj$3;

    invoke-direct {v6, v2, v3, v4}, Lafj$3;-><init>(Lafj;FF)V

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/mail/widget/DragContainer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1172
    :pswitch_2
    iget v3, v2, Lafj;->d:F

    iget v4, v2, Lafj;->b:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    iget v3, v2, Lafj;->e:F

    iget v4, v2, Lafj;->c:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_1

    .line 1175
    :cond_3
    iget v3, v2, Lafj;->b:F

    iput v3, v2, Lafj;->d:F

    .line 1176
    iget v3, v2, Lafj;->c:F

    iput v3, v2, Lafj;->e:F

    .line 1177
    invoke-virtual {v2}, Lafj;->d()V

    goto :goto_0

    .line 34
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 1163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setDispatchTouchEventListener(Lafj;)V
    .locals 0
    .param p1, "dragControl"    # Lafj;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/DragContainer;->a:Lafj;

    .line 27
    return-void
.end method
