.class final Lw$b;
.super Lw$d;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:F

.field c:I

.field d:F

.field e:I

.field f:F

.field g:F

.field h:F

.field i:F

.field j:Landroid/graphics/Paint$Cap;

.field k:Landroid/graphics/Paint$Join;

.field l:F

.field private p:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1661
    invoke-direct {p0}, Lw$d;-><init>()V

    .line 1646
    iput v2, p0, Lw$b;->a:I

    .line 1647
    iput v0, p0, Lw$b;->b:F

    .line 1649
    iput v2, p0, Lw$b;->c:I

    .line 1650
    iput v1, p0, Lw$b;->d:F

    .line 1651
    iput v2, p0, Lw$b;->e:I

    .line 1652
    iput v1, p0, Lw$b;->f:F

    .line 1653
    iput v0, p0, Lw$b;->g:F

    .line 1654
    iput v1, p0, Lw$b;->h:F

    .line 1655
    iput v0, p0, Lw$b;->i:F

    .line 1657
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lw$b;->j:Landroid/graphics/Paint$Cap;

    .line 1658
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lw$b;->k:Landroid/graphics/Paint$Join;

    .line 1659
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lw$b;->l:F

    .line 1663
    return-void
.end method

.method public constructor <init>(Lw$b;)V
    .locals 3
    .param p1, "copy"    # Lw$b;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1666
    invoke-direct {p0, p1}, Lw$d;-><init>(Lw$d;)V

    .line 1646
    iput v2, p0, Lw$b;->a:I

    .line 1647
    iput v0, p0, Lw$b;->b:F

    .line 1649
    iput v2, p0, Lw$b;->c:I

    .line 1650
    iput v1, p0, Lw$b;->d:F

    .line 1651
    iput v2, p0, Lw$b;->e:I

    .line 1652
    iput v1, p0, Lw$b;->f:F

    .line 1653
    iput v0, p0, Lw$b;->g:F

    .line 1654
    iput v1, p0, Lw$b;->h:F

    .line 1655
    iput v0, p0, Lw$b;->i:F

    .line 1657
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lw$b;->j:Landroid/graphics/Paint$Cap;

    .line 1658
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lw$b;->k:Landroid/graphics/Paint$Join;

    .line 1659
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lw$b;->l:F

    .line 1667
    iget-object v0, p1, Lw$b;->p:[I

    iput-object v0, p0, Lw$b;->p:[I

    .line 1669
    iget v0, p1, Lw$b;->a:I

    iput v0, p0, Lw$b;->a:I

    .line 1670
    iget v0, p1, Lw$b;->b:F

    iput v0, p0, Lw$b;->b:F

    .line 1671
    iget v0, p1, Lw$b;->d:F

    iput v0, p0, Lw$b;->d:F

    .line 1672
    iget v0, p1, Lw$b;->c:I

    iput v0, p0, Lw$b;->c:I

    .line 1673
    iget v0, p1, Lw$b;->e:I

    iput v0, p0, Lw$b;->e:I

    .line 1674
    iget v0, p1, Lw$b;->f:F

    iput v0, p0, Lw$b;->f:F

    .line 1675
    iget v0, p1, Lw$b;->g:F

    iput v0, p0, Lw$b;->g:F

    .line 1676
    iget v0, p1, Lw$b;->h:F

    iput v0, p0, Lw$b;->h:F

    .line 1677
    iget v0, p1, Lw$b;->i:F

    iput v0, p0, Lw$b;->i:F

    .line 1679
    iget-object v0, p1, Lw$b;->j:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lw$b;->j:Landroid/graphics/Paint$Cap;

    .line 1680
    iget-object v0, p1, Lw$b;->k:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lw$b;->k:Landroid/graphics/Paint$Join;

    .line 1681
    iget v0, p1, Lw$b;->l:F

    iput v0, p0, Lw$b;->l:F

    .line 1682
    return-void
.end method


# virtual methods
.method a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v8, -0x1

    .line 1727
    const/4 v5, 0x0

    iput-object v5, p0, Lw$b;->p:[I

    .line 1734
    const-string/jumbo v5, "pathData"

    invoke-static {p2, v5}, Lds;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1735
    .local v0, "hasPathData":Z
    if-nez v0, :cond_0

    .line 1782
    :goto_0
    return-void

    .line 1741
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1743
    .local v4, "pathName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1744
    iput-object v4, p0, Lw$b;->n:Ljava/lang/String;

    .line 1746
    :cond_1
    const/4 v5, 0x2

    .line 1747
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1748
    .local v3, "pathData":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1749
    invoke-static {v3}, Ldu;->b(Ljava/lang/String;)[Ldu$b;

    move-result-object v5

    iput-object v5, p0, Lw$b;->m:[Ldu$b;

    .line 1752
    :cond_2
    const-string/jumbo v5, "fillColor"

    const/4 v6, 0x1

    iget v7, p0, Lw$b;->c:I

    invoke-static {p1, p2, v5, v6, v7}, Lds;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Lw$b;->c:I

    .line 1754
    const-string/jumbo v5, "fillAlpha"

    const/16 v6, 0xc

    iget v7, p0, Lw$b;->f:F

    invoke-static {p1, p2, v5, v6, v7}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Lw$b;->f:F

    .line 1756
    const-string/jumbo v5, "strokeLineCap"

    const/16 v6, 0x8

    invoke-static {p1, p2, v5, v6, v8}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 1758
    .local v1, "lineCap":I
    iget-object v5, p0, Lw$b;->j:Landroid/graphics/Paint$Cap;

    .line 2685
    packed-switch v1, :pswitch_data_0

    .line 1758
    :goto_1
    iput-object v5, p0, Lw$b;->j:Landroid/graphics/Paint$Cap;

    .line 1759
    const-string/jumbo v5, "strokeLineJoin"

    const/16 v6, 0x9

    invoke-static {p1, p2, v5, v6, v8}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 1761
    .local v2, "lineJoin":I
    iget-object v5, p0, Lw$b;->k:Landroid/graphics/Paint$Join;

    .line 2698
    packed-switch v2, :pswitch_data_1

    .line 1761
    :goto_2
    iput-object v5, p0, Lw$b;->k:Landroid/graphics/Paint$Join;

    .line 1762
    const-string/jumbo v5, "strokeMiterLimit"

    const/16 v6, 0xa

    iget v7, p0, Lw$b;->l:F

    invoke-static {p1, p2, v5, v6, v7}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Lw$b;->l:F

    .line 1765
    const-string/jumbo v5, "strokeColor"

    const/4 v6, 0x3

    iget v7, p0, Lw$b;->a:I

    invoke-static {p1, p2, v5, v6, v7}, Lds;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Lw$b;->a:I

    .line 1767
    const-string/jumbo v5, "strokeAlpha"

    const/16 v6, 0xb

    iget v7, p0, Lw$b;->d:F

    invoke-static {p1, p2, v5, v6, v7}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Lw$b;->d:F

    .line 1769
    const-string/jumbo v5, "strokeWidth"

    const/4 v6, 0x4

    iget v7, p0, Lw$b;->b:F

    invoke-static {p1, p2, v5, v6, v7}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Lw$b;->b:F

    .line 1771
    const-string/jumbo v5, "trimPathEnd"

    const/4 v6, 0x6

    iget v7, p0, Lw$b;->h:F

    invoke-static {p1, p2, v5, v6, v7}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Lw$b;->h:F

    .line 1773
    const-string/jumbo v5, "trimPathOffset"

    const/4 v6, 0x7

    iget v7, p0, Lw$b;->i:F

    invoke-static {p1, p2, v5, v6, v7}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Lw$b;->i:F

    .line 1776
    const-string/jumbo v5, "trimPathStart"

    const/4 v6, 0x5

    iget v7, p0, Lw$b;->g:F

    invoke-static {p1, p2, v5, v6, v7}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Lw$b;->g:F

    .line 1779
    const-string/jumbo v5, "fillType"

    const/16 v6, 0xd

    iget v7, p0, Lw$b;->e:I

    invoke-static {p1, p2, v5, v6, v7}, Lds;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Lw$b;->e:I

    goto/16 :goto_0

    .line 2687
    .end local v2    # "lineJoin":I
    :pswitch_0
    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_1

    .line 2689
    :pswitch_1
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_1

    .line 2691
    :pswitch_2
    sget-object v5, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto/16 :goto_1

    .line 2700
    .restart local v2    # "lineJoin":I
    :pswitch_3
    sget-object v5, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_2

    .line 2702
    :pswitch_4
    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_2

    .line 2704
    :pswitch_5
    sget-object v5, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto/16 :goto_2

    .line 2685
    .line 2698
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method final getFillAlpha()F
    .locals 1

    .prologue
    .line 1840
    iget v0, p0, Lw$b;->f:F

    return v0
.end method

.method final getFillColor()I
    .locals 1

    .prologue
    .line 1830
    iget v0, p0, Lw$b;->c:I

    return v0
.end method

.method final getStrokeAlpha()F
    .locals 1

    .prologue
    .line 1820
    iget v0, p0, Lw$b;->d:F

    return v0
.end method

.method final getStrokeColor()I
    .locals 1

    .prologue
    .line 1800
    iget v0, p0, Lw$b;->a:I

    return v0
.end method

.method final getStrokeWidth()F
    .locals 1

    .prologue
    .line 1810
    iget v0, p0, Lw$b;->b:F

    return v0
.end method

.method final getTrimPathEnd()F
    .locals 1

    .prologue
    .line 1860
    iget v0, p0, Lw$b;->h:F

    return v0
.end method

.method final getTrimPathOffset()F
    .locals 1

    .prologue
    .line 1870
    iget v0, p0, Lw$b;->i:F

    return v0
.end method

.method final getTrimPathStart()F
    .locals 1

    .prologue
    .line 1850
    iget v0, p0, Lw$b;->g:F

    return v0
.end method

.method final setFillAlpha(F)V
    .locals 0
    .param p1, "fillAlpha"    # F

    .prologue
    .line 1845
    iput p1, p0, Lw$b;->f:F

    .line 1846
    return-void
.end method

.method final setFillColor(I)V
    .locals 0
    .param p1, "fillColor"    # I

    .prologue
    .line 1835
    iput p1, p0, Lw$b;->c:I

    .line 1836
    return-void
.end method

.method final setStrokeAlpha(F)V
    .locals 0
    .param p1, "strokeAlpha"    # F

    .prologue
    .line 1825
    iput p1, p0, Lw$b;->d:F

    .line 1826
    return-void
.end method

.method final setStrokeColor(I)V
    .locals 0
    .param p1, "strokeColor"    # I

    .prologue
    .line 1805
    iput p1, p0, Lw$b;->a:I

    .line 1806
    return-void
.end method

.method final setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    .prologue
    .line 1815
    iput p1, p0, Lw$b;->b:F

    .line 1816
    return-void
.end method

.method final setTrimPathEnd(F)V
    .locals 0
    .param p1, "trimPathEnd"    # F

    .prologue
    .line 1865
    iput p1, p0, Lw$b;->h:F

    .line 1866
    return-void
.end method

.method final setTrimPathOffset(F)V
    .locals 0
    .param p1, "trimPathOffset"    # F

    .prologue
    .line 1875
    iput p1, p0, Lw$b;->i:F

    .line 1876
    return-void
.end method

.method final setTrimPathStart(F)V
    .locals 0
    .param p1, "trimPathStart"    # F

    .prologue
    .line 1855
    iput p1, p0, Lw$b;->g:F

    .line 1856
    return-void
.end method
