.class public final Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$RetainFragment;,
        Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;
    }
.end annotation


# static fields
.field private static final f:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field public a:Lgxb;

.field public b:Lfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfq",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

.field public final d:Ljava/lang/Object;

.field public e:Z

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->f:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method private constructor <init>(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;)V
    .locals 2
    .param p1, "cacheParams"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->d:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->e:Z

    .line 1125
    iput-object p1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    .line 1129
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    iget-boolean v0, v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->f:Z

    if-eqz v0, :cond_1

    .line 1143
    invoke-static {}, Lgxh;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1145
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->g:Ljava/util/Set;

    .line 1148
    :cond_0
    new-instance v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$1;

    iget-object v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    iget v1, v1, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->a:I

    invoke-direct {v0, p0, v1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$1;-><init>(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;I)V

    iput-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->b:Lfq;

    .line 97
    :cond_1
    return-void
.end method

.method public static a(Landroid/graphics/drawable/BitmapDrawable;)I
    .locals 3
    .param p0, "value"    # Landroid/graphics/drawable/BitmapDrawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 610
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 614
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lgxh;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    .line 623
    :goto_0
    return v1

    .line 4069
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    .line 618
    :goto_1
    if-eqz v1, :cond_2

    .line 619
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    goto :goto_0

    .line 4069
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 623
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)J
    .locals 6
    .param p0, "path"    # Ljava/io/File;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 665
    invoke-static {}, Lgxh;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    .line 669
    :goto_0
    return-wide v2

    .line 668
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, "stats":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/ailabs/ar/androidar/ArActivity;Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;)Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;
    .locals 1
    .param p0, "activity"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;
    .param p1, "cacheParams"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->f:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .line 111
    .local v0, "imageCache":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;
    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .end local v0    # "imageCache":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;
    invoke-direct {v0, p1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;-><init>(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;)V

    .line 113
    .restart local v0    # "imageCache":Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;
    iput-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->f:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .line 116
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 563
    const-string/jumbo v2, "mounted"

    .line 564
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2634
    invoke-static {}, Lgxh;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2635
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    .line 565
    :goto_0
    if-nez v2, :cond_4

    .line 3057
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    .line 2648
    :goto_1
    if-eqz v1, :cond_3

    .line 2649
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 565
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "cachePath":Ljava/lang/String;
    :goto_3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .end local v0    # "cachePath":Ljava/lang/String;
    :cond_1
    move v2, v1

    .line 2637
    goto :goto_0

    .line 3057
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2653
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/Android/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2654
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 566
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic a(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->f:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 578
    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 579
    .local v1, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 580
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 3589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3590
    const/4 v2, 0x0

    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 3591
    aget-byte v5, v3, v2

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 3592
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 3593
    const/16 v6, 0x30

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3595
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3590
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3597
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 584
    .end local v1    # "mDigest":Ljava/security/MessageDigest;
    .local v0, "cacheKey":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 582
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catch_0
    move-exception v2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cacheKey":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->g:Ljava/util/Set;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->g:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 363
    iget-object v7, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->g:Ljava/util/Set;

    monitor-enter v7

    .line 364
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->g:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 367
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 368
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 370
    .local v1, "item":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2519
    invoke-static {}, Lgxh;->c()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2521
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v8, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v3, v8, :cond_3

    .line 2522
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v8, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v8, :cond_3

    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v3, v4, :cond_3

    move v3, v4

    .line 372
    :goto_1
    if-eqz v3, :cond_0

    .line 373
    move-object v0, v1

    .line 376
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 384
    .end local v1    # "item":Landroid/graphics/Bitmap;
    :cond_1
    monitor-exit v7

    .line 387
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :cond_2
    return-object v0

    .restart local v1    # "item":Landroid/graphics/Bitmap;
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :cond_3
    move v3, v5

    .line 2521
    goto :goto_1

    .line 2528
    :cond_4
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v3, v8

    .line 2529
    iget v8, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v8, v9

    .line 2530
    mul-int/2addr v8, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 2541
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v9, :cond_5

    .line 2542
    const/4 v3, 0x4

    .line 2530
    :goto_2
    mul-int/2addr v3, v8

    .line 2531
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v8

    if-gt v3, v8, :cond_8

    move v3, v4

    goto :goto_1

    .line 2543
    :cond_5
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v3, v9, :cond_6

    move v3, v6

    .line 2544
    goto :goto_2

    .line 2545
    :cond_6
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v3, v9, :cond_7

    move v3, v6

    .line 2546
    goto :goto_2

    .line 2547
    :cond_7
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    move v3, v4

    .line 2550
    goto :goto_2

    :cond_8
    move v3, v5

    .line 2531
    goto :goto_1

    .line 381
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 384
    .end local v1    # "item":Landroid/graphics/Bitmap;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 312
    invoke-static {p1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 315
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->d:Ljava/lang/Object;

    monitor-enter v8

    .line 316
    :goto_0
    :try_start_0
    iget-boolean v7, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_0

    .line 318
    :try_start_1
    iget-object v7, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->d:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 319
    :catch_0
    move-exception v7

    goto :goto_0

    .line 321
    :cond_0
    :try_start_2
    iget-object v7, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_2

    .line 322
    const/4 v4, 0x0

    .line 324
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_3
    iget-object v7, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;

    invoke-virtual {v7, v5}, Lgxb;->a(Ljava/lang/String;)Lgxb$c;

    move-result-object v6

    .line 325
    .local v6, "snapshot":Lgxb$c;
    if-eqz v6, :cond_1

    .line 1754
    iget-object v7, v6, Lgxb$c;->a:[Ljava/io/InputStream;

    const/4 v9, 0x0

    aget-object v4, v7, v9

    .line 330
    if-eqz v4, :cond_1

    .line 331
    move-object v0, v4

    check-cast v0, Ljava/io/FileInputStream;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 335
    .local v3, "fd":Ljava/io/FileDescriptor;
    const v7, 0x7fffffff

    const v9, 0x7fffffff

    invoke-static {v3, v7, v9, p0}, Lgxe;->a(Ljava/io/FileDescriptor;IILcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 343
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    :cond_1
    if-eqz v4, :cond_2

    .line 344
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 349
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "snapshot":Lgxb$c;
    :cond_2
    :goto_1
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v1

    .line 339
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 340
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v7, "ImageCache"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getBitmapFromDiskCache - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 343
    if-eqz v4, :cond_2

    .line 344
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 347
    :catch_2
    move-exception v7

    goto :goto_1

    .line 342
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 343
    if-eqz v4, :cond_3

    .line 344
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 346
    :cond_3
    :goto_2
    :try_start_9
    throw v7

    .line 350
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v7

    .line 347
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "snapshot":Lgxb$c;
    :catch_3
    move-exception v7

    goto :goto_1

    .end local v6    # "snapshot":Lgxb$c;
    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    iget-object v3, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;

    invoke-virtual {v2}, Lgxb;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    iget-object v0, v2, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->c:Ljava/io/File;

    .line 203
    .local v0, "diskCacheDir":Ljava/io/File;
    iget-object v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    iget-boolean v2, v2, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->g:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 207
    :cond_1
    invoke-static {v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a(Ljava/io/File;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    iget v2, v2, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 209
    const/4 v2, 0x1

    const/4 v4, 0x1

    :try_start_1
    iget-object v5, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    iget v5, v5, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->b:I

    int-to-long v6, v5

    invoke-static {v0, v2, v4, v6, v7}, Lgxb;->a(Ljava/io/File;IIJ)Lgxb;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a:Lgxb;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .end local v0    # "diskCacheDir":Ljava/io/File;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->e:Z

    .line 222
    iget-object v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 223
    monitor-exit v3

    return-void

    .line 214
    .restart local v0    # "diskCacheDir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->c:Ljava/io/File;

    .line 216
    const-string/jumbo v2, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "initDiskCache - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v0    # "diskCacheDir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
