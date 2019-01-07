.class public Lhar;
.super Lhaw;
.source "CommonImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhar$a;
    }
.end annotation


# instance fields
.field a:Lhcg$c;


# direct methods
.method public constructor <init>(Lhcg$c;)V
    .locals 0
    .param p1, "bound"    # Lhcg$c;

    .prologue
    .line 39
    invoke-direct {p0}, Lhaw;-><init>()V

    .line 40
    iput-object p1, p0, Lhar;->a:Lhcg$c;

    .line 41
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v8, 0x0

    .line 90
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v8, v8, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    .local v5, "ret":Landroid/graphics/Rect;
    if-eqz p0, :cond_1

    .line 94
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 95
    .local v1, "bWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 97
    .local v0, "bHeight":I
    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 98
    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 99
    iget v8, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 100
    iget v8, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v0

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 102
    int-to-float v8, p1

    int-to-float v9, v1

    div-float v6, v8, v9

    .line 103
    .local v6, "xRatio":F
    int-to-float v8, p2

    int-to-float v9, v0

    div-float v7, v8, v9

    .line 105
    .local v7, "yRatio":F
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 107
    .local v4, "ratio":F
    int-to-float v8, v1

    mul-float/2addr v8, v4

    float-to-int v1, v8

    .line 108
    int-to-float v8, v0

    mul-float/2addr v8, v4

    float-to-int v0, v8

    .line 110
    if-le v1, p1, :cond_0

    .line 111
    sub-int v2, v1, p1

    .line 113
    .local v2, "diff":I
    int-to-float v8, v2

    div-float/2addr v8, v4

    float-to-int v3, v8

    .line 115
    .local v3, "oriDiff":I
    div-int/lit8 v8, v3, 0x2

    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 116
    iget v8, v5, Landroid/graphics/Rect;->right:I

    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 120
    .end local v2    # "diff":I
    .end local v3    # "oriDiff":I
    :cond_0
    if-le v0, p2, :cond_1

    .line 121
    sub-int v2, v0, p2

    .line 122
    .restart local v2    # "diff":I
    int-to-float v8, v2

    div-float/2addr v8, v4

    float-to-int v3, v8

    .line 124
    .restart local v3    # "oriDiff":I
    div-int/lit8 v8, v3, 0x2

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 125
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 129
    .end local v0    # "bHeight":I
    .end local v1    # "bWidth":I
    .end local v2    # "diff":I
    .end local v3    # "oriDiff":I
    .end local v4    # "ratio":F
    .end local v6    # "xRatio":F
    .end local v7    # "yRatio":F
    :cond_1
    return-object v5
.end method


# virtual methods
.method public final a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "inputStream"    # Lcom/alibaba/doraemon/image/ImageInputStream;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lhar;->b(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    .local v0, "decodeBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lhar;->a:Lhcg$c;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 49
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lhar$a;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lhar$a;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected final a(II)Lhbc;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 55
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 56
    iget-object v1, p0, Lhar;->a:Lhcg$c;

    new-instance v2, Lhcg$b;

    invoke-direct {v2, p1, p2}, Lhcg$b;-><init>(II)V

    invoke-static {v1, v2}, Lhcg;->a(Lhcg$c;Lhcg$b;)Lhcg$b;

    move-result-object v0

    .line 1164
    .local v0, "resultSize":Lhcg$b;
    iget v1, v0, Lhcg$b;->a:I

    .line 58
    if-ge v1, p1, :cond_0

    .line 2164
    iget p1, v0, Lhcg$b;->a:I

    .line 2168
    iget p2, v0, Lhcg$b;->b:I

    .line 62
    :cond_0
    new-instance v1, Lhbc;

    invoke-direct {v1, p1, p2}, Lhbc;-><init>(II)V

    .line 64
    .end local v0    # "resultSize":Lhcg$b;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
