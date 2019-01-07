.class public Ljhi;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/util/SparseIntArray;

.field private static final c:[Ljava/lang/String;

.field private static final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/16 v3, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 51
    const-class v1, Ljhi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljhi;->a:Ljava/lang/String;

    .line 74
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 75
    sput-object v1, Ljhi;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    sget-object v1, Ljhi;->b:Landroid/util/SparseIntArray;

    const/16 v2, 0x1e

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    sget-object v1, Ljhi;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    sget-object v1, Ljhi;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 99
    const-string/jumbo v3, "drawable-xxhdpi"

    aput-object v3, v1, v2

    .line 100
    const-string/jumbo v2, "drawable-xhdpi"

    aput-object v2, v1, v4

    .line 101
    const-string/jumbo v2, "drawable-hdpi"

    aput-object v2, v1, v5

    .line 102
    const-string/jumbo v2, "drawable-mdpi"

    aput-object v2, v1, v6

    .line 103
    const-string/jumbo v2, "drawable-ldpi"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    .line 104
    const-string/jumbo v3, "drawable"

    aput-object v3, v1, v2

    .line 98
    sput-object v1, Ljhi;->c:[Ljava/lang/String;

    .line 115
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 116
    sput-object v1, Ljhi;->d:Landroid/util/SparseArray;

    const-string/jumbo v2, "weibosdk_dialog_bg.9.png"

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v1, Ljhi;->d:Landroid/util/SparseArray;

    const-string/jumbo v2, "ic_com_sina_weibo_sdk_close.png"

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ljhi;->e:Ljava/util/HashMap;

    .line 148
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 149
    .local v0, "stringMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    const-string/jumbo v1, "\u65e0\u6cd5\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u914d\u7f6e"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    sget-object v1, Ljhi;->e:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "stringMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 154
    .restart local v0    # "stringMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v1, "\u8f09\u5165\u4e2d..."

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    const-string/jumbo v1, "\u7121\u6cd5\u9023\u63a5\u5230\u7db2\u7edc\uff0c\u8acb\u6aa2\u67e5\u7db2\u7edc\u914d\u7f6e"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    sget-object v1, Ljhi;->e:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "stringMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 159
    .restart local v0    # "stringMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v1, "Loading..."

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    const-string/jumbo v1, "Network is not available"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    sget-object v1, Ljhi;->e:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 187
    sget-object v1, Ljhi;->d:Landroid/util/SparseArray;

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Ljhi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljhi;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "isNinePatch"    # Z

    .prologue
    .line 288
    const/4 v12, 0x0

    .line 289
    .local v12, "rtDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 290
    .local v7, "asseets":Landroid/content/res/AssetManager;
    const/4 v10, 0x0

    .line 292
    .local v10, "is":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 293
    if-eqz v10, :cond_4

    .line 294
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 295
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 296
    .local v11, "metrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_1

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 298
    .local v8, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Resources;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-direct {v2, v4, v11, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 299
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 300
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v5, v6, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    .line 299
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "config":Landroid/content/res/Configuration;
    .end local v11    # "metrics":Landroid/util/DisplayMetrics;
    .end local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .local v1, "rtDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v10, :cond_0

    .line 311
    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 320
    :cond_0
    :goto_1
    return-object v1

    .line 302
    .end local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_2
    iget v4, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 303
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 306
    .end local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v9

    .line 307
    .local v9, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    if-eqz v10, :cond_3

    .line 311
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v12

    .line 312
    .end local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .end local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v9

    .line 313
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v12

    .line 316
    .end local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 308
    .end local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    .line 309
    if-eqz v10, :cond_2

    .line 311
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 318
    :cond_2
    :goto_2
    throw v4

    .line 312
    :catch_2
    move-exception v9

    .line 313
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 312
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    :catch_3
    move-exception v9

    .line 313
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object v1, v12

    .end local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .end local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object v1, v12

    .end local v12    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "rtDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 1221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1222
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1223
    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    .local v0, "locale":Ljava/util/Locale;
    :cond_0
    :goto_0
    sget-object v2, Ljhi;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 175
    .local v1, "stringMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v2, ""

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 1226
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "stringMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0xf0

    const/16 v7, 0xa0

    const/16 v6, 0x78

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 242
    sget-object v5, Ljhi;->a:Ljava/lang/String;

    const-string/jumbo v6, "id is NOT correct!"

    invoke-static {v5, v6}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 273
    :cond_0
    :goto_0
    return-object v2

    .line 1366
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 1367
    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1368
    if-gt v5, v6, :cond_2

    .line 1369
    const-string/jumbo v3, "drawable-ldpi"

    .line 247
    .local v3, "pathPrefix":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "path":Ljava/lang/String;
    sget-object v5, Ljhi;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Maybe the appropriate path: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljhg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {p0, v2}, Ljhi;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 252
    sget-object v5, Ljhi;->a:Ljava/lang/String;

    const-string/jumbo v6, "Not the correct path, we need to find one..."

    invoke-static {v5, v6}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "bFound":Z
    const/4 v1, 0x0

    .local v1, "ix":I
    :goto_2
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    .line 271
    sget-object v5, Ljhi;->a:Ljava/lang/String;

    const-string/jumbo v6, "Not find the appropriate path for drawable"

    invoke-static {v5, v6}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 273
    goto :goto_0

    .line 1370
    .end local v0    # "bFound":Z
    .end local v1    # "ix":I
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "pathPrefix":Ljava/lang/String;
    :cond_2
    if-le v5, v6, :cond_3

    if-gt v5, v7, :cond_3

    .line 1371
    const-string/jumbo v3, "drawable-mdpi"

    goto :goto_1

    .line 1372
    :cond_3
    if-le v5, v7, :cond_4

    if-gt v5, v8, :cond_4

    .line 1373
    const-string/jumbo v3, "drawable-hdpi"

    goto :goto_1

    .line 1374
    :cond_4
    if-le v5, v8, :cond_5

    const/16 v6, 0x140

    if-gt v5, v6, :cond_5

    .line 1375
    const-string/jumbo v3, "drawable-xhdpi"

    goto :goto_1

    .line 1377
    :cond_5
    const-string/jumbo v3, "drawable-xxhdpi"

    goto :goto_1

    .line 257
    .restart local v0    # "bFound":Z
    .restart local v1    # "ix":I
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "pathPrefix":Ljava/lang/String;
    :cond_6
    if-nez v0, :cond_8

    .line 258
    sget-object v5, Ljhi;->c:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 259
    const/4 v0, 0x1

    .line 260
    sget-object v5, Ljhi;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Have Find index: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljhi;->c:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljhg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 263
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Ljhi;->c:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-static {p0, v2}, Ljhi;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 200
    sget-object v1, Ljhi;->d:Landroid/util/SparseArray;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Ljhi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "path":Ljava/lang/String;
    invoke-static {p0, v0, v3}, Ljhi;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 331
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v3

    .line 335
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 336
    .local v0, "asseets":Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 338
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 339
    sget-object v4, Ljhi;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "file ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] existed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    if-eqz v2, :cond_2

    .line 347
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    :cond_2
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 343
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    :try_start_2
    sget-object v4, Ljhi;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "file ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] NOT existed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 346
    if-eqz v2, :cond_0

    .line 347
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 349
    :catch_2
    move-exception v1

    .line 350
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 344
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 346
    if-eqz v2, :cond_3

    .line 347
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 353
    :cond_3
    :goto_2
    throw v3

    .line 349
    :catch_3
    move-exception v1

    .line 350
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
