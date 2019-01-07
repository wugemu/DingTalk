.class public final Lss;
.super Ljava/lang/Object;
.source "UiUtils.java"


# static fields
.field private static a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lss;->a:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    const/4 v1, -0x1

    .line 201
    .local v1, "statusBarHeight":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 202
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 207
    :cond_0
    return v1
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .prologue
    .line 115
    const/4 v1, 0x1

    int-to-float v2, p1

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 115
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 117
    .local v0, "px":F
    float-to-int v1, v0

    return v1
.end method

.method public static a(Landroid/widget/GridView;)I
    .locals 4
    .param p0, "gridView"    # Landroid/widget/GridView;

    .prologue
    const/4 v1, 0x1

    .line 78
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 86
    :goto_0
    return v1

    .line 82
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mNumColumns"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 83
    .local v0, "numColumns":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 86
    .end local v0    # "numColumns":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;I)Ljava/lang/Object;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "show"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 176
    if-nez p0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    move-object v3, p0

    .line 181
    check-cast v3, Landroid/view/ViewGroup;

    .line 182
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 183
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 184
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 185
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, "childView":Landroid/view/View;
    invoke-static {v0, p1}, Lss;->a(Landroid/view/View;Z)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "childView":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2
    move v4, v5

    .line 182
    goto :goto_1

    .line 189
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_3
    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_3
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "enable"    # Z

    .prologue
    .line 145
    if-nez p0, :cond_1

    .line 157
    :cond_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 149
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 150
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 152
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v0, p1}, Lss;->a(Landroid/view/ViewGroup;Z)V

    .line 149
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public static a()Z
    .locals 4

    .prologue
    .line 233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/widget/HorizontalScrollView;)Z
    .locals 6
    .param p0, "scrollView"    # Landroid/widget/HorizontalScrollView;

    .prologue
    const/4 v3, 0x0

    .line 242
    if-nez p0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v3

    .line 246
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 250
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 256
    invoke-virtual {p0, v3, v3}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 257
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 258
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v5

    sub-int v1, v4, v5

    .line 259
    .local v1, "scrollWidth":I
    if-le v2, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/widget/GridView;)I
    .locals 3
    .param p0, "gridView"    # Landroid/widget/GridView;

    .prologue
    .line 97
    if-eqz p0, :cond_1

    .line 98
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/widget/GridView;->getHorizontalSpacing()I

    move-result v1

    .line 110
    :goto_0
    return v1

    .line 102
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mHorizontalSpacing"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 103
    .local v0, "spacing":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 106
    .end local v0    # "spacing":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    invoke-virtual {p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    .line 110
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "clickable"    # Z

    .prologue
    .line 160
    if-nez p0, :cond_1

    .line 168
    :cond_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 164
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 165
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
