.class final Lbwy$2;
.super Ljava/lang/Object;
.source "HalfPlayerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/GestureDetector;

.field final synthetic b:Lbwy;


# direct methods
.method constructor <init>(Lbwy;Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lbwy;

    .prologue
    .line 79
    iput-object p1, p0, Lbwy$2;->b:Lbwy;

    iput-object p2, p0, Lbwy$2;->a:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    iget-object v0, p0, Lbwy$2;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 83
    const/4 v0, 0x1

    return v0
.end method
