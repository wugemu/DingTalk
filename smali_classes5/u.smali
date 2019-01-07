.class public final Lu;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private a:[F

.field private b:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lu;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lo;->l:[I

    invoke-static {p1, p2, p3, v0}, Lds;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1081
    .local v7, "a":Landroid/content/res/TypedArray;
    const-string/jumbo v0, "pathData"

    invoke-static {p4, v0}, Lds;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1082
    const-string/jumbo v0, "pathData"

    const/4 v1, 0x4

    invoke-static {v7, p4, v0, v1}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1084
    invoke-static {v0}, Ldu;->a(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    .line 1085
    if-nez v1, :cond_0

    .line 1086
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The path is null, which is created from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1089
    :cond_0
    invoke-direct {p0, v1}, Lu;->a(Landroid/graphics/Path;)V

    .line 75
    :goto_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void

    .line 1091
    :cond_1
    const-string/jumbo v0, "controlX1"

    invoke-static {p4, v0}, Lds;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1092
    new-instance v0, Landroid/view/InflateException;

    const-string/jumbo v1, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1093
    :cond_2
    const-string/jumbo v0, "controlY1"

    invoke-static {p4, v0}, Lds;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1094
    new-instance v0, Landroid/view/InflateException;

    const-string/jumbo v1, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_3
    const-string/jumbo v0, "controlX1"

    const/4 v1, 0x0

    invoke-static {v7, p4, v0, v1, v6}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    .line 1098
    const-string/jumbo v0, "controlY1"

    const/4 v2, 0x1

    invoke-static {v7, p4, v0, v2, v6}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    .line 1101
    const-string/jumbo v0, "controlX2"

    invoke-static {p4, v0}, Lds;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1102
    const-string/jumbo v3, "controlY2"

    invoke-static {p4, v3}, Lds;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 1104
    if-eq v0, v3, :cond_4

    .line 1105
    new-instance v0, Landroid/view/InflateException;

    const-string/jumbo v1, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1109
    :cond_4
    if-nez v0, :cond_5

    .line 1122
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1123
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1124
    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1125
    invoke-direct {p0, v0}, Lu;->a(Landroid/graphics/Path;)V

    goto :goto_0

    .line 1112
    :cond_5
    const-string/jumbo v0, "controlX2"

    const/4 v3, 0x2

    invoke-static {v7, p4, v0, v3, v6}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    .line 1114
    const-string/jumbo v0, "controlY2"

    const/4 v4, 0x3

    invoke-static {v7, p4, v0, v4, v6}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v4

    .line 1129
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1130
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move v6, v5

    .line 1131
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1132
    invoke-direct {p0, v0}, Lu;->a(Landroid/graphics/Path;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Path;)V
    .locals 14
    .param p1, "path"    # Landroid/graphics/Path;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 136
    new-instance v6, Landroid/graphics/PathMeasure;

    const/4 v10, 0x0

    invoke-direct {v6, p1, v10}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 138
    .local v6, "pathMeasure":Landroid/graphics/PathMeasure;
    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    .line 139
    .local v5, "pathLength":F
    const/16 v10, 0xbb8

    const v11, 0x3b03126f    # 0.002f

    div-float v11, v5, v11

    float-to-int v11, v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 141
    .local v4, "numPoints":I
    if-gtz v4, :cond_0

    .line 142
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "The Path has a invalid length "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 145
    :cond_0
    new-array v10, v4, [F

    iput-object v10, p0, Lu;->a:[F

    .line 146
    new-array v10, v4, [F

    iput-object v10, p0, Lu;->b:[F

    .line 148
    const/4 v10, 0x2

    new-array v7, v10, [F

    .line 149
    .local v7, "position":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 150
    int-to-float v10, v3

    mul-float/2addr v10, v5

    add-int/lit8 v11, v4, -0x1

    int-to-float v11, v11

    div-float v2, v10, v11

    .line 151
    .local v2, "distance":F
    const/4 v10, 0x0

    invoke-virtual {v6, v2, v7, v10}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 153
    iget-object v10, p0, Lu;->a:[F

    const/4 v11, 0x0

    aget v11, v7, v11

    aput v11, v10, v3

    .line 154
    iget-object v10, p0, Lu;->b:[F

    const/4 v11, 0x1

    aget v11, v7, v11

    aput v11, v10, v3

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "distance":F
    :cond_1
    iget-object v10, p0, Lu;->a:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_2

    iget-object v10, p0, Lu;->b:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_2

    iget-object v10, p0, Lu;->a:[F

    add-int/lit8 v11, v4, -0x1

    aget v10, v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_2

    iget-object v10, p0, Lu;->b:[F

    add-int/lit8 v11, v4, -0x1

    aget v10, v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    .line 158
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-lez v10, :cond_3

    .line 159
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "The Path must start at (0,0) and end at (1,1) start: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lu;->a:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lu;->b:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " end:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lu;->a:[F

    add-int/lit8 v13, v4, -0x1

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lu;->b:[F

    add-int/lit8 v13, v4, -0x1

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 165
    :cond_3
    const/4 v8, 0x0

    .line 166
    .local v8, "prevX":F
    const/4 v0, 0x0

    .line 167
    .local v0, "componentIndex":I
    const/4 v3, 0x0

    move v1, v0

    .end local v0    # "componentIndex":I
    .local v1, "componentIndex":I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 168
    iget-object v10, p0, Lu;->a:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "componentIndex":I
    .restart local v0    # "componentIndex":I
    aget v9, v10, v1

    .line 169
    .local v9, "x":F
    cmpg-float v10, v9, v8

    if-gez v10, :cond_4

    .line 170
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "The Path cannot loop back on itself, x :"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 172
    :cond_4
    iget-object v10, p0, Lu;->a:[F

    aput v9, v10, v3

    .line 173
    move v8, v9

    .line 167
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "componentIndex":I
    .restart local v1    # "componentIndex":I
    goto :goto_1

    .line 176
    .end local v9    # "x":F
    :cond_5
    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 177
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "The Path should be continuous, can\'t have 2+ contours"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 180
    :cond_6
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 11
    .param p1, "t"    # F

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 194
    cmpg-float v10, p1, v8

    if-gtz v10, :cond_0

    .line 222
    :goto_0
    return v8

    .line 196
    :cond_0
    cmpl-float v10, p1, v9

    if-ltz v10, :cond_1

    move v8, v9

    .line 197
    goto :goto_0

    .line 200
    :cond_1
    const/4 v4, 0x0

    .line 201
    .local v4, "startIndex":I
    iget-object v9, p0, Lu;->a:[F

    array-length v9, v9

    add-int/lit8 v0, v9, -0x1

    .line 203
    .local v0, "endIndex":I
    :goto_1
    sub-int v9, v0, v4

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 204
    add-int v9, v4, v0

    div-int/lit8 v3, v9, 0x2

    .line 205
    .local v3, "midIndex":I
    iget-object v9, p0, Lu;->a:[F

    aget v9, v9, v3

    cmpg-float v9, p1, v9

    if-gez v9, :cond_2

    .line 206
    move v0, v3

    goto :goto_1

    .line 208
    :cond_2
    move v4, v3

    .line 210
    goto :goto_1

    .line 212
    .end local v3    # "midIndex":I
    :cond_3
    iget-object v9, p0, Lu;->a:[F

    aget v9, v9, v0

    iget-object v10, p0, Lu;->a:[F

    aget v10, v10, v4

    sub-float v7, v9, v10

    .line 213
    .local v7, "xRange":F
    cmpl-float v8, v7, v8

    if-nez v8, :cond_4

    .line 214
    iget-object v8, p0, Lu;->b:[F

    aget v8, v8, v4

    goto :goto_0

    .line 217
    :cond_4
    iget-object v8, p0, Lu;->a:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    .line 218
    .local v6, "tInRange":F
    div-float v2, v6, v7

    .line 220
    .local v2, "fraction":F
    iget-object v8, p0, Lu;->b:[F

    aget v5, v8, v4

    .line 221
    .local v5, "startY":F
    iget-object v8, p0, Lu;->b:[F

    aget v1, v8, v0

    .line 222
    .local v1, "endY":F
    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    goto :goto_0
.end method
