.class public final Lela$a;
.super Ljava/lang/Object;
.source "SplashImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lela;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final synthetic d:Lela;


# direct methods
.method constructor <init>(Lela;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lela;
    .param p2, "orgId"    # J
    .param p4, "splashId"    # Ljava/lang/String;
    .param p5, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lela$a;->d:Lela;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-wide p2, p0, Lela$a;->a:J

    .line 173
    iput-object p4, p0, Lela$a;->b:Ljava/lang/String;

    .line 174
    iput-object p5, p0, Lela$a;->c:Ljava/lang/String;

    .line 175
    return-void
.end method

.method static synthetic a(Lela$a;)V
    .locals 5
    .param p0, "x0"    # Lela$a;

    .prologue
    .line 159
    .line 1284
    iget-object v0, p0, Lela$a;->d:Lela;

    .line 2043
    iget-object v0, v0, Lela;->a:Ljava/util/HashSet;

    .line 1284
    iget-object v1, p0, Lela$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1286
    iget-object v0, p0, Lela$a;->d:Lela;

    .line 3043
    iget-object v0, v0, Lela;->d:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1286
    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lela$a;->d:Lela;

    .line 4043
    iget-object v0, v0, Lela;->d:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1287
    const-string/jumbo v1, "splash"

    const-string/jumbo v2, "splash_image_download"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    :cond_0
    iget-object v0, p0, Lela$a;->d:Lela;

    .line 5043
    invoke-virtual {v0}, Lela;->c()V

    .line 159
    return-void
.end method

.method static a(Lcom/alibaba/doraemon/request/RequestInputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "inputStream"    # Lcom/alibaba/doraemon/request/RequestInputStream;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 259
    if-nez p0, :cond_0

    .line 260
    const-string/jumbo v6, "splash"

    const-string/jumbo v7, "SplashImageManager"

    const-string/jumbo v8, "resizeAndSaveSplashImageView and inputStream is null"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_0
    return v5

    .line 264
    :cond_0
    new-instance v4, Lekx;

    invoke-direct {v4}, Lekx;-><init>()V

    .line 265
    .local v4, "screenImageDecoder":Lekx;
    new-instance v6, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/request/RequestInputStream;->length()I

    move-result v7

    invoke-direct {v6, p0, v7}, Lcom/alibaba/doraemon/impl/image/ImageInputStreamImpl;-><init>(Lcom/alibaba/doraemon/request/RequestInputStream;I)V

    invoke-virtual {v4, v6, p1}, Lekx;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 267
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_2

    .line 268
    :cond_1
    const-string/jumbo v6, "splash"

    const-string/jumbo v7, "SplashImageManager"

    const-string/jumbo v8, "resizeAndSaveSplashImageView and bitmapDrawable is invalid"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    invoke-static {p1}, Lcop;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "realFileName":Ljava/lang/String;
    invoke-static {v3}, Lhcs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "realFileExtension":Ljava/lang/String;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 276
    .local v1, "format":Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "png"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 277
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 280
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {p2, p3, v5, v1}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v5

    goto :goto_0
.end method
