.class public final Lcox;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "targetWidth"    # I

    .prologue
    .line 23
    if-eqz p0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 74
    .end local p2    # "targetWidth":I
    :cond_1
    :goto_0
    return-object v3

    .line 27
    .restart local p2    # "targetWidth":I
    :cond_2
    const/4 v3, 0x0

    .line 30
    .local v3, "bmp":Landroid/graphics/Bitmap;
    const-string/jumbo v12, "content://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 31
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 37
    .local v8, "uri":Landroid/net/Uri;
    :goto_1
    const-string/jumbo v12, "video"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 38
    const/4 v9, 0x0

    .line 40
    .local v9, "videoId":I
    :try_start_0
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 45
    :goto_2
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 46
    .local v6, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput v12, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 48
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    int-to-long v12, v9

    const/4 v14, 0x1

    invoke-static {v4, v12, v13, v14, v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 49
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 1084
    if-eqz v2, :cond_3

    if-gtz p2, :cond_5

    .line 1085
    :cond_3
    const/4 v3, 0x0

    .line 50
    .end local p2    # "targetWidth":I
    :goto_3
    goto :goto_0

    .line 33
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "videoId":I
    .restart local p2    # "targetWidth":I
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "content://media"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .restart local v8    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 41
    .restart local v9    # "videoId":I
    :catch_0
    move-exception v5

    .line 42
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 1088
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v6    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 1089
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 1092
    move/from16 v0, p2

    if-gt v12, v0, :cond_6

    move/from16 v0, p2

    if-gt v13, v0, :cond_6

    move-object v3, v2

    .line 1093
    goto :goto_3

    .line 1098
    :cond_6
    if-le v12, v13, :cond_7

    .line 1101
    move/from16 v0, p2

    int-to-float v14, v0

    int-to-float v12, v12

    div-float v12, v14, v12

    .line 1102
    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move v15, v12

    move/from16 v12, p2

    move/from16 p2, v15

    .line 1110
    .end local p2    # "targetWidth":I
    :goto_4
    const/4 v13, 0x1

    move/from16 v0, p2

    invoke-static {v2, v12, v0, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_3

    .line 1106
    .restart local p2    # "targetWidth":I
    :cond_7
    move/from16 v0, p2

    int-to-float v14, v0

    int-to-float v13, v13

    div-float v13, v14, v13

    .line 1107
    int-to-float v12, v12

    mul-float/2addr v12, v13

    float-to-int v12, v12

    goto :goto_4

    .line 54
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "videoId":I
    :cond_8
    :try_start_1
    new-instance v6, Lgzt$a;

    invoke-direct {v6}, Lgzt$a;-><init>()V

    .line 55
    .local v6, "opt":Lgzt$a;
    const/4 v12, 0x1

    iput-boolean v12, v6, Lgzt$a;->inJustDecodeBounds:Z

    .line 56
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lgzt;->a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;

    .line 58
    iget v12, v6, Lgzt$a;->outWidth:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_9

    iget v12, v6, Lgzt$a;->outHeight:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_a

    .line 59
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 62
    :cond_a
    iget v12, v6, Lgzt$a;->outWidth:I

    move/from16 v0, p2

    if-lt v0, v12, :cond_b

    const/high16 v10, 0x3f800000    # 1.0f

    .line 63
    .local v10, "xRate":F
    :goto_5
    iget v12, v6, Lgzt$a;->outHeight:I

    move/from16 v0, p2

    if-lt v0, v12, :cond_c

    const/high16 v11, 0x3f800000    # 1.0f

    .line 64
    .local v11, "yRate":F
    :goto_6
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 65
    .local v7, "rate":F
    iget v12, v6, Lgzt$a;->outWidth:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    float-to-int v12, v12

    iput v12, v6, Lgzt$a;->b:I

    .line 66
    iget v12, v6, Lgzt$a;->outHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    float-to-int v12, v12

    iput v12, v6, Lgzt$a;->c:I

    .line 67
    const/4 v12, 0x0

    iput-boolean v12, v6, Lgzt$a;->inJustDecodeBounds:Z

    .line 68
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lgzt;->a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_0

    .line 62
    .end local v7    # "rate":F
    .end local v10    # "xRate":F
    .end local v11    # "yRate":F
    :cond_b
    move/from16 v0, p2

    int-to-float v12, v0

    iget v13, v6, Lgzt$a;->outWidth:I

    int-to-float v13, v13

    div-float v10, v12, v13

    goto :goto_5

    .line 63
    .restart local v10    # "xRate":F
    :cond_c
    move/from16 v0, p2

    int-to-float v12, v0

    iget v13, v6, Lgzt$a;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    int-to-float v13, v13

    div-float v11, v12, v13

    goto :goto_6

    .line 69
    .end local v6    # "opt":Lgzt$a;
    .end local v10    # "xRate":F
    :catch_1
    move-exception v5

    .line 70
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
