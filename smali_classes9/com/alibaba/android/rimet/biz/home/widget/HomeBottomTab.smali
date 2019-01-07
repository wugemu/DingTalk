.class public Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;
.super Landroid/widget/FrameLayout;
.source "HomeBottomTab.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;
    }
.end annotation


# instance fields
.field private a:[Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

.field private b:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1038
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040530

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1040
    const v0, 0x7f1116cc

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .line 1041
    const v1, 0x7f1116cd

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .line 1042
    const v2, 0x7f1116ce

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .line 1043
    const v3, 0x7f1116cf

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .line 1044
    const v4, 0x7f1116d0

    invoke-virtual {p0, v4}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .line 1046
    const/4 v5, 0x5

    new-array v5, v5, [Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    iput-object v5, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a:[Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    .line 1048
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;-><init>(Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->b:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;

    .line 1049
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->b:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;

    .line 2012
    invoke-virtual {v0}, Lcmr;->d()V

    .line 35
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 70
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a:[Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a:[Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    aget-object v0, v0, p1

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonsCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a:[Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    array-length v0, v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->b:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->b:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;->c()V

    .line 59
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->b:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->b:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab$a;

    .line 2016
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcmq;->b(Lcmq$a;)V

    .line 67
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x1

    .line 127
    if-nez p1, :cond_1

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->c:Z

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    if-ne p1, v0, :cond_0

    .line 130
    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->c:Z

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i1"    # I

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->c:Z

    if-eqz v0, :cond_0

    .line 116
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->setAlphaProcess(F)V

    .line 118
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 122
    move v0, v1

    .line 2092
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a:[Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 2093
    if-ne v0, p1, :cond_1

    .line 2094
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a:[Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    aget-object v4, v2, v0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-boolean v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->c:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v4, v5, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(FZ)V

    .line 2092
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2094
    goto :goto_1

    .line 2096
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a:[Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    aget-object v4, v2, v0

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->c:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_3
    invoke-virtual {v4, v5, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(FZ)V

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_3

    .line 123
    :cond_3
    return-void
.end method

.method public setAlphaProcess(F)V
    .locals 4
    .param p1, "process"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a:[Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 103
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, v1

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v0, v2, v3

    .line 104
    .local v0, "alpha":F
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a:[Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    aget-object v3, v2, v1

    iget-boolean v2, p0, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->c:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(FZ)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 109
    .end local v0    # "alpha":F
    :cond_2
    return-void
.end method
