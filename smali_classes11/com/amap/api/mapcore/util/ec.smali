.class public Lcom/amap/api/mapcore/util/ec;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ec$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private b:Lcom/amap/api/mapcore/util/gy;

.field private c:Lcom/amap/api/mapcore/util/eh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore/util/eh",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/mapcore/util/ec$a;

.field private final e:Ljava/lang/Object;

.field private f:Z

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
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
    .line 57
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/amap/api/mapcore/util/ec;->a:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method private constructor <init>(Lcom/amap/api/mapcore/util/ec$a;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ec;->e:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ec;->f:Z

    .line 84
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ec;->b(Lcom/amap/api/mapcore/util/ec$a;)V

    .line 85
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .locals 2

    .prologue
    .line 653
    .line 655
    invoke-static {}, Lcom/amap/api/mapcore/util/en;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 659
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)J
    .locals 4

    .prologue
    .line 705
    invoke-static {}, Lcom/amap/api/mapcore/util/en;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 709
    :goto_0
    return-wide v0

    .line 708
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/mapcore/util/ec$a;)Lcom/amap/api/mapcore/util/ec;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/amap/api/mapcore/util/ec;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/ec;-><init>(Lcom/amap/api/mapcore/util/ec$a;)V

    .line 110
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .prologue
    .line 683
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/en;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 694
    :goto_0
    return-object v0

    .line 688
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/Android/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 690
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 694
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 607
    invoke-static {p0}, Lcom/amap/api/mapcore/util/ec;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 608
    const-string/jumbo v1, "mounted"

    .line 609
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 609
    invoke-static {}, Lcom/amap/api/mapcore/util/ec;->e()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 610
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 614
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 611
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 637
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 638
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 639
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 641
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 643
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/ec;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method private b(Lcom/amap/api/mapcore/util/ec$a;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ec;->d:Lcom/amap/api/mapcore/util/ec$a;

    .line 122
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->d:Lcom/amap/api/mapcore/util/ec$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/ec$a;->f:Z

    if-eqz v0, :cond_1

    .line 127
    invoke-static {}, Lcom/amap/api/mapcore/util/en;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ec;->g:Ljava/util/HashMap;

    .line 132
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/ec$1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ec;->d:Lcom/amap/api/mapcore/util/ec$a;

    iget v1, v1, Lcom/amap/api/mapcore/util/ec$a;->a:I

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/ec$1;-><init>(Lcom/amap/api/mapcore/util/ec;I)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ec;->c:Lcom/amap/api/mapcore/util/eh;

    .line 176
    :cond_1
    iget-boolean v0, p1, Lcom/amap/api/mapcore/util/ec$a;->h:Z

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ec;->a()V

    .line 180
    :cond_2
    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 224
    if-nez v1, :cond_0

    .line 225
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "not a readable directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 228
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/ec;->b(Ljava/io/File;)V

    .line 231
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 232
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "failed to delete file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_3
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 624
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 625
    const-string/jumbo v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 626
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ec;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 630
    :goto_0
    return-object v0

    .line 628
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 669
    invoke-static {}, Lcom/amap/api/mapcore/util/en;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 672
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic f()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/amap/api/mapcore/util/ec;->a:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 300
    .line 302
    invoke-static {}, Lcom/amap/api/mapcore/util/en;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    .line 303
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 304
    if-eqz v0, :cond_5

    .line 305
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 306
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 309
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ec;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ec;->c:Lcom/amap/api/mapcore/util/eh;

    if-eqz v2, :cond_2

    .line 314
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->c:Lcom/amap/api/mapcore/util/eh;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/eh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 317
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 323
    :cond_3
    :goto_1
    return-object v1

    :cond_4
    move-object v1, v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ec;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gy;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->d:Lcom/amap/api/mapcore/util/ec$a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ec$a;->c:Ljava/io/File;

    .line 193
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ec;->d:Lcom/amap/api/mapcore/util/ec$a;

    iget-boolean v2, v2, Lcom/amap/api/mapcore/util/ec$a;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 195
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ec;->b(Ljava/io/File;)V

    .line 198
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/ec;->a(Ljava/io/File;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ec;->d:Lcom/amap/api/mapcore/util/ec$a;

    iget v4, v4, Lcom/amap/api/mapcore/util/ec$a;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 203
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_3
    iget-object v4, p0, Lcom/amap/api/mapcore/util/ec;->d:Lcom/amap/api/mapcore/util/ec$a;

    iget v4, v4, Lcom/amap/api/mapcore/util/ec$a;->b:I

    int-to-long v4, v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/gy;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore/util/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ec;->f:Z

    .line 218
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 219
    monitor-exit v1

    return-void

    .line 209
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->d:Lcom/amap/api/mapcore/util/ec$a;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/amap/api/mapcore/util/ec$a;->c:Ljava/io/File;

    goto :goto_1

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->c:Lcom/amap/api/mapcore/util/eh;

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->c:Lcom/amap/api/mapcore/util/eh;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/eh;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ec;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;

    if-eqz v0, :cond_4

    .line 261
    invoke-static {p1}, Lcom/amap/api/mapcore/util/ec;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 262
    const/4 v0, 0x0

    .line 264
    :try_start_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;

    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore/util/gy;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/gy$b;

    move-result-object v3

    .line 265
    if-nez v3, :cond_5

    .line 266
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;

    .line 267
    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore/util/gy;->b(Ljava/lang/String;)Lcom/amap/api/mapcore/util/gy$a;

    move-result-object v1

    .line 268
    if-eqz v1, :cond_3

    .line 269
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/amap/api/mapcore/util/gy$a;->a(I)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 270
    :try_start_2
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ec;->d:Lcom/amap/api/mapcore/util/ec$a;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/ec$a;->d:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ec;->d:Lcom/amap/api/mapcore/util/ec$a;

    iget v4, v4, Lcom/amap/api/mapcore/util/ec$a;->e:I

    invoke-virtual {p2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 272
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/gy$a;->a()V

    .line 273
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 283
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 284
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    :cond_4
    :goto_2
    :try_start_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 276
    :cond_5
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore/util/gy$b;->a(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 283
    if-eqz v0, :cond_4

    .line 284
    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 288
    :catch_1
    move-exception v0

    goto :goto_2

    .line 282
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 283
    :goto_3
    if-eqz v1, :cond_6

    .line 284
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 287
    :cond_6
    :goto_4
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 288
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 282
    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 333
    invoke-static {p1}, Lcom/amap/api/mapcore/util/ec;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    iget-object v4, p0, Lcom/amap/api/mapcore/util/ec;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 337
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/ec;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 339
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ec;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 341
    :catch_0
    move-exception v2

    goto :goto_0

    .line 343
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    .line 346
    :try_start_3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;

    .line 347
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/gy;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/gy$b;

    move-result-object v1

    .line 348
    if-eqz v1, :cond_4

    .line 351
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/gy$b;->a(I)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 352
    if-eqz v2, :cond_1

    .line 353
    :try_start_4
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    .line 354
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 359
    const v5, 0x7fffffff

    const v6, 0x7fffffff

    .line 360
    invoke-static {v1, v5, v6, p0}, Lcom/amap/api/mapcore/util/ee;->a(Ljava/io/FileDescriptor;IILcom/amap/api/mapcore/util/ec;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v3

    .line 371
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 372
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 378
    :cond_2
    :goto_2
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-object v3

    :catch_1
    move-exception v1

    move-object v2, v3

    .line 371
    :goto_3
    if-eqz v2, :cond_2

    .line 372
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 376
    :catch_2
    move-exception v1

    goto :goto_2

    .line 370
    :catchall_0
    move-exception v1

    move-object v2, v3

    .line 371
    :goto_4
    if-eqz v2, :cond_3

    .line 372
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 375
    :cond_3
    :goto_5
    :try_start_9
    throw v1

    .line 379
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v1

    .line 376
    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_5

    .line 370
    :catchall_2
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 424
    invoke-static {}, Lcom/amap/api/mapcore/util/en;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->c:Lcom/amap/api/mapcore/util/eh;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->c:Lcom/amap/api/mapcore/util/eh;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/eh;->a()V

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ec;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ec;->f:Z

    .line 436
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gy;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 438
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gy;->c()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;

    .line 446
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ec;->a()V

    .line 448
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 457
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ec;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 460
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gy;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 477
    invoke-static {}, Lcom/amap/api/mapcore/util/en;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->c:Lcom/amap/api/mapcore/util/eh;

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->c:Lcom/amap/api/mapcore/util/eh;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/eh;->a()V

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ec;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 490
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gy;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gy;->c()V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ec;->b:Lcom/amap/api/mapcore/util/gy;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
