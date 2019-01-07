.class final Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PinchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/views/PinchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/views/PinchImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;->a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;->a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->b(Lcom/alibaba/laiwang/photokit/views/PinchImageView;FF)V

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;->a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    invoke-static {v0, p3, p4}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->a(Lcom/alibaba/laiwang/photokit/views/PinchImageView;FF)V

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;->a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->a(Lcom/alibaba/laiwang/photokit/views/PinchImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;->a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->a(Lcom/alibaba/laiwang/photokit/views/PinchImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;->a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 260
    :cond_0
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;->a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->b(Lcom/alibaba/laiwang/photokit/views/PinchImageView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;->a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/views/PinchImageView;->b(Lcom/alibaba/laiwang/photokit/views/PinchImageView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/views/PinchImageView$1;->a:Lcom/alibaba/laiwang/photokit/views/PinchImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 271
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
