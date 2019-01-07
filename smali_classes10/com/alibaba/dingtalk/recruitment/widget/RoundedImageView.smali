.class public Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;
.super Landroid/widget/ImageView;
.source "RoundedImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;
    }
.end annotation


# static fields
.field private static final b:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private a:I

.field private c:Landroid/widget/ImageView$ScaleType;

.field private d:F

.field private e:Landroid/content/res/ColorStateList;

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->b:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    iput v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->a:I

    .line 46
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->c:Landroid/widget/ImageView$ScaleType;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->d:F

    .line 50
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->e:Landroid/content/res/ColorStateList;

    .line 52
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->f:Z

    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->h:[F

    .line 60
    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v11, 0x8

    const/high16 v10, -0x1000000

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v8, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->a:I

    .line 46
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->c:Landroid/widget/ImageView$ScaleType;

    .line 48
    iput v9, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->d:F

    .line 50
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->e:Landroid/content/res/ColorStateList;

    .line 52
    iput-boolean v8, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->f:Z

    .line 56
    new-array v6, v11, [F

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->h:[F

    .line 69
    sget-object v6, Lgtt$h;->RoundedImageView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v6, Lgtt$h;->RoundedImageView_android_scaleType:I

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 73
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 74
    sget-object v6, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->b:[Landroid/widget/ImageView$ScaleType;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    :cond_0
    sget v6, Lgtt$h;->RoundedImageView_ri_left_top_corner_radius:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v3, v6

    .line 79
    .local v3, "leftTopCornerRadius":F
    sget v6, Lgtt$h;->RoundedImageView_ri_right_top_corner_radius:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v5, v6

    .line 81
    .local v5, "rightTopCornerRadius":F
    sget v6, Lgtt$h;->RoundedImageView_ri_left_bottom_corner_radius:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v2, v6

    .line 83
    .local v2, "leftBottomCornerRadius":F
    sget v6, Lgtt$h;->RoundedImageView_ri_right_bottom_corner_radius:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v4, v6

    .line 86
    .local v4, "rightBottomCornerRadius":F
    cmpg-float v6, v3, v9

    if-ltz v6, :cond_1

    cmpg-float v6, v5, v9

    if-ltz v6, :cond_1

    cmpg-float v6, v2, v9

    if-ltz v6, :cond_1

    cmpg-float v6, v4, v9

    if-gez v6, :cond_2

    .line 90
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "radius values cannot be negative."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 93
    :cond_2
    new-array v6, v11, [F

    aput v3, v6, v8

    const/4 v7, 0x1

    aput v3, v6, v7

    const/4 v7, 0x2

    aput v5, v6, v7

    const/4 v7, 0x3

    aput v5, v6, v7

    const/4 v7, 0x4

    aput v4, v6, v7

    const/4 v7, 0x5

    aput v4, v6, v7

    const/4 v7, 0x6

    aput v2, v6, v7

    const/4 v7, 0x7

    aput v2, v6, v7

    iput-object v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->h:[F

    .line 99
    sget v6, Lgtt$h;->RoundedImageView_ri_border_width:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->d:F

    .line 100
    iget v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->d:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_3

    .line 101
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "border width cannot be negative."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 104
    :cond_3
    sget v6, Lgtt$h;->RoundedImageView_ri_border_color:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->e:Landroid/content/res/ColorStateList;

    .line 105
    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->e:Landroid/content/res/ColorStateList;

    if-nez v6, :cond_4

    .line 106
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->e:Landroid/content/res/ColorStateList;

    .line 109
    :cond_4
    sget v6, Lgtt$h;->RoundedImageView_ri_oval:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->f:Z

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->b()V

    .line 113
    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 167
    .local v2, "rsrc":Landroid/content/res/Resources;
    if-nez v2, :cond_0

    .line 168
    const/4 v3, 0x0

    .line 181
    :goto_0
    return-object v3

    .line 171
    :cond_0
    const/4 v0, 0x0

    .line 173
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->a:I

    if-eqz v3, :cond_1

    .line 175
    :try_start_0
    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 181
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 178
    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->a:I

    goto :goto_1
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->g:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->g:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->c:Landroid/widget/ImageView$ScaleType;

    .line 1568
    if-eqz v1, :cond_1

    .line 1571
    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->f:Landroid/widget/ImageView$ScaleType;

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->g:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->h:[F

    .line 2483
    if-eqz v3, :cond_3

    .line 2486
    array-length v1, v3

    const/16 v4, 0x8

    if-eq v1, v4, :cond_2

    .line 2487
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "radii[] needs 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v2

    .line 2490
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 2491
    iget-object v4, v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->b:[F

    aget v5, v3, v1

    aput v5, v4, v1

    .line 2490
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->g:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;

    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->d:F

    .line 2540
    iput v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    .line 2541
    iget-object v0, v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->g:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->e:Landroid/content/res/ColorStateList;

    .line 2553
    if-nez v1, :cond_4

    .line 2554
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->d:F

    .line 2555
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->e:Landroid/content/res/ColorStateList;

    .line 2556
    iget-object v0, v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    :goto_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->g:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->f:Z

    .line 2564
    iput-boolean v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->c:Z

    goto :goto_0

    .line 2558
    :cond_4
    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->e:Landroid/content/res/ColorStateList;

    .line 2559
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->getState()[I

    move-result-object v0

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v0, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->invalidate()V

    .line 119
    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->d:F

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->c:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 205
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    .line 206
    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    .end local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_0
    :goto_0
    return-void

    .line 213
    .restart local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_1
    if-eqz p1, :cond_2

    .end local p1    # "colors":Landroid/content/res/ColorStateList;
    :goto_1
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->e:Landroid/content/res/ColorStateList;

    .line 214
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->b()V

    .line 215
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->invalidate()V

    goto :goto_0

    .line 213
    .restart local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_2
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_1
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->a:I

    .line 144
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->g:Landroid/graphics/drawable/Drawable;

    .line 145
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->g:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->b()V

    .line 147
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->a:I

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView$a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->g:Landroid/graphics/drawable/Drawable;

    .line 137
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->g:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->b()V

    .line 139
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 151
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->a:I

    if-eq v0, p1, :cond_0

    .line 152
    iput p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->a:I

    .line 153
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->g:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->g:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->b()V

    .line 157
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    return-void
.end method

.method public setOval(Z)V
    .locals 0
    .param p1, "oval"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->f:Z

    .line 226
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->b()V

    .line 227
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->invalidate()V

    .line 228
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 129
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->c:Landroid/widget/ImageView$ScaleType;

    .line 130
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->b()V

    .line 131
    return-void
.end method
