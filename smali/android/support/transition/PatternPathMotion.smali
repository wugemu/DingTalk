.class public Landroid/support/transition/PatternPathMotion;
.super Landroid/support/transition/PathMotion;
.source "PatternPathMotion.java"


# instance fields
.field private a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/transition/PathMotion;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/transition/PatternPathMotion;->b:Landroid/graphics/Path;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/transition/PatternPathMotion;->c:Landroid/graphics/Matrix;

    .line 53
    iget-object v0, p0, Landroid/support/transition/PatternPathMotion;->b:Landroid/graphics/Path;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    iget-object v0, p0, Landroid/support/transition/PatternPathMotion;->b:Landroid/graphics/Path;

    iput-object v0, p0, Landroid/support/transition/PatternPathMotion;->a:Landroid/graphics/Path;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/transition/PathMotion;-><init>()V

    .line 45
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/support/transition/PatternPathMotion;->b:Landroid/graphics/Path;

    .line 47
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Landroid/support/transition/PatternPathMotion;->c:Landroid/graphics/Matrix;

    .line 58
    sget-object v3, Lbc;->k:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    .end local p2    # "attrs":Landroid/util/AttributeSet;
    const-string/jumbo v3, "patternPathData"

    const/4 v4, 0x0

    invoke-static {v0, p2, v3, v4}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "pathData":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 63
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "pathData must be supplied for patternPathMotion"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v1    # "pathData":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3

    .line 65
    .restart local v1    # "pathData":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v1}, Ldu;->a(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    .line 1103
    .local v2, "pattern":Landroid/graphics/Path;
    new-instance v3, Landroid/graphics/PathMeasure;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 1104
    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    .line 1105
    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 1106
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 1107
    const/4 v4, 0x0

    aget v4, v5, v4

    .line 1108
    const/4 v6, 0x1

    aget v6, v5, v6

    .line 1109
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v5, v8}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 1110
    const/4 v3, 0x0

    aget v3, v5, v3

    .line 1111
    const/4 v7, 0x1

    aget v5, v5, v7

    .line 1113
    cmpl-float v7, v3, v4

    if-nez v7, :cond_1

    cmpl-float v7, v5, v6

    if-nez v7, :cond_1

    .line 1114
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "pattern must not end at the starting point"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1117
    :cond_1
    iget-object v7, p0, Landroid/support/transition/PatternPathMotion;->c:Landroid/graphics/Matrix;

    neg-float v8, v3

    neg-float v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1118
    sub-float v3, v4, v3

    .line 1119
    sub-float v4, v6, v5

    .line 1120
    invoke-static {v3, v4}, Landroid/support/transition/PatternPathMotion;->a(FF)F

    move-result v5

    .line 1121
    const/high16 v6, 0x3f800000    # 1.0f

    div-float v5, v6, v5

    .line 1122
    iget-object v6, p0, Landroid/support/transition/PatternPathMotion;->c:Landroid/graphics/Matrix;

    invoke-virtual {v6, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1123
    float-to-double v4, v4

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 1124
    iget-object v3, p0, Landroid/support/transition/PatternPathMotion;->c:Landroid/graphics/Matrix;

    neg-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1125
    iget-object v3, p0, Landroid/support/transition/PatternPathMotion;->c:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/support/transition/PatternPathMotion;->b:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 1126
    iput-object v2, p0, Landroid/support/transition/PatternPathMotion;->a:Landroid/graphics/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method private static a(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 145
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public final a(FFFF)Landroid/graphics/Path;
    .locals 10
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .prologue
    .line 131
    sub-float v2, p3, p1

    .line 132
    .local v2, "dx":F
    sub-float v3, p4, p2

    .line 133
    .local v3, "dy":F
    invoke-static {v2, v3}, Landroid/support/transition/PatternPathMotion;->a(FF)F

    move-result v4

    .line 134
    .local v4, "length":F
    float-to-double v6, v3

    float-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 136
    .local v0, "angle":D
    iget-object v6, p0, Landroid/support/transition/PatternPathMotion;->c:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 137
    iget-object v6, p0, Landroid/support/transition/PatternPathMotion;->c:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 138
    iget-object v6, p0, Landroid/support/transition/PatternPathMotion;->c:Landroid/graphics/Matrix;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 139
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 140
    .local v5, "path":Landroid/graphics/Path;
    iget-object v6, p0, Landroid/support/transition/PatternPathMotion;->b:Landroid/graphics/Path;

    iget-object v7, p0, Landroid/support/transition/PatternPathMotion;->c:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 141
    return-object v5
.end method
