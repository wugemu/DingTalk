.class public Lcom/alibaba/android/user/contact/view/PageScrollView;
.super Landroid/widget/ScrollView;
.source "PageScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/view/PageScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/user/contact/view/PageScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onOverScrolled(IIZZ)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/PageScrollView;->a:Lcom/alibaba/android/user/contact/view/PageScrollView$a;

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    if-eqz p4, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/PageScrollView;->a:Lcom/alibaba/android/user/contact/view/PageScrollView$a;

    invoke-interface {v0}, Lcom/alibaba/android/user/contact/view/PageScrollView$a;->a()V

    .line 49
    :cond_0
    return-void
.end method

.method public setOnPageScrollListener(Lcom/alibaba/android/user/contact/view/PageScrollView$a;)V
    .locals 0
    .param p1, "scrollListener"    # Lcom/alibaba/android/user/contact/view/PageScrollView$a;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/PageScrollView;->a:Lcom/alibaba/android/user/contact/view/PageScrollView$a;

    .line 53
    return-void
.end method
