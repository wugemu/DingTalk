.class public Landroid/support/transition/ChangeImageTransform;
.super Landroid/support/transition/Transition;
.source "ChangeImageTransform.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android:changeImageTransform:matrix"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android:changeImageTransform:bounds"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/ChangeImageTransform;->a:[Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/support/transition/ChangeImageTransform$1;

    invoke-direct {v0}, Landroid/support/transition/ChangeImageTransform$1;-><init>()V

    sput-object v0, Landroid/support/transition/ChangeImageTransform;->b:Landroid/animation/TypeEvaluator;

    .line 60
    new-instance v0, Landroid/support/transition/ChangeImageTransform$2;

    const-class v1, Landroid/graphics/Matrix;

    const-string/jumbo v2, "animatedTransform"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeImageTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeImageTransform;->c:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method private static a(Lbh;)V
    .locals 18
    .param p0, "transitionValues"    # Lbh;

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v9, v0, Lbh;->b:Landroid/view/View;

    .line 82
    .local v9, "view":Landroid/view/View;
    instance-of v10, v9, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, v9

    .line 85
    check-cast v4, Landroid/widget/ImageView;

    .line 86
    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 87
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 90
    move-object/from16 v0, p0

    iget-object v8, v0, Lbh;->a:Ljava/util/Map;

    .line 92
    .local v8, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 93
    .local v5, "left":I
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v7

    .line 94
    .local v7, "top":I
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v6

    .line 95
    .local v6, "right":I
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 97
    .local v1, "bottom":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v7, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    .local v2, "bounds":Landroid/graphics/Rect;
    const-string/jumbo v10, "android:changeImageTransform:bounds"

    invoke-interface {v8, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v11, "android:changeImageTransform:matrix"

    .line 1187
    sget-object v10, Landroid/support/transition/ChangeImageTransform$3;->a:[I

    invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v12

    aget v10, v10, v12

    packed-switch v10, :pswitch_data_0

    .line 1193
    new-instance v10, Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 99
    :goto_1
    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1202
    :pswitch_0
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1203
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 1205
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 1206
    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v14, v12

    .line 1204
    invoke-virtual {v10, v13, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 1215
    :pswitch_1
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1216
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 1217
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v13

    .line 1218
    int-to-float v14, v13

    int-to-float v15, v12

    div-float/2addr v14, v15

    .line 1220
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 1221
    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v15

    .line 1222
    int-to-float v0, v15

    move/from16 v16, v0

    int-to-float v0, v10

    move/from16 v17, v0

    div-float v16, v16, v17

    .line 1224
    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 1226
    int-to-float v12, v12

    mul-float/2addr v12, v14

    .line 1227
    int-to-float v10, v10

    mul-float/2addr v10, v14

    .line 1228
    int-to-float v13, v13

    sub-float v12, v13, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 1229
    int-to-float v13, v15

    sub-float v10, v13, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v10, v13

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 1231
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 1232
    invoke-virtual {v10, v14, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1233
    int-to-float v12, v12

    int-to-float v13, v13

    invoke-virtual {v10, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 1187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public captureEndValues(Lbh;)V
    .locals 0
    .param p1, "transitionValues"    # Lbh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    invoke-static {p1}, Landroid/support/transition/ChangeImageTransform;->a(Lbh;)V

    .line 110
    return-void
.end method

.method public captureStartValues(Lbh;)V
    .locals 0
    .param p1, "transitionValues"    # Lbh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    invoke-static {p1}, Landroid/support/transition/ChangeImageTransform;->a(Lbh;)V

    .line 105
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lbh;Lbh;)Landroid/animation/Animator;
    .locals 16
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Lbh;
    .param p3, "endValues"    # Lbh;

    .prologue
    .line 130
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 131
    :cond_0
    const/4 v1, 0x0

    .line 172
    :goto_0
    return-object v1

    .line 133
    :cond_1
    move-object/from16 v0, p2

    iget-object v11, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v12, "android:changeImageTransform:bounds"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 134
    .local v9, "startBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v11, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v12, "android:changeImageTransform:bounds"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 135
    .local v5, "endBounds":Landroid/graphics/Rect;
    if-eqz v9, :cond_2

    if-nez v5, :cond_3

    .line 136
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 139
    :cond_3
    move-object/from16 v0, p2

    iget-object v11, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v12, "android:changeImageTransform:matrix"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Matrix;

    .line 140
    .local v10, "startMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p3

    iget-object v11, v0, Lbh;->a:Ljava/util/Map;

    const-string/jumbo v12, "android:changeImageTransform:matrix"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Matrix;

    .line 142
    .local v6, "endMatrix":Landroid/graphics/Matrix;
    if-nez v10, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    if-eqz v10, :cond_6

    .line 143
    invoke-virtual {v10, v6}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_5
    const/4 v8, 0x1

    .line 145
    .local v8, "matricesEqual":Z
    :goto_1
    invoke-virtual {v9, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v8, :cond_7

    .line 146
    const/4 v1, 0x0

    goto :goto_0

    .line 143
    .end local v8    # "matricesEqual":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 149
    .restart local v8    # "matricesEqual":Z
    :cond_7
    move-object/from16 v0, p3

    iget-object v7, v0, Lbh;->b:Landroid/view/View;

    check-cast v7, Landroid/widget/ImageView;

    .line 150
    .local v7, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 151
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 152
    .local v4, "drawableWidth":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 154
    .local v3, "drawableHeight":I
    invoke-static {v7}, Lak;->a(Landroid/widget/ImageView;)V

    .line 157
    if-eqz v4, :cond_8

    if-nez v3, :cond_9

    .line 2176
    :cond_8
    sget-object v11, Landroid/support/transition/ChangeImageTransform;->c:Landroid/util/Property;

    sget-object v12, Landroid/support/transition/ChangeImageTransform;->b:Landroid/animation/TypeEvaluator;

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/graphics/Matrix;

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput-object v15, v13, v14

    invoke-static {v7, v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 170
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    :goto_2
    invoke-static {v7, v1}, Lak;->a(Landroid/widget/ImageView;Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 160
    .end local v1    # "animator":Landroid/animation/ObjectAnimator;
    :cond_9
    if-nez v10, :cond_a

    .line 161
    sget-object v10, Lao;->a:Landroid/graphics/Matrix;

    .line 163
    :cond_a
    if-nez v6, :cond_b

    .line 164
    sget-object v6, Lao;->a:Landroid/graphics/Matrix;

    .line 166
    :cond_b
    sget-object v11, Landroid/support/transition/ChangeImageTransform;->c:Landroid/util/Property;

    invoke-virtual {v11, v7, v10}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2182
    sget-object v11, Landroid/support/transition/ChangeImageTransform;->c:Landroid/util/Property;

    new-instance v12, Lbg$a;

    invoke-direct {v12}, Lbg$a;-><init>()V

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/graphics/Matrix;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v6, v13, v14

    invoke-static {v7, v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 167
    .restart local v1    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_2
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Landroid/support/transition/ChangeImageTransform;->a:[Ljava/lang/String;

    return-object v0
.end method
