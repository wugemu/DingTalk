.class public Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "PhotoViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field c:F

.field d:Z

.field e:I

.field f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2921
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2902
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->c:F

    .line 2922
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2925
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2902
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->c:F

    .line 2927
    invoke-static {}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->c()[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2928
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->b:I

    .line 2929
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2930
    return-void
.end method
