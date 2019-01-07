.class public Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;
.super Landroid/widget/ScrollView;
.source "NotifyingScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
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
    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;->a:Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView$a;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;->a:Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView$a;

    invoke-interface {v0, p2}, Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView$a;->a(I)V

    .line 53
    :cond_0
    return-void
.end method

.method public setOnScrollChangedListener(Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView$a;)V
    .locals 0
    .param p1, "onScrollChangedListener"    # Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView$a;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;->a:Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView$a;

    .line 57
    return-void
.end method
