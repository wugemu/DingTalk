.class public Lhaw;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lhaw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhaw;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 111
    return-object p1
.end method

.method public a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7
    .param p1, "inputStream"    # Lcom/alibaba/doraemon/image/ImageInputStream;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 39
    if-nez p1, :cond_0

    .line 40
    sget-object v2, Lhaw;->a:Ljava/lang/String;

    const-string/jumbo v3, "stream null:%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-object v1

    .line 44
    :cond_0
    invoke-virtual {p0, p1, p2}, Lhaw;->b(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .local v0, "decodeBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 46
    sget-object v2, Lhaw;->a:Ljava/lang/String;

    const-string/jumbo v3, "decode fail:%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    .line 51
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 53
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public a(II)Lhbc;
    .locals 1
    .param p1, "sWidth"    # I
    .param p2, "sHeight"    # I

    .prologue
    .line 115
    new-instance v0, Lhbc;

    invoke-direct {v0, p1, p2}, Lhbc;-><init>(II)V

    return-object v0
.end method

.method protected b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x3

    .line 125
    if-nez p1, :cond_0

    .line 126
    const/4 v2, 0x0

    .line 144
    :goto_0
    return-object v2

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 130
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 131
    .local v0, "h":I
    div-int v6, v3, v0

    if-ge v6, v7, :cond_1

    div-int v6, v0, v3

    if-lt v6, v7, :cond_3

    :cond_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v7, 0xd33

    if-le v6, v7, :cond_3

    .line 132
    div-int/lit16 v6, v3, 0xd33

    int-to-float v4, v6

    .line 133
    .local v4, "xRate":F
    div-int/lit16 v6, v0, 0xd33

    int-to-float v5, v6

    .line 134
    .local v5, "yRate":F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 135
    .local v1, "rate":F
    int-to-float v6, v3

    mul-float/2addr v6, v1

    float-to-int v3, v6

    .line 136
    int-to-float v6, v0

    mul-float/2addr v6, v1

    float-to-int v0, v6

    .line 137
    const/4 v6, 0x0

    invoke-static {p1, v3, v0, v6}, Lgzt;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 138
    .local v2, "result":Landroid/graphics/Bitmap;
    if-eq v2, p1, :cond_2

    .line 139
    invoke-static {p1}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    .line 141
    :cond_2
    sget-object v6, Lhaw;->a:Ljava/lang/String;

    const-string/jumbo v7, "scaleLargeBitmap suc"

    invoke-static {v6, v7}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "rate":F
    .end local v2    # "result":Landroid/graphics/Bitmap;
    .end local v4    # "xRate":F
    .end local v5    # "yRate":F
    :cond_3
    move-object v2, p1

    .line 144
    goto :goto_0
.end method

.method protected final b(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "inputStream"    # Lcom/alibaba/doraemon/image/ImageInputStream;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 59
    :try_start_0
    new-instance v2, Lgzt$a;

    invoke-direct {v2}, Lgzt$a;-><init>()V

    .line 60
    .local v2, "options":Lgzt$a;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lgzt$a;->inJustDecodeBounds:Z

    .line 61
    iput-object p2, v2, Lgzt$a;->a:Ljava/lang/String;

    .line 62
    invoke-static {p1, v2}, Lgzt;->a(Ljava/io/InputStream;Lgzt$a;)Landroid/graphics/Bitmap;

    .line 65
    iget v6, v2, Lgzt$a;->outWidth:I

    iget v7, v2, Lgzt$a;->outHeight:I

    invoke-virtual {p0, v6, v7}, Lhaw;->a(II)Lhbc;

    move-result-object v3

    .line 67
    .local v3, "resize":Lhbc;
    const/4 v6, 0x0

    iput-boolean v6, v2, Lgzt$a;->inJustDecodeBounds:Z

    .line 68
    if-eqz v3, :cond_0

    .line 69
    iget v6, v3, Lhbc;->a:I

    iput v6, v2, Lgzt$a;->b:I

    .line 70
    iget v6, v3, Lhbc;->b:I

    iput v6, v2, Lgzt$a;->c:I

    .line 76
    :goto_0
    invoke-static {p1, v2}, Lgzt;->a(Ljava/io/InputStream;Lgzt$a;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 77
    .local v4, "srcBitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_1

    .line 78
    sget-object v6, Lhaw;->a:Ljava/lang/String;

    const-string/jumbo v7, "decodeBitmap fail:%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p2}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .line 100
    .end local v2    # "options":Lgzt$a;
    .end local v3    # "resize":Lhbc;
    .end local v4    # "srcBitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v4

    .line 72
    .restart local v2    # "options":Lgzt$a;
    .restart local v3    # "resize":Lhbc;
    :cond_0
    iget v6, v2, Lgzt$a;->outWidth:I

    iput v6, v2, Lgzt$a;->b:I

    .line 73
    iget v6, v2, Lgzt$a;->outHeight:I

    iput v6, v2, Lgzt$a;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v2    # "options":Lgzt$a;
    .end local v3    # "resize":Lhbc;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lhaw;->a:Ljava/lang/String;

    const-string/jumbo v7, "decodeBitmap err %s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {p2}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v6, v7, v8}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .line 100
    goto :goto_1

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "options":Lgzt$a;
    .restart local v3    # "resize":Lhbc;
    .restart local v4    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v4}, Lhaw;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 86
    invoke-virtual {p0, v4}, Lhaw;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    .local v0, "dstBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 88
    sget-object v6, Lhaw;->a:Ljava/lang/String;

    const-string/jumbo v7, "processBitmap fail:%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p2}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 92
    :cond_2
    if-eq v0, v4, :cond_3

    .line 93
    invoke-static {v4}, Lgzt;->a(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move-object v4, v0

    .line 95
    goto :goto_1
.end method
