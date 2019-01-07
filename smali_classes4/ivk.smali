.class final Livk;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Livd;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Live;

.field private final c:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Live;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "container"    # Live;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Livk;->b:Live;

    .line 40
    iput-object p2, p0, Livk;->c:Landroid/content/ContentResolver;

    .line 41
    iput-object p3, p0, Livk;->a:Landroid/net/Uri;

    .line 42
    return-void
.end method

.method private c()Landroid/os/ParcelFileDescriptor;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Livk;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Livk;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 77
    .end local v0    # "path":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 74
    :cond_0
    iget-object v1, p0, Livk;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Livk;->a:Landroid/net/Uri;

    const-string/jumbo v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private g()Landroid/graphics/BitmapFactory$Options;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 133
    invoke-direct {p0}, Livk;->c()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 134
    .local v0, "input":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 142
    :goto_0
    return-object v1

    .line 136
    :cond_0
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 137
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 138
    invoke-static {}, Lcom/android/camera/BitmapManager;->a()Lcom/android/camera/BitmapManager;

    move-result-object v2

    .line 139
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 138
    invoke-virtual {v2, v3, v1}, Lcom/android/camera/BitmapManager;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-static {v0}, Liva;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Liva;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v2
.end method


# virtual methods
.method public final a(II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "minSideLength"    # I
    .param p2, "maxNumberOfPixels"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 82
    const/4 v0, -0x1

    const/high16 v1, 0x100000

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Livk;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(IIZZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "minSideLength"    # I
    .param p2, "maxNumberOfPixels"    # I
    .param p3, "rotateAsNeeded"    # Z
    .param p4, "useNative"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 95
    :try_start_0
    invoke-direct {p0}, Livk;->c()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .local v4, "pfdInput":Landroid/os/ParcelFileDescriptor;
    move-object v5, v7

    .line 1336
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Liva;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 98
    .local v6, "b":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_1

    if-eqz p3, :cond_1

    .line 2045
    iget-object v0, p0, Livk;->c:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Livk;->a:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 2046
    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    invoke-static {v6, v0}, Liva;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 103
    .end local v4    # "pfdInput":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "b":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    return-object v6

    .line 2048
    .restart local v4    # "pfdInput":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "b":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v0, p0, Livk;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Livk;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Liva;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 103
    .end local v4    # "pfdInput":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    move-object v6, v7

    goto :goto_1
.end method

.method public final a(Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "rotateAsNeeded"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 128
    const/4 v0, 0x1

    .line 2088
    const/16 v1, 0x140

    const/high16 v2, 0x30000

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Livk;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Livk;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 172
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Livk;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 159
    invoke-direct {p0}, Livk;->g()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 160
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 154
    invoke-direct {p0}, Livk;->g()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 155
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
