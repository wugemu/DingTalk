.class public Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;
.super Landroid/widget/ImageView;
.source "RoundedImageView.java"


# instance fields
.field private a:[F

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a:[F

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->b:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->c:Landroid/graphics/Path;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a:[F

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->b:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->c:Landroid/graphics/Path;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a:[F

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->b:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->c:Landroid/graphics/Path;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 55
    const/4 v3, 0x0

    .local v3, "topLeft":F
    const/4 v4, 0x0

    .local v4, "topRight":F
    const/4 v1, 0x0

    .local v1, "bottomLeft":F
    const/4 v2, 0x0

    .line 56
    .local v2, "bottomRight":F
    if-eqz p2, :cond_0

    .line 57
    sget-object v6, Lcig$l;->RoundedImageView:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v6, Lcig$l;->RoundedImageView_topLeft:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 60
    sget v6, Lcig$l;->RoundedImageView_topRight:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 61
    sget v6, Lcig$l;->RoundedImageView_bottomLeft:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 62
    sget v6, Lcig$l;->RoundedImageView_bottomRight:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 66
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a(FFFF)V

    .line 69
    return-void

    .line 63
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v5

    .line 64
    .local v5, "tr":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(FFFF)V
    .locals 2
    .param p1, "topLeft"    # F
    .param p2, "topRight"    # F
    .param p3, "bottomLeft"    # F
    .param p4, "bottomRight"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a:[F

    const/4 v1, 0x2

    aput p2, v0, v1

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a:[F

    const/4 v1, 0x3

    aput p2, v0, v1

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a:[F

    const/4 v1, 0x4

    aput p3, v0, v1

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a:[F

    const/4 v1, 0x5

    aput p3, v0, v1

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a:[F

    const/4 v1, 0x6

    aput p4, v0, v1

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a:[F

    const/4 v1, 0x7

    aput p4, v0, v1

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->invalidate()V

    .line 81
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 88
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->c:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->getWidth()I

    move-result v2

    .line 90
    .local v2, "w":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->getHeight()I

    move-result v1

    .line 92
    .local v1, "h":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->b:Landroid/graphics/RectF;

    int-to-float v4, v2

    int-to-float v5, v1

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 93
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->c:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->b:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a:[F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 95
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
