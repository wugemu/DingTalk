.class public Lcom/taobao/weex/utils/BoxShadowUtil;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;,
        Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;,
        Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BoxShadowUtil"

.field private static sBoxShadowEnabled:Z

.field private static sColorPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sBoxShadowEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Ljava/util/List;F[F)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # F
    .param p3, "x3"    # [F

    .prologue
    .line 66
    invoke-static {p0, p1, p2, p3}, Lcom/taobao/weex/utils/BoxShadowUtil;->setNormalBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;Ljava/util/List;F[F)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # F
    .param p3, "x3"    # [F

    .prologue
    .line 66
    invoke-static {p0, p1, p2, p3}, Lcom/taobao/weex/utils/BoxShadowUtil;->setInsetBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V

    return-void
.end method

.method private static drawShadow(Landroid/graphics/Canvas;Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V
    .locals 13
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "options"    # Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 144
    new-instance v7, Landroid/graphics/RectF;

    iget v8, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    int-to-float v8, v8

    iget v9, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    mul-float/2addr v9, v12

    add-float/2addr v8, v9

    iget v9, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    int-to-float v9, v9

    iget v10, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    mul-float/2addr v10, v12

    add-float/2addr v9, v10

    invoke-direct {v7, v11, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 149
    .local v7, "shadowRect":Landroid/graphics/RectF;
    iget-object v8, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    if-eqz v8, :cond_0

    .line 150
    iget-object v8, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 153
    :cond_0
    iget v2, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    .line 154
    .local v2, "shadowDx":F
    iget v3, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    .line 155
    .local v3, "shadowDy":F
    iget v8, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_1

    .line 156
    iget v8, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    mul-float/2addr v8, v12

    add-float/2addr v2, v8

    .line 158
    :cond_1
    iget v8, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_2

    .line 159
    iget v8, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    mul-float/2addr v8, v12

    add-float/2addr v3, v8

    .line 161
    :cond_2
    invoke-virtual {v7, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 163
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 164
    .local v4, "shadowPaint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    iget v8, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget v8, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_3

    .line 169
    new-instance v8, Landroid/graphics/BlurMaskFilter;

    iget v9, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    sget-object v10, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v8, v9, v10}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 172
    :cond_3
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 173
    .local v5, "shadowPath":Landroid/graphics/Path;
    const/16 v8, 0x8

    new-array v6, v8, [F

    .line 174
    .local v6, "shadowRadii":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    array-length v8, v8

    if-ge v1, v8, :cond_5

    .line 175
    iget-object v8, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    aget v0, v8, v1

    .line 176
    .local v0, "contentRadius":F
    cmpl-float v8, v0, v11

    if-nez v8, :cond_4

    .line 177
    aput v11, v6, v1

    .line 174
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_4
    iget-object v8, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    aget v8, v8, v1

    iget v9, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    add-float/2addr v8, v9

    aput v8, v6, v1

    goto :goto_1

    .line 182
    .end local v0    # "contentRadius":F
    :cond_5
    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v7, v6, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 183
    invoke-virtual {p0, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 192
    return-void
.end method

.method public static isBoxShadowEnabled()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sBoxShadowEnabled:Z

    return v0
.end method

.method private static parseBoxShadow(Ljava/lang/String;I)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    .locals 13
    .param p0, "boxShadow"    # Ljava/lang/String;
    .param p1, "viewport"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 326
    new-instance v7, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    invoke-direct {v7, p1, v9}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(ILcom/taobao/weex/utils/BoxShadowUtil$1;)V

    .line 327
    .local v7, "result":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v7, v9

    .line 378
    .end local v7    # "result":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    :cond_0
    :goto_0
    return-object v7

    .line 334
    .restart local v7    # "result":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    :cond_1
    move-object v0, p0

    .local v0, "boxShadowCopy":Ljava/lang/String;
    const-string/jumbo v10, "\\s*,\\s+"

    const-string/jumbo v11, ","

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    const-string/jumbo v10, "inset"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 338
    iput-boolean v12, v7, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    .line 339
    const-string/jumbo v10, "inset"

    const-string/jumbo v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 343
    new-instance v3, Ljava/util/ArrayList;

    const-string/jumbo v10, "\\s+"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 346
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 347
    .local v2, "maybeColor":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 348
    const-string/jumbo v10, "#"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "rgb"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v2}, Lcom/taobao/weex/utils/WXResourceUtils;->isNamedColor(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 349
    :cond_3
    const/high16 v10, -0x1000000

    invoke-static {v2, v10}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v10

    iput v10, v7, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    .line 350
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 355
    :cond_4
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_5

    move-object v7, v9

    .line 357
    goto :goto_0

    .line 359
    :cond_5
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 360
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 361
    .local v6, "px":F
    invoke-static {v6, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FI)F

    move-result v9

    iput v9, v7, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    .line 364
    .end local v6    # "px":F
    :cond_6
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 365
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 366
    .restart local v6    # "px":F
    invoke-static {v6, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v9

    iput v9, v7, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    .line 369
    .end local v6    # "px":F
    :cond_7
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 370
    add-int/lit8 v5, v1, -0x2

    .line 371
    .local v5, "parserIndex":I
    invoke-static {v7}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->access$500(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;

    .line 372
    .local v4, "parser":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4, v9}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 375
    .end local v1    # "i":I
    .end local v4    # "parser":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;
    .end local v5    # "parserIndex":I
    :catch_0
    move-exception v8

    .line 376
    .local v8, "t":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static parseBoxShadows(Ljava/lang/String;I)[Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    .locals 11
    .param p0, "boxShadowStyle"    # Ljava/lang/String;
    .param p1, "viewport"    # I

    .prologue
    .line 302
    sget-object v6, Lcom/taobao/weex/utils/BoxShadowUtil;->sColorPattern:Ljava/util/regex/Pattern;

    if-nez v6, :cond_0

    .line 303
    const-string/jumbo v6, "([rR][gG][bB][aA]?)\\((\\d+\\s*),\\s*(\\d+\\s*),\\s*(\\d+\\s*)(?:,\\s*(\\d+(?:\\.\\d+)?))?\\)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    sput-object v6, Lcom/taobao/weex/utils/BoxShadowUtil;->sColorPattern:Ljava/util/regex/Pattern;

    .line 306
    :cond_0
    sget-object v6, Lcom/taobao/weex/utils/BoxShadowUtil;->sColorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 308
    .local v2, "matcher":Ljava/util/regex/Matcher;
    move-object v3, p0

    .line 309
    .local v3, "processedStyle":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 310
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "color":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "#"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "%8s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/high16 v10, -0x1000000

    invoke-static {v0, v10}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\\s"

    const-string/jumbo v9, "0"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 312
    goto :goto_0

    .line 314
    .end local v0    # "color":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, "styles":[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v6, v5

    if-lez v6, :cond_2

    .line 316
    array-length v6, v5

    new-array v4, v6, [Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 317
    .local v4, "result":[Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_3

    .line 318
    aget-object v6, v5, v1

    invoke-static {v6, p1}, Lcom/taobao/weex/utils/BoxShadowUtil;->parseBoxShadow(Ljava/lang/String;I)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    move-result-object v6

    aput-object v6, v4, v1

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 322
    .end local v1    # "i":I
    .end local v4    # "result":[Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    :cond_2
    const/4 v4, 0x0

    :cond_3
    return-object v4
.end method

.method public static setBoxShadow(Landroid/view/View;Ljava/lang/String;[FIF)V
    .locals 10
    .param p0, "target"    # Landroid/view/View;
    .param p1, "style"    # Ljava/lang/String;
    .param p2, "radii"    # [F
    .param p3, "viewPort"    # I
    .param p4, "quality"    # F

    .prologue
    const/4 v1, 0x0

    .line 82
    sget-boolean v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sBoxShadowEnabled:Z

    if-nez v0, :cond_0

    .line 83
    const-string/jumbo v0, "BoxShadowUtil"

    const-string/jumbo v1, "box-shadow was disabled by config"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 87
    :cond_0
    if-nez p0, :cond_1

    .line 88
    const-string/jumbo v0, "BoxShadowUtil"

    const-string/jumbo v1, "Target view is null!"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_2

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    .line 94
    const-string/jumbo v0, "BoxShadowUtil"

    const-string/jumbo v1, "Remove all box-shadow"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-static {p1, p3}, Lcom/taobao/weex/utils/BoxShadowUtil;->parseBoxShadows(Ljava/lang/String;I)[Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    move-result-object v9

    .line 99
    .local v9, "shadows":[Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    if-eqz v9, :cond_3

    array-length v0, v9

    if-nez v0, :cond_4

    .line 100
    :cond_3
    const-string/jumbo v0, "BoxShadowUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to parse box-shadow: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "normalShadows":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v5, "insetShadows":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;>;"
    array-length v3, v9

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_7

    aget-object v8, v9, v0

    .line 106
    .local v8, "shadow":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    if-eqz v8, :cond_5

    .line 107
    iget-boolean v4, v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    if-eqz v4, :cond_6

    .line 108
    invoke-interface {v5, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 105
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_6
    invoke-interface {v2, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 115
    .end local v8    # "shadow":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    :cond_7
    if-eqz p2, :cond_8

    .line 116
    array-length v0, p2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    .line 117
    const-string/jumbo v0, "BoxShadowUtil"

    const-string/jumbo v1, "Length of radii must be 8"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_8
    new-instance v0, Lcom/taobao/weex/utils/BoxShadowUtil$1;

    move-object v1, p0

    move v3, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/utils/BoxShadowUtil$1;-><init>(Landroid/view/View;Ljava/util/List;F[FLjava/util/List;)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 119
    :cond_9
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    array-length v0, p2

    if-ge v6, v0, :cond_8

    .line 120
    aget v0, p2, v6

    invoke-static {v0, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FI)F

    move-result v7

    .line 121
    .local v7, "realRadius":F
    aput v7, p2, v6

    .line 119
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method public static setBoxShadowEnabled(Z)V
    .locals 3
    .param p0, "enabled"    # Z

    .prologue
    .line 73
    sput-boolean p0, Lcom/taobao/weex/utils/BoxShadowUtil;->sBoxShadowEnabled:Z

    .line 74
    const-string/jumbo v0, "BoxShadowUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Switch box-shadow status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private static setInsetBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V
    .locals 14
    .param p0, "target"    # Landroid/view/View;
    .param p2, "quality"    # F
    .param p3, "radii"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;",
            ">;F[F)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 272
    :cond_0
    const-string/jumbo v1, "BoxShadowUtil"

    const-string/jumbo v2, "Illegal arguments"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_3

    .line 277
    :cond_2
    const-string/jumbo v1, "BoxShadowUtil"

    const-string/jumbo v2, "Target view is invisible, ignore set shadow."

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_5

    .line 282
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v10, v1, [Landroid/graphics/drawable/Drawable;

    .line 283
    .local v10, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 284
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 285
    .local v13, "option":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    new-instance v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v13, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    iget v4, v13, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    iget v5, v13, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    iget v6, v13, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    iget v7, v13, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    const/4 v9, 0x0

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;-><init>(IIFFFFI[FLcom/taobao/weex/utils/BoxShadowUtil$1;)V

    .line 289
    .local v0, "shadow":Landroid/graphics/drawable/Drawable;
    aput-object v0, v10, v11

    .line 283
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 292
    .end local v0    # "shadow":Landroid/graphics/drawable/Drawable;
    .end local v13    # "option":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    :cond_4
    new-instance v12, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v12, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 293
    .local v12, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 296
    .end local v10    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v11    # "i":I
    .end local v12    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_5
    const-string/jumbo v1, "BoxShadowUtil"

    const-string/jumbo v2, "Call setInsetBoxShadow() requires API level 18 or higher."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setNormalBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V
    .locals 24
    .param p0, "target"    # Landroid/view/View;
    .param p2, "quality"    # F
    .param p3, "radii"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;",
            ">;F[F)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 196
    .local v12, "h":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v23

    .line 198
    .local v23, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 200
    if-eqz v12, :cond_0

    if-nez v23, :cond_2

    .line 201
    :cond_0
    const-string/jumbo v3, "BoxShadowUtil"

    const-string/jumbo v5, "Target view is invisible, ignore set shadow."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v3, v5, :cond_8

    .line 206
    const/4 v15, 0x0

    .local v15, "maxWidth":I
    const/4 v14, 0x0

    .line 207
    .local v14, "maxHeight":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 208
    .local v16, "option":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    .line 209
    move-object/from16 v0, v16

    iput v12, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    .line 210
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    .line 212
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->getTargetCanvasRect()Landroid/graphics/Rect;

    move-result-object v20

    .line 213
    .local v20, "rect":Landroid/graphics/Rect;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge v15, v5, :cond_4

    .line 214
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 217
    :cond_4
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v14, v5, :cond_3

    .line 218
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v14

    goto :goto_1

    .line 222
    .end local v16    # "option":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    .end local v20    # "rect":Landroid/graphics/Rect;
    :cond_5
    int-to-float v3, v15

    mul-float v3, v3, p2

    float-to-int v11, v3

    .line 223
    .local v11, "canvasWidth":I
    int-to-float v3, v14

    mul-float v3, v3, p2

    float-to-int v10, v3

    .line 224
    .local v10, "canvasHeight":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v10, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 225
    .local v4, "output":Landroid/graphics/Bitmap;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v3, v5, :cond_6

    .line 226
    const-string/jumbo v3, "BoxShadowUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Allocation memory for box-shadow: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v6

    div-int/lit16 v6, v6, 0x400

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " KB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_6
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 239
    .local v9, "canvas":Landroid/graphics/Canvas;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 240
    .restart local v16    # "option":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->getTargetCanvasRect()Landroid/graphics/Rect;

    move-result-object v20

    .line 241
    .restart local v20    # "rect":Landroid/graphics/Rect;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v15, v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v13, v5, v6

    .line 242
    .local v13, "left":F
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, v14, v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v22, v5, v6

    .line 243
    .local v22, "top":F
    new-instance v5, Landroid/graphics/PointF;

    move/from16 v0, v22

    invoke-direct {v5, v13, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    .line 245
    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->scale(F)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    move-result-object v21

    .line 246
    .local v21, "scaledOption":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/taobao/weex/utils/BoxShadowUtil;->drawShadow(Landroid/graphics/Canvas;Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V

    goto :goto_2

    .line 250
    .end local v13    # "left":F
    .end local v16    # "option":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    .end local v20    # "rect":Landroid/graphics/Rect;
    .end local v21    # "scaledOption":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    .end local v22    # "top":F
    :cond_7
    sub-int v3, v15, v23

    div-int/lit8 v17, v3, 0x2

    .line 251
    .local v17, "paddingX":I
    sub-int v3, v14, v12

    div-int/lit8 v18, v3, 0x2

    .line 252
    .local v18, "paddingY":I
    new-instance v2, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v23

    invoke-direct {v6, v7, v8, v0, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;[FLcom/taobao/weex/utils/BoxShadowUtil$1;)V

    .line 255
    .local v2, "shadowDrawable":Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    .line 258
    .local v19, "parent":Landroid/view/ViewParent;
    if-eqz v19, :cond_1

    .line 259
    invoke-interface/range {v19 .. v19}, Landroid/view/ViewParent;->requestLayout()V

    .line 260
    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 261
    check-cast v19, Landroid/view/ViewGroup;

    .end local v19    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v2}, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 266
    .end local v2    # "shadowDrawable":Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;
    .end local v4    # "output":Landroid/graphics/Bitmap;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "canvasHeight":I
    .end local v11    # "canvasWidth":I
    .end local v14    # "maxHeight":I
    .end local v15    # "maxWidth":I
    .end local v17    # "paddingX":I
    .end local v18    # "paddingY":I
    :cond_8
    const-string/jumbo v3, "BoxShadowUtil"

    const-string/jumbo v5, "Call setNormalBoxShadow() requires API level 18 or higher."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
