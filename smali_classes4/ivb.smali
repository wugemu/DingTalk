.class public abstract Livb;
.super Ljava/lang/Object;
.source "BaseImage.java"

# interfaces
.implements Livd;


# instance fields
.field protected a:Landroid/content/ContentResolver;

.field protected b:Landroid/net/Uri;

.field protected c:J

.field protected d:Ljava/lang/String;

.field protected e:J

.field protected final f:I

.field protected g:Ljava/lang/String;

.field protected h:Livc;

.field private final i:J

.field private j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private l:I

.field private m:I


# direct methods
.method protected constructor <init>(Livc;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "container"    # Livc;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "id"    # J
    .param p5, "index"    # I
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "dataPath"    # Ljava/lang/String;
    .param p8, "miniThumbMagic"    # J
    .param p10, "mimeType"    # Ljava/lang/String;
    .param p11, "dateTaken"    # J
    .param p13, "title"    # Ljava/lang/String;
    .param p14, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Livb;->l:I

    .line 57
    iput v0, p0, Livb;->m:I

    .line 62
    iput-object p1, p0, Livb;->h:Livc;

    .line 63
    iput-object p2, p0, Livb;->a:Landroid/content/ContentResolver;

    .line 64
    iput-wide p3, p0, Livb;->c:J

    .line 65
    iput p5, p0, Livb;->f:I

    .line 66
    iput-object p6, p0, Livb;->b:Landroid/net/Uri;

    .line 67
    iput-object p7, p0, Livb;->d:Ljava/lang/String;

    .line 68
    iput-wide p8, p0, Livb;->e:J

    .line 69
    iput-object p10, p0, Livb;->g:Ljava/lang/String;

    .line 70
    iput-wide p11, p0, Livb;->i:J

    .line 71
    iput-object p13, p0, Livb;->j:Ljava/lang/String;

    .line 72
    iput-object p14, p0, Livb;->k:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private g()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "input":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v2, p0, Livb;->a:Landroid/content/ContentResolver;

    iget-object v3, p0, Livb;->b:Landroid/net/Uri;

    const-string/jumbo v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 155
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 156
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 157
    invoke-static {}, Lcom/android/camera/BitmapManager;->a()Lcom/android/camera/BitmapManager;

    move-result-object v2

    .line 158
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 157
    invoke-virtual {v2, v3, v1}, Lcom/android/camera/BitmapManager;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 159
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Livb;->l:I

    .line 160
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, p0, Livb;->m:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-static {v0}, Liva;->a(Landroid/os/ParcelFileDescriptor;)V

    .line 166
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Livb;->l:I

    .line 163
    const/4 v2, 0x0

    iput v2, p0, Livb;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    invoke-static {v0}, Liva;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

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
    .line 91
    const/4 v0, -0x1

    const/high16 v1, 0x100000

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Livb;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(IIZZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "minSideLength"    # I
    .param p2, "maxNumberOfPixels"    # I
    .param p3, "rotateAsNeeded"    # Z
    .param p4, "useNative"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 97
    iget-object v2, p0, Livb;->h:Livc;

    iget-wide v4, p0, Livb;->c:J

    invoke-virtual {v2, v4, v5}, Livc;->a(J)Landroid/net/Uri;

    move-result-object v1

    .line 98
    .local v1, "url":Landroid/net/Uri;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 107
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :cond_1
    iget-object v2, p0, Livb;->a:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {p1, p2, v1, v2, v3}, Liva;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 104
    invoke-virtual {p0}, Livb;->c()I

    move-result v2

    invoke-static {v0, v2}, Liva;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Livb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 132
    iget-wide v0, p0, Livb;->i:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Livb;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 170
    iget v0, p0, Livb;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Livb;->g()V

    .line 171
    :cond_0
    iget v0, p0, Livb;->l:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 81
    if-eqz p1, :cond_0

    instance-of v0, p1, Livf;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 82
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Livb;->b:Landroid/net/Uri;

    check-cast p1, Livf;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Livf;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 175
    iget v0, p0, Livb;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Livb;->g()V

    .line 176
    :cond_0
    iget v0, p0, Livb;->m:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Livb;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Livb;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
