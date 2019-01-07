.class public final Lcom/android/camera/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageManager$a;,
        Lcom/android/camera/ImageManager$DataLocation;,
        Lcom/android/camera/ImageManager$ImageListParam;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/camera/ImageManager;->c:Landroid/net/Uri;

    .line 57
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/camera/ImageManager;->d:Landroid/net/Uri;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    sput-object v0, Lcom/android/camera/ImageManager;->a:Ljava/lang/String;

    .line 5139
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    sput-object v0, Lcom/android/camera/ImageManager;->b:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 6
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "degree":I
    const/4 v1, 0x0

    .line 245
    .local v1, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v2, "exif":Landroid/media/ExifInterface;
    move-object v1, v2

    .line 248
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v1, :cond_0

    .line 249
    const-string/jumbo v4, "Orientation"

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 251
    .local v3, "orientation":I
    if-eq v3, v5, :cond_0

    .line 253
    packed-switch v3, :pswitch_data_0

    .line 267
    .end local v3    # "orientation":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 255
    .restart local v3    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 256
    goto :goto_1

    .line 258
    :pswitch_2
    const/16 v0, 0xb4

    .line 259
    goto :goto_1

    .line 261
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .end local v3    # "orientation":I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "dateTaken"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "directory"    # Ljava/lang/String;
    .param p6, "filename"    # Ljava/lang/String;
    .param p7, "source"    # Landroid/graphics/Bitmap;
    .param p8, "jpegData"    # [B
    .param p9, "degree"    # [I

    .prologue
    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, "outputStream":Ljava/io/OutputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "filePath":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 203
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p5, p6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v4, "outputStream":Ljava/io/OutputStream;
    if-eqz p7, :cond_1

    .line 206
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {p7, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 207
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, p9, v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    :goto_0
    invoke-static {v4}, Liva;->a(Ljava/io/Closeable;)V

    .line 221
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 222
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "title"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string/jumbo v6, "_display_name"

    invoke-virtual {v5, v6, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v6, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 229
    const-string/jumbo v6, "mime_type"

    const-string/jumbo v7, "image/jpeg"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v6, "orientation"

    const/4 v7, 0x0

    aget v7, p9, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-string/jumbo v6, "_data"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v6, Lcom/android/camera/ImageManager;->c:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    move-object v3, v4

    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "values":Landroid/content/ContentValues;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    return-object v6

    .line 209
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 210
    const/4 v6, 0x0

    invoke-static {v2}, Lcom/android/camera/ImageManager;->a(Ljava/lang/String;)I

    move-result v7

    aput v7, p9, v6
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 218
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :goto_2
    invoke-static {v3}, Liva;->a(Ljava/io/Closeable;)V

    const/4 v6, 0x0

    goto :goto_1

    :catch_1
    move-exception v6

    :goto_3
    invoke-static {v3}, Liva;->a(Ljava/io/Closeable;)V

    const/4 v6, 0x0

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_4
    invoke-static {v3}, Liva;->a(Ljava/io/Closeable;)V

    throw v6

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_4

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;I)Live;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sort"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 330
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "uriString":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "content://drm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    sget-object v2, Lcom/android/camera/ImageManager$DataLocation;->ALL:Lcom/android/camera/ImageManager$DataLocation;

    const/4 v4, 0x2

    invoke-static {p0, v2, v4, v3, v5}, Lcom/android/camera/ImageManager;->a(Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;)Live;

    move-result-object v2

    .line 346
    :goto_1
    return-object v2

    .line 330
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0

    .line 339
    .restart local v1    # "uriString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "content://media/external/video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    sget-object v2, Lcom/android/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/android/camera/ImageManager$DataLocation;

    const/4 v4, 0x4

    invoke-static {p0, v2, v4, v3, v5}, Lcom/android/camera/ImageManager;->a(Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;)Live;

    move-result-object v2

    goto :goto_1

    .line 2352
    :cond_2
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2353
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2352
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2355
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2354
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 342
    :goto_2
    if-eqz v2, :cond_4

    .line 3406
    new-instance v2, Lcom/android/camera/ImageManager$ImageListParam;

    invoke-direct {v2}, Lcom/android/camera/ImageManager$ImageListParam;-><init>()V

    .line 3407
    iput-object p1, v2, Lcom/android/camera/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 2429
    invoke-static {p0, v2}, Lcom/android/camera/ImageManager;->a(Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$ImageListParam;)Live;

    move-result-object v2

    goto :goto_1

    .line 2354
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 345
    :cond_4
    const-string/jumbo v2, "bucketId"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "bucketId":Ljava/lang/String;
    sget-object v2, Lcom/android/camera/ImageManager$DataLocation;->ALL:Lcom/android/camera/ImageManager$DataLocation;

    invoke-static {p0, v2, v3, v3, v0}, Lcom/android/camera/ImageManager;->a(Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;)Live;

    move-result-object v2

    goto :goto_1
.end method

.method private static a(Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;)Live;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "location"    # Lcom/android/camera/ImageManager$DataLocation;
    .param p2, "inclusion"    # I
    .param p3, "sort"    # I
    .param p4, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 419
    .line 4397
    new-instance v0, Lcom/android/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/android/camera/ImageManager$ImageListParam;-><init>()V

    .line 4398
    iput-object p1, v0, Lcom/android/camera/ImageManager$ImageListParam;->mLocation:Lcom/android/camera/ImageManager$DataLocation;

    .line 4399
    iput p2, v0, Lcom/android/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 4400
    iput p3, v0, Lcom/android/camera/ImageManager$ImageListParam;->mSort:I

    .line 4401
    iput-object p4, v0, Lcom/android/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 421
    .local v0, "param":Lcom/android/camera/ImageManager$ImageListParam;
    invoke-static {p0, v0}, Lcom/android/camera/ImageManager;->a(Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$ImageListParam;)Live;

    move-result-object v1

    return-object v1
.end method

.method private static a(Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$ImageListParam;)Live;
    .locals 14
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "param"    # Lcom/android/camera/ImageManager$ImageListParam;

    .prologue
    .line 273
    iget-object v7, p1, Lcom/android/camera/ImageManager$ImageListParam;->mLocation:Lcom/android/camera/ImageManager$DataLocation;

    .line 274
    .local v7, "location":Lcom/android/camera/ImageManager$DataLocation;
    iget v2, p1, Lcom/android/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 275
    .local v2, "inclusion":I
    iget v9, p1, Lcom/android/camera/ImageManager$ImageListParam;->mSort:I

    .line 276
    .local v9, "sort":I
    iget-object v0, p1, Lcom/android/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 277
    .local v0, "bucketId":Ljava/lang/String;
    iget-object v8, p1, Lcom/android/camera/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 278
    .local v8, "singleImageUri":Landroid/net/Uri;
    iget-boolean v3, p1, Lcom/android/camera/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 280
    .local v3, "isEmptyImageList":Z
    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 281
    :cond_0
    new-instance v6, Lcom/android/camera/ImageManager$a;

    const/4 v12, 0x0

    invoke-direct {v6, v12}, Lcom/android/camera/ImageManager$a;-><init>(B)V

    .line 324
    :goto_0
    return-object v6

    .line 284
    :cond_1
    if-eqz v8, :cond_2

    .line 285
    new-instance v6, Livj;

    invoke-direct {v6, p0, v8}, Livj;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 1465
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 1467
    const-string/jumbo v13, "mounted"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1472
    const/4 v1, 0x1

    .line 292
    .local v1, "haveSdCard":Z
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v5, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Livc;>;"
    if-eqz v1, :cond_3

    sget-object v12, Lcom/android/camera/ImageManager$DataLocation;->INTERNAL:Lcom/android/camera/ImageManager$DataLocation;

    if-eq v7, v12, :cond_3

    .line 295
    and-int/lit8 v12, v2, 0x1

    if-eqz v12, :cond_3

    .line 296
    new-instance v12, Livg;

    sget-object v13, Lcom/android/camera/ImageManager;->c:Landroid/net/Uri;

    invoke-direct {v12, p0, v13, v9, v0}, Livg;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_3
    sget-object v12, Lcom/android/camera/ImageManager$DataLocation;->INTERNAL:Lcom/android/camera/ImageManager$DataLocation;

    if-eq v7, v12, :cond_4

    sget-object v12, Lcom/android/camera/ImageManager$DataLocation;->ALL:Lcom/android/camera/ImageManager$DataLocation;

    if-ne v7, v12, :cond_5

    .line 300
    :cond_4
    and-int/lit8 v12, v2, 0x1

    if-eqz v12, :cond_5

    .line 301
    new-instance v12, Livg;

    sget-object v13, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v12, p0, v13, v9, v0}, Livg;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 309
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Livc;>;"
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 310
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Livc;

    .line 2101
    .local v10, "sublist":Livc;
    invoke-virtual {v10}, Livc;->b()I

    move-result v12

    if-nez v12, :cond_9

    const/4 v12, 0x1

    .line 311
    :goto_3
    if-eqz v12, :cond_6

    .line 312
    invoke-virtual {v10}, Livc;->a()V

    .line 313
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1474
    .end local v1    # "haveSdCard":Z
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Livc;>;"
    .end local v5    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Livc;>;"
    .end local v10    # "sublist":Livc;
    :cond_7
    const-string/jumbo v13, "mounted_ro"

    .line 1475
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1476
    const/4 v1, 0x1

    goto :goto_1

    .line 1478
    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    .line 2101
    .restart local v1    # "haveSdCard":Z
    .restart local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Livc;>;"
    .restart local v5    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Livc;>;"
    .restart local v10    # "sublist":Livc;
    :cond_9
    const/4 v12, 0x0

    goto :goto_3

    .line 317
    .end local v10    # "sublist":Livc;
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 318
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Livc;

    .line 319
    .local v6, "list":Livc;
    goto/16 :goto_0

    .line 322
    .end local v6    # "list":Livc;
    :cond_b
    new-instance v11, Livh;

    .line 323
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Live;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Live;

    invoke-direct {v11, v12, v9}, Livh;-><init>([Live;I)V

    .local v11, "uber":Livh;
    move-object v6, v11

    .line 324
    goto/16 :goto_0
.end method
