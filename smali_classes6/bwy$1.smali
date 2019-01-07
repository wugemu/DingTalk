.class final Lbwy$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HalfPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbwy;


# direct methods
.method constructor <init>(Lbwy;)V
    .locals 0
    .param p1, "this$0"    # Lbwy;

    .prologue
    .line 66
    iput-object p1, p0, Lbwy$1;->a:Lbwy;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lbwy$1;->a:Lbwy;

    invoke-static {v0}, Lbwy;->d(Lbwy;)Lbww$a;

    move-result-object v0

    iget-object v1, p0, Lbwy$1;->a:Lbwy;

    invoke-static {v1}, Lbwy;->b(Lbwy;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lbwy$1;->a:Lbwy;

    invoke-static {v2}, Lbwy;->c(Lbwy;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbww$a;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    iget-object v0, p0, Lbwy$1;->a:Lbwy;

    invoke-static {v0}, Lbwy;->a(Lbwy;)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method
