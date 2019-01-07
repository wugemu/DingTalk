.class public Lcom/alibaba/android/scan/widget/ScanRayView;
.super Landroid/widget/ImageView;
.source "ScanRayView.java"


# instance fields
.field public a:Landroid/view/animation/ScaleAnimation;

.field private b:Lcom/alibaba/android/scan/widget/ScaleFinderView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/scan/widget/ScanRayView;->b:Lcom/alibaba/android/scan/widget/ScaleFinderView;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/scan/widget/ScanRayView;->b:Lcom/alibaba/android/scan/widget/ScaleFinderView;

    .line 23
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 27
    new-array v1, v3, [I

    .line 28
    .local v1, "location":[I
    invoke-virtual {p0, v1}, Lcom/alibaba/android/scan/widget/ScanRayView;->getLocationOnScreen([I)V

    .line 30
    iget-object v2, p0, Lcom/alibaba/android/scan/widget/ScanRayView;->b:Lcom/alibaba/android/scan/widget/ScaleFinderView;

    if-eqz v2, :cond_0

    .line 31
    new-array v0, v3, [I

    .line 32
    .local v0, "l":[I
    iget-object v2, p0, Lcom/alibaba/android/scan/widget/ScanRayView;->b:Lcom/alibaba/android/scan/widget/ScaleFinderView;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/scan/widget/ScaleFinderView;->getLocationInWindow([I)V

    .line 33
    aget v2, v1, v7

    aget v3, v0, v7

    sub-int/2addr v2, v3

    aput v2, v1, v7

    .line 34
    iget-object v2, p0, Lcom/alibaba/android/scan/widget/ScanRayView;->b:Lcom/alibaba/android/scan/widget/ScaleFinderView;

    aget v3, v1, v5

    aget v4, v1, v7

    aget v5, v1, v5

    invoke-virtual {p0}, Lcom/alibaba/android/scan/widget/ScanRayView;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v6, v1, v7

    invoke-virtual {p0}, Lcom/alibaba/android/scan/widget/ScanRayView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 1061
    iput v3, v2, Lcom/alibaba/android/scan/widget/ScaleFinderView;->a:I

    .line 1062
    iput v5, v2, Lcom/alibaba/android/scan/widget/ScaleFinderView;->b:I

    .line 1063
    iput v4, v2, Lcom/alibaba/android/scan/widget/ScaleFinderView;->c:I

    .line 1064
    iput v6, v2, Lcom/alibaba/android/scan/widget/ScaleFinderView;->d:I

    .line 1065
    invoke-virtual {v2}, Lcom/alibaba/android/scan/widget/ScaleFinderView;->invalidate()V

    .line 36
    .end local v0    # "l":[I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 37
    return-void
.end method

.method public setFinderView(Lcom/alibaba/android/scan/widget/ScaleFinderView;)V
    .locals 0
    .param p1, "FinderView"    # Lcom/alibaba/android/scan/widget/ScaleFinderView;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/scan/widget/ScanRayView;->b:Lcom/alibaba/android/scan/widget/ScaleFinderView;

    .line 53
    return-void
.end method
