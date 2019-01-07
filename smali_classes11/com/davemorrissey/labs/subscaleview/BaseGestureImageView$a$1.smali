.class final Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BaseGestureImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;


# direct methods
.method constructor <init>(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$1;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

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
    .line 291
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$1;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->c(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;FF)V

    .line 292
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
    .line 275
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$1;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    invoke-static {v0, p3, p4}, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->b(Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;FF)V

    .line 276
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
    .line 280
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$1;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->b:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$1;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->b:Landroid/view/View$OnLongClickListener;

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$1;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    iget-object v1, v1, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$1;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->c:Lhck;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$1;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->c:Lhck;

    .line 1117
    const/4 v1, 0x1

    iput-boolean v1, v0, Lhck;->a:Z

    .line 288
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
    .line 296
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$1;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$1;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;->a:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a$1;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;

    iget-object v1, v1, Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView$a;->a:Lcom/davemorrissey/labs/subscaleview/BaseGestureImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 299
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
