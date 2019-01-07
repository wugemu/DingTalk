.class public final Lbki;
.super Ljava/lang/Object;
.source "DingViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;III)Z
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "threshold"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 29
    .local v2, "location":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 30
    aget v1, v2, v6

    .line 31
    .local v1, "left":I
    aget v4, v2, v5

    .line 32
    .local v4, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v1, v7

    .line 33
    .local v3, "right":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .line 34
    .local v0, "bottom":I
    add-int/lit8 v7, v4, 0x0

    if-lt p2, v7, :cond_0

    add-int/lit8 v7, v0, 0x0

    if-gt p2, v7, :cond_0

    add-int/lit8 v7, v1, 0x0

    if-lt p1, v7, :cond_0

    add-int/lit8 v7, v3, 0x0

    if-gt p1, v7, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;)Z
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    .line 44
    .local v3, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v2

    .line 46
    .local v2, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    sub-int v1, v4, v5

    .line 48
    .local v1, "scrollExtent":I
    sub-int v0, v2, v1

    .line 50
    .local v0, "scrollDifference":I
    if-eqz v0, :cond_0

    if-gtz v3, :cond_1

    :cond_0
    if-ge v3, v0, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
