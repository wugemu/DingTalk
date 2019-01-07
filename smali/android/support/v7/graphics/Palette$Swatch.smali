.class public final Landroid/support/v7/graphics/Palette$Swatch;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Swatch"
.end annotation


# instance fields
.field private final mBlue:I

.field private mBodyTextColor:I

.field private mGeneratedTextColors:Z

.field private final mGreen:I

.field private mHsl:[F

.field private final mPopulation:I

.field private final mRed:I

.field private final mRgb:I

.field private mTitleTextColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "population"    # I

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRed:I

    .line 454
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mGreen:I

    .line 455
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mBlue:I

    .line 456
    iput p1, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    .line 457
    iput p2, p0, Landroid/support/v7/graphics/Palette$Swatch;->mPopulation:I

    .line 458
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "population"    # I

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput p1, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRed:I

    .line 462
    iput p2, p0, Landroid/support/v7/graphics/Palette$Swatch;->mGreen:I

    .line 463
    iput p3, p0, Landroid/support/v7/graphics/Palette$Swatch;->mBlue:I

    .line 464
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    .line 465
    iput p4, p0, Landroid/support/v7/graphics/Palette$Swatch;->mPopulation:I

    .line 466
    return-void
.end method

.method constructor <init>([FI)V
    .locals 1
    .param p1, "hsl"    # [F
    .param p2, "population"    # I

    .prologue
    .line 469
    invoke-static {p1}, Ldt;->a([F)I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    .line 470
    iput-object p1, p0, Landroid/support/v7/graphics/Palette$Swatch;->mHsl:[F

    .line 471
    return-void
.end method

.method private ensureTextColorsGenerated()V
    .locals 10

    .prologue
    const/high16 v9, 0x40900000    # 4.5f

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v7, 0x1

    const/high16 v6, -0x1000000

    const/4 v5, -0x1

    .line 523
    iget-boolean v4, p0, Landroid/support/v7/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    if-nez v4, :cond_0

    .line 525
    iget v4, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    invoke-static {v5, v4, v9}, Ldt;->a(IIF)I

    move-result v2

    .line 527
    .local v2, "lightBodyAlpha":I
    iget v4, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    invoke-static {v5, v4, v8}, Ldt;->a(IIF)I

    move-result v3

    .line 530
    .local v3, "lightTitleAlpha":I
    if-eq v2, v5, :cond_1

    if-eq v3, v5, :cond_1

    .line 532
    invoke-static {v5, v2}, Ldt;->b(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/graphics/Palette$Swatch;->mBodyTextColor:I

    .line 533
    invoke-static {v5, v3}, Ldt;->b(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/graphics/Palette$Swatch;->mTitleTextColor:I

    .line 534
    iput-boolean v7, p0, Landroid/support/v7/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    .line 561
    .end local v2    # "lightBodyAlpha":I
    .end local v3    # "lightTitleAlpha":I
    :cond_0
    :goto_0
    return-void

    .line 538
    .restart local v2    # "lightBodyAlpha":I
    .restart local v3    # "lightTitleAlpha":I
    :cond_1
    iget v4, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    invoke-static {v6, v4, v9}, Ldt;->a(IIF)I

    move-result v0

    .line 540
    .local v0, "darkBodyAlpha":I
    iget v4, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    invoke-static {v6, v4, v8}, Ldt;->a(IIF)I

    move-result v1

    .line 543
    .local v1, "darkTitleAlpha":I
    if-eq v0, v5, :cond_2

    if-eq v1, v5, :cond_2

    .line 545
    invoke-static {v6, v0}, Ldt;->b(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/graphics/Palette$Swatch;->mBodyTextColor:I

    .line 546
    invoke-static {v6, v1}, Ldt;->b(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/graphics/Palette$Swatch;->mTitleTextColor:I

    .line 547
    iput-boolean v7, p0, Landroid/support/v7/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    goto :goto_0

    .line 553
    :cond_2
    if-eq v2, v5, :cond_3

    .line 554
    invoke-static {v5, v2}, Ldt;->b(II)I

    move-result v4

    .line 555
    :goto_1
    iput v4, p0, Landroid/support/v7/graphics/Palette$Swatch;->mBodyTextColor:I

    .line 556
    if-eq v3, v5, :cond_4

    .line 557
    invoke-static {v5, v3}, Ldt;->b(II)I

    move-result v4

    .line 558
    :goto_2
    iput v4, p0, Landroid/support/v7/graphics/Palette$Swatch;->mTitleTextColor:I

    .line 559
    iput-boolean v7, p0, Landroid/support/v7/graphics/Palette$Swatch;->mGeneratedTextColors:Z

    goto :goto_0

    .line 555
    :cond_3
    invoke-static {v6, v0}, Ldt;->b(II)I

    move-result v4

    goto :goto_1

    .line 558
    :cond_4
    invoke-static {v6, v1}, Ldt;->b(II)I

    move-result v4

    goto :goto_2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 577
    if-ne p0, p1, :cond_1

    .line 585
    :cond_0
    :goto_0
    return v1

    .line 580
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 581
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 584
    check-cast v0, Landroid/support/v7/graphics/Palette$Swatch;

    .line 585
    .local v0, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    iget v3, p0, Landroid/support/v7/graphics/Palette$Swatch;->mPopulation:I

    iget v4, v0, Landroid/support/v7/graphics/Palette$Swatch;->mPopulation:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    iget v4, v0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public final getBodyTextColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 518
    invoke-direct {p0}, Landroid/support/v7/graphics/Palette$Swatch;->ensureTextColorsGenerated()V

    .line 519
    iget v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mBodyTextColor:I

    return v0
.end method

.method public final getHsl()[F
    .locals 4

    .prologue
    .line 488
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mHsl:[F

    if-nez v0, :cond_0

    .line 489
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mHsl:[F

    .line 491
    :cond_0
    iget v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRed:I

    iget v1, p0, Landroid/support/v7/graphics/Palette$Swatch;->mGreen:I

    iget v2, p0, Landroid/support/v7/graphics/Palette$Swatch;->mBlue:I

    iget-object v3, p0, Landroid/support/v7/graphics/Palette$Swatch;->mHsl:[F

    invoke-static {v0, v1, v2, v3}, Ldt;->a(III[F)V

    .line 492
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mHsl:[F

    return-object v0
.end method

.method public final getPopulation()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mPopulation:I

    return v0
.end method

.method public final getRgb()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 478
    iget v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    return v0
.end method

.method public final getTitleTextColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 508
    invoke-direct {p0}, Landroid/support/v7/graphics/Palette$Swatch;->ensureTextColorsGenerated()V

    .line 509
    iget v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mTitleTextColor:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 590
    iget v0, p0, Landroid/support/v7/graphics/Palette$Swatch;->mRgb:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/v7/graphics/Palette$Swatch;->mPopulation:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x5d

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " [RGB: #"

    .line 566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " [HSL: "

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " [Population: "

    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/graphics/Palette$Swatch;->mPopulation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " [Title Text: #"

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette$Swatch;->getTitleTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " [Body Text: #"

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette$Swatch;->getBodyTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
