.class public final Lhas;
.super Lhar;
.source "CommonScaledImageDecoder.java"


# direct methods
.method public constructor <init>(Lhcg$c;)V
    .locals 0
    .param p1, "bound"    # Lhcg$c;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lhar;-><init>(Lhcg$c;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected final b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 23
    if-eqz p1, :cond_3

    .line 24
    iget-object v12, p0, Lhas;->a:Lhcg$c;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lhas;->a:Lhcg$c;

    .line 1184
    iget-object v12, v12, Lhcg$c;->a:Lhcg$b;

    .line 24
    if-eqz v12, :cond_2

    iget-object v12, p0, Lhas;->a:Lhcg$c;

    .line 2184
    iget-object v12, v12, Lhcg$c;->a:Lhcg$b;

    .line 3168
    iget v12, v12, Lhcg$b;->b:I

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-lt v12, v13, :cond_0

    iget-object v12, p0, Lhas;->a:Lhcg$c;

    .line 3184
    iget-object v12, v12, Lhcg$c;->a:Lhcg$b;

    .line 4164
    iget v12, v12, Lhcg$b;->a:I

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-gt v12, v13, :cond_2

    .line 25
    :cond_0
    iget-object v12, p0, Lhas;->a:Lhcg$c;

    .line 4184
    iget-object v12, v12, Lhcg$c;->a:Lhcg$b;

    .line 5168
    iget v7, v12, Lhcg$b;->b:I

    .line 26
    .local v7, "targetMaxHeight":I
    iget-object v12, p0, Lhas;->a:Lhcg$c;

    .line 5184
    iget-object v12, v12, Lhcg$c;->a:Lhcg$b;

    .line 6164
    iget v8, v12, Lhcg$b;->a:I

    .line 27
    .local v8, "targetMaxWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 28
    .local v5, "sourceHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 29
    .local v6, "sourceWidth":I
    if-lez v5, :cond_3

    if-lez v6, :cond_3

    .line 30
    int-to-float v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v12, v13

    int-to-float v13, v5

    div-float v2, v12, v13

    .line 31
    .local v2, "heightRatio":F
    int-to-float v12, v8

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v12, v13

    int-to-float v13, v6

    div-float v11, v12, v13

    .line 32
    .local v11, "widthRatio":F
    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 33
    .local v3, "ratio":F
    int-to-float v12, v6

    mul-float/2addr v12, v3

    float-to-int v1, v12

    .line 34
    .local v1, "destWidth":I
    int-to-float v12, v5

    mul-float/2addr v12, v3

    float-to-int v0, v12

    .line 35
    .local v0, "destHeight":I
    const/4 v12, 0x0

    invoke-static {p1, v1, v0, v12}, Lgzt;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 36
    .local v4, "result":Landroid/graphics/Bitmap;
    if-eq v4, p1, :cond_1

    .line 37
    invoke-static {p1}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    .line 63
    .end local v0    # "destHeight":I
    .end local v1    # "destWidth":I
    .end local v2    # "heightRatio":F
    .end local v3    # "ratio":F
    .end local v4    # "result":Landroid/graphics/Bitmap;
    .end local v5    # "sourceHeight":I
    .end local v6    # "sourceWidth":I
    .end local v7    # "targetMaxHeight":I
    .end local v8    # "targetMaxWidth":I
    .end local v11    # "widthRatio":F
    :cond_1
    :goto_0
    return-object v4

    .line 41
    :cond_2
    iget-object v12, p0, Lhas;->a:Lhcg$c;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lhas;->a:Lhcg$c;

    .line 6188
    iget-object v12, v12, Lhcg$c;->b:Lhcg$b;

    .line 41
    if-eqz v12, :cond_3

    iget-object v12, p0, Lhas;->a:Lhcg$c;

    .line 7188
    iget-object v12, v12, Lhcg$c;->b:Lhcg$b;

    .line 8168
    iget v12, v12, Lhcg$b;->b:I

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-le v12, v13, :cond_3

    iget-object v12, p0, Lhas;->a:Lhcg$c;

    .line 8188
    iget-object v12, v12, Lhcg$c;->b:Lhcg$b;

    .line 9164
    iget v12, v12, Lhcg$b;->a:I

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-le v12, v13, :cond_3

    .line 44
    iget-object v12, p0, Lhas;->a:Lhcg$c;

    .line 9188
    iget-object v12, v12, Lhcg$c;->b:Lhcg$b;

    .line 10168
    iget v9, v12, Lhcg$b;->b:I

    .line 45
    .local v9, "targetMinHeight":I
    iget-object v12, p0, Lhas;->a:Lhcg$c;

    .line 10188
    iget-object v12, v12, Lhcg$c;->b:Lhcg$b;

    .line 11164
    iget v10, v12, Lhcg$b;->a:I

    .line 46
    .local v10, "targetMinWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 47
    .restart local v5    # "sourceHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 48
    .restart local v6    # "sourceWidth":I
    if-lez v5, :cond_3

    if-lez v6, :cond_3

    .line 49
    int-to-float v12, v9

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v12, v13

    int-to-float v13, v5

    div-float v2, v12, v13

    .line 50
    .restart local v2    # "heightRatio":F
    int-to-float v12, v10

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v12, v13

    int-to-float v13, v6

    div-float v11, v12, v13

    .line 51
    .restart local v11    # "widthRatio":F
    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 52
    .restart local v3    # "ratio":F
    int-to-float v12, v6

    mul-float/2addr v12, v3

    float-to-int v1, v12

    .line 53
    .restart local v1    # "destWidth":I
    int-to-float v12, v5

    mul-float/2addr v12, v3

    float-to-int v0, v12

    .line 54
    .restart local v0    # "destHeight":I
    const/4 v12, 0x0

    invoke-static {p1, v1, v0, v12}, Lgzt;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 55
    .restart local v4    # "result":Landroid/graphics/Bitmap;
    if-eq v4, p1, :cond_1

    .line 56
    invoke-static {p1}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 63
    .end local v0    # "destHeight":I
    .end local v1    # "destWidth":I
    .end local v2    # "heightRatio":F
    .end local v3    # "ratio":F
    .end local v4    # "result":Landroid/graphics/Bitmap;
    .end local v5    # "sourceHeight":I
    .end local v6    # "sourceWidth":I
    .end local v9    # "targetMinHeight":I
    .end local v10    # "targetMinWidth":I
    .end local v11    # "widthRatio":F
    :cond_3
    invoke-super {p0, p1}, Lhar;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0
.end method
