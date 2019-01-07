.class public Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;
.super Landroid/widget/TextView;
.source "GestureDetectorTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView$b;,
        Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/GestureDetector;

.field private b:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->a(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->a(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;)Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->b:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView$b;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView$a;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView$a;-><init>(Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->a:Landroid/view/GestureDetector;

    .line 33
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public setOnDoubleTapListener(Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView$b;)V
    .locals 0
    .param p1, "onDoubleTapListener"    # Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView$b;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->b:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView$b;

    .line 65
    return-void
.end method
