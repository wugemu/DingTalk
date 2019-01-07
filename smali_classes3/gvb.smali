.class public final Lgvb;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)I
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 42
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 43
    .local v1, "viewRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 44
    .local v0, "isVisible":Z
    if-nez v0, :cond_1

    .line 45
    const/4 v2, 0x0

    .line 54
    :cond_0
    :goto_0
    return v2

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 49
    .local v2, "visibleHeight":I
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-gtz v3, :cond_2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v2, :cond_0

    .line 51
    :cond_2
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_1

    .line 20
    :cond_0
    :goto_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method
