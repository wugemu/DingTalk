.class public abstract Ldm;
.super Ljava/lang/Object;
.source "SharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldm$a;
    }
.end annotation


# static fields
.field static b:I


# instance fields
.field a:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/high16 v0, 0x100000

    sput v0, Ldm;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 215
    .local v11, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 216
    .local v6, "height":I
    if-lez v11, :cond_0

    if-gtz v6, :cond_1

    .line 217
    :cond_0
    const/4 v0, 0x0

    .line 236
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 219
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/high16 v12, 0x3f800000    # 1.0f

    sget v13, Ldm;->b:I

    int-to-float v13, v13

    mul-int v14, v11, v6

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 220
    .local v9, "scale":F
    instance-of v12, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_2

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v9, v12

    if-nez v12, :cond_2

    .line 222
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 224
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    int-to-float v12, v11

    mul-float/2addr v12, v9

    float-to-int v2, v12

    .line 225
    .local v2, "bitmapWidth":I
    int-to-float v12, v6

    mul-float/2addr v12, v9

    float-to-int v1, v12

    .line 226
    .local v1, "bitmapHeight":I
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 228
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 229
    .local v5, "existingBounds":Landroid/graphics/Rect;
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 230
    .local v7, "left":I
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 231
    .local v10, "top":I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    .line 232
    .local v8, "right":I
    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 233
    .local v3, "bottom":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    invoke-virtual {p0, v7, v10, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "snapshot"    # Landroid/os/Parcelable;

    .prologue
    .line 257
    const/4 v5, 0x0

    .line 258
    .local v5, "view":Landroid/widget/ImageView;
    instance-of v6, p1, Landroid/os/Bundle;

    if-eqz v6, :cond_2

    move-object v1, p1

    .line 259
    check-cast v1, Landroid/os/Bundle;

    .line 260
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "sharedElement:snapshot:bitmap"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 261
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 262
    const/4 v6, 0x0

    .line 280
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v6

    .line 264
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 265
    .local v2, "imageView":Landroid/widget/ImageView;
    move-object v5, v2

    .line 266
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 267
    const-string/jumbo v6, "sharedElement:snapshot:imageScaleType"

    .line 268
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    .line 267
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 269
    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_1

    .line 270
    const-string/jumbo v6, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v4

    .line 271
    .local v4, "values":[F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 272
    .local v3, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 273
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "values":[F
    :cond_1
    :goto_1
    move-object v6, v5

    .line 280
    goto :goto_0

    .line 275
    :cond_2
    instance-of v6, p1, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    move-object v0, p1

    .line 276
    check-cast v0, Landroid/graphics/Bitmap;

    .line 277
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/widget/ImageView;

    .end local v5    # "view":Landroid/widget/ImageView;
    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 278
    .restart local v5    # "view":Landroid/widget/ImageView;
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public static a(Ldm$a;)V
    .locals 0
    .param p0, "listener"    # Ldm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldm$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 301
    invoke-interface {p0}, Ldm$a;->a()V

    .line 302
    return-void
.end method
