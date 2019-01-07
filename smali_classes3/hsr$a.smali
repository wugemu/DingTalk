.class public final Lhsr$a;
.super Landroid/os/AsyncTask;
.source "PhotoDealImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhsr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhsr;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/ImageView;

.field private d:Lhsr$b;


# direct methods
.method public constructor <init>(Lhsr;Ljava/lang/String;Landroid/widget/ImageView;Lhsr$b;)V
    .locals 0
    .param p1, "this$0"    # Lhsr;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "imageview"    # Landroid/widget/ImageView;
    .param p4, "mLoadListener"    # Lhsr$b;

    .prologue
    .line 60
    iput-object p1, p0, Lhsr$a;->a:Lhsr;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    iput-object p2, p0, Lhsr$a;->b:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lhsr$a;->c:Landroid/widget/ImageView;

    .line 63
    iput-object p4, p0, Lhsr$a;->d:Lhsr$b;

    .line 64
    return-void
.end method

.method private varargs a()Landroid/graphics/Bitmap;
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v13, 0x800

    const/16 v12, 0x2d0

    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, "res":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lhsr$a;->a:Lhsr;

    iget-object v3, p0, Lhsr$a;->b:Ljava/lang/String;

    .line 1127
    invoke-static {v3}, Lhsr;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 1128
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1129
    iget-object v6, v2, Lhsr;->a:Landroid/graphics/Bitmap$Config;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1132
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1133
    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1134
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1135
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2123
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    long-to-int v8, v8

    .line 2095
    iget v9, v2, Lhsr;->d:I

    if-le v8, v9, :cond_5

    .line 2096
    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, v2, Lhsr;->d:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    int-to-float v8, v8

    div-float v8, v9, v8

    .line 2097
    int-to-float v9, v6

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v2, Lhsr;->b:I

    .line 2098
    int-to-float v9, v7

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v2, Lhsr;->c:I

    .line 2104
    :goto_0
    iget v8, v2, Lhsr;->b:I

    if-lt v8, v13, :cond_0

    .line 2105
    const/16 v8, 0x800

    iput v8, v2, Lhsr;->b:I

    .line 2107
    :cond_0
    iget v8, v2, Lhsr;->c:I

    if-lt v8, v13, :cond_1

    .line 2108
    const/16 v8, 0x800

    iput v8, v2, Lhsr;->c:I

    .line 2111
    :cond_1
    iget v8, v2, Lhsr;->b:I

    if-lt v8, v12, :cond_2

    .line 2112
    const/16 v8, 0x2d0

    iput v8, v2, Lhsr;->b:I

    .line 2114
    :cond_2
    iget v8, v2, Lhsr;->c:I

    if-lt v8, v12, :cond_3

    .line 2115
    const/16 v8, 0x2d0

    iput v8, v2, Lhsr;->c:I

    .line 1139
    :cond_3
    iget v8, v2, Lhsr;->b:I

    iget v9, v2, Lhsr;->c:I

    invoke-static {v8, v9, v6, v7}, Lhsr;->b(IIII)I

    move-result v8

    .line 1141
    iget v9, v2, Lhsr;->c:I

    iget v2, v2, Lhsr;->b:I

    invoke-static {v9, v2, v7, v6}, Lhsr;->b(IIII)I

    move-result v2

    .line 1145
    const/4 v9, 0x0

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1146
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1147
    invoke-static {v3}, Lhsr;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1151
    invoke-static {v6, v7, v8, v2}, Lhsr;->a(IIII)I

    move-result v4

    iput v4, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1152
    const/4 v4, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1155
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v4, v8, :cond_4

    .line 1156
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v4, v2, :cond_6

    .line 1157
    :cond_4
    const/4 v4, 0x1

    invoke-static {v3, v8, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1159
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, v2

    .line 79
    :goto_1
    return-object v1

    .line 2100
    :cond_5
    iput v6, v2, Lhsr;->b:I

    .line 2101
    iput v7, v2, Lhsr;->c:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    move-object v1, v3

    .line 1161
    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lhsr$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 56
    check-cast p1, Landroid/graphics/Bitmap;

    .line 3084
    iget-object v0, p0, Lhsr$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3085
    iget-object v0, p0, Lhsr$a;->d:Lhsr$b;

    invoke-interface {v0}, Lhsr$b;->a()V

    .line 56
    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
