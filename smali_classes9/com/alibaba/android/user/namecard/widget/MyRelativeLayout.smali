.class public Lcom/alibaba/android/user/namecard/widget/MyRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "MyRelativeLayout.java"


# instance fields
.field private a:Landroid/view/GestureDetector;

.field private b:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/namecard/widget/MyRelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/MyRelativeLayout;->b:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/MyRelativeLayout;->b:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 48
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDetector(Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/GestureDetector;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/MyRelativeLayout;->a:Landroid/view/GestureDetector;

    .line 36
    return-void
.end method

.method public setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "touchListener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/MyRelativeLayout;->b:Landroid/view/View$OnTouchListener;

    .line 40
    return-void
.end method
