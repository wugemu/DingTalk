.class public Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollChangeListenerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;->a:Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView$a;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;->a:Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView$a;

    invoke-interface {v0, p1}, Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView$a;->a(I)V

    .line 45
    :cond_0
    return-void
.end method

.method public setOnMyScrollListener(Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView$a;)V
    .locals 0
    .param p1, "myScrollListener"    # Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView$a;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;->a:Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView$a;

    .line 35
    return-void
.end method
