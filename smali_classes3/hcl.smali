.class public final Lhcl;
.super Ljava/lang/Object;
.source "SwipeUtils.java"


# static fields
.field private static final a:[I

.field private static final b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lhcl;->a:[I

    .line 17
    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lhcl;->b:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLandroid/view/View;)Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    .locals 12
    .param p0, "id"    # J
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    new-instance v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;

    invoke-direct {v1}, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;-><init>()V

    .line 21
    .local v1, "object":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    iput-wide p0, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->id:J

    .line 22
    if-nez p2, :cond_0

    .line 42
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    .local v0, "fillWithDrawable":Z
    instance-of v2, p2, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 28
    check-cast v2, Landroid/widget/ImageView;

    .line 1046
    if-nez v2, :cond_3

    move v2, v4

    .line 28
    :goto_1
    if-eqz v2, :cond_1

    .line 29
    const/4 v0, 0x1

    .line 33
    :cond_1
    if-nez v0, :cond_2

    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    .line 38
    :cond_2
    sget-object v2, Lhcl;->a:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 39
    sget-object v2, Lhcl;->a:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v10

    add-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->centerX:F

    .line 40
    sget-object v2, Lhcl;->a:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v10

    add-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->centerY:F

    goto :goto_0

    .line 1050
    :cond_3
    instance-of v3, v2, Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    if-eqz v3, :cond_5

    move-object v3, v2

    .line 1051
    check-cast v3, Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 1082
    if-eqz v3, :cond_4

    if-nez v1, :cond_6

    :cond_4
    move v3, v4

    .line 1052
    :goto_2
    if-nez v3, :cond_c

    .line 1057
    :cond_5
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1058
    if-nez v3, :cond_a

    move v2, v4

    .line 1059
    goto :goto_1

    .line 1086
    :cond_6
    invoke-virtual {v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getSWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getScale()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    .line 1087
    invoke-virtual {v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getSHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getScale()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    .line 1089
    invoke-virtual {v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v6

    if-lez v6, :cond_7

    .line 1090
    iget v6, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    invoke-virtual {v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    .line 1092
    :cond_7
    invoke-virtual {v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v6

    if-lez v6, :cond_8

    .line 1093
    iget v6, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    invoke-virtual {v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    .line 1095
    :cond_8
    iget v3, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    if-lez v3, :cond_9

    iget v3, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    if-lez v3, :cond_9

    move v3, v5

    goto :goto_2

    :cond_9
    move v3, v4

    goto :goto_2

    .line 1061
    :cond_a
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1062
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1064
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    .line 1065
    sget-object v8, Lhcl;->b:[F

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1066
    sget-object v7, Lhcl;->b:[F

    aget v7, v7, v4

    .line 1067
    sget-object v8, Lhcl;->b:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    .line 1069
    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    .line 1070
    int-to-float v3, v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    .line 1071
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-lez v3, :cond_b

    .line 1072
    iget v3, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->width:I

    .line 1074
    :cond_b
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-lez v3, :cond_c

    .line 1075
    iget v3, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;->height:I

    :cond_c
    move v2, v5

    .line 1078
    goto/16 :goto_1
.end method
