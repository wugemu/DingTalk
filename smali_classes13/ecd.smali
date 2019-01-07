.class public final Lecd;
.super Lece;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public a:I

.field private c:I

.field private d:Z

.field private e:Landroid/view/GestureDetector;

.field private f:I

.field private g:I

.field private h:[I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

.field private o:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;II)V
    .locals 3
    .param p1, "dslv"    # Lcom/alibaba/android/dingtalkim/views/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1}, Lece;-><init>(Landroid/widget/ListView;)V

    .line 26
    iput v2, p0, Lecd;->c:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lecd;->d:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lecd;->g:I

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lecd;->h:[I

    .line 48
    iput-boolean v2, p0, Lecd;->m:Z

    .line 87
    iput-object p1, p0, Lecd;->n:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .line 88
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lecd;->e:Landroid/view/GestureDetector;

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lecd;->f:I

    .line 91
    iput p2, p0, Lecd;->a:I

    .line 2104
    iput v2, p0, Lecd;->c:I

    .line 93
    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 247
    .line 3203
    iget v2, p0, Lecd;->a:I

    .line 3207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 3210
    iget-object v4, p0, Lecd;->n:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v4, v0, v3}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->pointToPosition(II)I

    move-result v0

    .line 3212
    iget-object v3, p0, Lecd;->n:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    .line 3213
    iget-object v4, p0, Lecd;->n:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFooterViewsCount()I

    move-result v4

    .line 3214
    iget-object v5, p0, Lecd;->n:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getCount()I

    move-result v5

    .line 3219
    if-eq v0, v1, :cond_3

    if-lt v0, v3, :cond_3

    sub-int v3, v5, v4

    if-ge v0, v3, :cond_3

    .line 3221
    iget-object v3, p0, Lecd;->n:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    iget-object v4, p0, Lecd;->n:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .line 3222
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v0, v4

    .line 3221
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    .line 3224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    .line 3226
    if-nez v2, :cond_2

    move-object v2, v3

    .line 3227
    :goto_0
    if-eqz v2, :cond_3

    .line 3228
    iget-object v7, p0, Lecd;->h:[I

    invoke-virtual {v2, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3230
    iget-object v7, p0, Lecd;->h:[I

    aget v7, v7, v6

    if-le v4, v7, :cond_3

    iget-object v7, p0, Lecd;->h:[I

    aget v7, v7, v9

    if-le v5, v7, :cond_3

    iget-object v7, p0, Lecd;->h:[I

    aget v7, v7, v6

    .line 3231
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v4, v7, :cond_3

    iget-object v4, p0, Lecd;->h:[I

    aget v4, v4, v9

    .line 3232
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v5, v2, :cond_3

    .line 3234
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lecd;->i:I

    .line 3235
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lecd;->j:I

    .line 247
    :goto_1
    iput v0, p0, Lecd;->g:I

    .line 248
    iget v0, p0, Lecd;->g:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lecd;->c:I

    if-nez v0, :cond_1

    .line 249
    iget v1, p0, Lecd;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lecd;->i:I

    sub-int v4, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lecd;->j:I

    sub-int v5, v0, v2

    .line 4142
    iget-boolean v0, p0, Lecd;->d:Z

    if-eqz v0, :cond_6

    .line 4143
    const/16 v3, 0xc

    .line 4147
    :goto_2
    iget-object v0, p0, Lecd;->n:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    iget-object v2, p0, Lecd;->n:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 4738
    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView$h;

    if-nez v2, :cond_4

    :cond_0
    move v0, v6

    .line 4147
    :goto_3
    iput-boolean v0, p0, Lecd;->m:Z

    .line 4149
    iget-boolean v0, p0, Lecd;->m:Z

    .line 253
    :cond_1
    iput v6, p0, Lecd;->o:I

    .line 255
    return v9

    .line 3226
    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 3242
    goto :goto_1

    .line 4742
    :cond_4
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView$h;

    invoke-interface {v2, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$h;->a(I)Landroid/view/View;

    move-result-object v2

    .line 4744
    if-nez v2, :cond_5

    move v0, v6

    .line 4745
    goto :goto_3

    .line 4747
    :cond_5
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->a(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_3

    :cond_6
    move v3, v6

    goto :goto_2
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 268
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 287
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v1, p0, Lecd;->n:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .line 2247
    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->c:Z

    .line 154
    if-eqz v1, :cond_0

    .line 172
    :goto_0
    return v2

    .line 158
    :cond_0
    iget-object v1, p0, Lecd;->e:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 160
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 161
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 163
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lecd;->k:I

    .line 164
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lecd;->l:I

    goto :goto_0

    .line 168
    :pswitch_2
    iput-boolean v2, p0, Lecd;->m:Z

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
