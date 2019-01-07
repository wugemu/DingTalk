.class final Lhck$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeToDismissTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhck;-><init>(Landroid/content/Context;Lhck$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhck;


# direct methods
.method constructor <init>(Lhck;)V
    .locals 0
    .param p1, "this$0"    # Lhck;

    .prologue
    .line 38
    iput-object p1, p0, Lhck$1;->a:Lhck;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    iget-object v0, p0, Lhck$1;->a:Lhck;

    invoke-static {v0}, Lhck;->b(Lhck;)V

    .line 48
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 41
    iget-object v0, p0, Lhck$1;->a:Lhck;

    invoke-static {v0}, Lhck;->a(Lhck;)V

    .line 42
    const/4 v0, 0x0

    return v0
.end method
