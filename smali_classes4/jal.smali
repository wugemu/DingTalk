.class public final Ljal;
.super Ljava/lang/Object;
.source "LWMessageImage.java"

# interfaces
.implements Ljak;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# instance fields
.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Landroid/graphics/Bitmap;

.field protected g:I

.field protected h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Ljal;->a:I

    .line 22
    const/4 v0, 0x1

    sput v0, Ljal;->b:I

    .line 23
    const/4 v0, 0x2

    sput v0, Ljal;->c:I

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Ljal;->g:I

    return v0
.end method

.method public final a(Landroid/os/Bundle;)Ljak;
    .locals 1
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 127
    const-string/jumbo v0, "imageTYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljal;->g:I

    .line 128
    const-string/jumbo v0, "imageURL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljal;->d:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, "imageURL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljal;->e:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, "imageDatas"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Ljal;->h:[B

    .line 132
    iget-object v0, p0, Ljal;->h:[B

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Ljal;->h:[B

    invoke-static {v0}, Ljas;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ljal;->f:Landroid/graphics/Bitmap;

    .line 136
    :cond_0
    return-object p0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 54
    iput p1, p0, Ljal;->g:I

    .line 55
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    const/16 v1, 0x96

    const/16 v2, 0x96

    const/4 v3, 0x1

    :try_start_0
    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Ljal;->f:Landroid/graphics/Bitmap;

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Ljal;->d:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ljal;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Ljal;->e:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ljal;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final checkArgs()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v3, 0x2800

    const/4 v0, 0x0

    .line 142
    iget v1, p0, Ljal;->g:I

    sget v2, Ljal;->c:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Ljal;->h:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljal;->h:[B

    array-length v1, v1

    if-nez v1, :cond_1

    .line 143
    :cond_0
    const-string/jumbo v1, "LWMessageImage"

    const-string/jumbo v2, "checkArgs fail, thumbData should not be null when send bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return v0

    .line 147
    :cond_1
    iget-object v1, p0, Ljal;->h:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljal;->h:[B

    array-length v1, v1

    const v2, 0xa000

    if-le v1, v2, :cond_2

    .line 148
    const-string/jumbo v1, "LWMessageImage"

    const-string/jumbo v2, "checkArgs fail, thumbData is too large"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Ljal;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljal;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 153
    const-string/jumbo v1, "LWMessageImage"

    const-string/jumbo v2, "checkArgs fail, path is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    :cond_3
    iget-object v1, p0, Ljal;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljal;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 170
    const-string/jumbo v1, "LWMessageImage"

    const-string/jumbo v2, "checkArgs fail, url is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()[B
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ljal;->h:[B

    return-object v0
.end method

.method public final e()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 68
    iget-object v4, p0, Ljal;->e:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 88
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Ljal;->e:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, "imagefile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/16 v4, 0x96

    const/16 v5, 0x96

    const/4 v6, 0x1

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Ljal;->f:Landroid/graphics/Bitmap;

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 85
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Ljal;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Ljal;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljas;->a(Landroid/graphics/Bitmap;Z)[B

    move-result-object v0

    iput-object v0, p0, Ljal;->h:[B

    .line 107
    :cond_0
    return-void
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "toBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "imageTYPE"

    iget v2, p0, Ljal;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string/jumbo v1, "imageURL"

    iget-object v2, p0, Ljal;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v1, "imagePath"

    iget-object v2, p0, Ljal;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Ljal;->h:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljal;->h:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 118
    const-string/jumbo v1, "imageDatas"

    iget-object v2, p0, Ljal;->h:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 121
    :cond_0
    return-object v0
.end method
