.class public Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;
.super Landroid/support/v4/widget/NestedScrollView;
.source "TouchObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView$a;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView$a;

    invoke-interface {v0, p1}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView$a;->a(Landroid/view/MotionEvent;)V

    .line 38
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnTouchEventObserver(Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView$a;)V
    .locals 0
    .param p1, "onTouchEventObserver"    # Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView$a;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView$a;

    .line 31
    return-void
.end method
