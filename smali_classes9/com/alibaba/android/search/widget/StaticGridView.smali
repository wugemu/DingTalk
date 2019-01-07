.class public Lcom/alibaba/android/search/widget/StaticGridView;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;
.source "StaticGridView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/StaticGridView;->setEnabled(Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/StaticGridView;->setEnabled(Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/widget/StaticGridView;->setEnabled(Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
