.class public Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "TouchObservableLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout$a;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout$a;

    invoke-interface {v0, p1}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout$a;->a(Landroid/view/MotionEvent;)V

    .line 32
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnInterceptListener(Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout$a;)V
    .locals 0
    .param p1, "onInterceptListener"    # Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout$a;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout$a;

    .line 37
    return-void
.end method
