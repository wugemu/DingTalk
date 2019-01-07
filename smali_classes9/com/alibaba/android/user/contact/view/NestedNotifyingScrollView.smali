.class public Lcom/alibaba/android/user/contact/view/NestedNotifyingScrollView;
.super Landroid/support/v4/widget/NestedScrollView;
.source "NestedNotifyingScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/view/NestedNotifyingScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/user/contact/view/NestedNotifyingScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/widget/NestedScrollView;->onScrollChanged(IIII)V

    .line 53
    return-void
.end method

.method public setOnScrollChangedListener(Lcom/alibaba/android/user/contact/view/NestedNotifyingScrollView$a;)V
    .locals 0
    .param p1, "onScrollChangedListener"    # Lcom/alibaba/android/user/contact/view/NestedNotifyingScrollView$a;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/NestedNotifyingScrollView;->a:Lcom/alibaba/android/user/contact/view/NestedNotifyingScrollView$a;

    .line 57
    return-void
.end method
