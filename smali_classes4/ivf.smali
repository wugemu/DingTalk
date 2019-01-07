.class public final Livf;
.super Livb;
.source "Image.java"

# interfaces
.implements Livd;


# instance fields
.field private i:I


# direct methods
.method public constructor <init>(Livc;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 3
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
    .param p15, "rotation"    # I

    .prologue
    .line 46
    invoke-direct/range {p0 .. p14}, Livb;-><init>(Livc;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 48
    move/from16 v0, p15

    iput v0, p0, Livf;->i:I

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "rotateAsNeeded"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 143
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 144
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 145
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 146
    iget-object v2, p0, Livf;->a:Landroid/content/ContentResolver;

    iget-wide v4, p0, Livf;->c:J

    const/4 v3, 0x1

    invoke-static {v2, v4, v5, v3, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1053
    iget v2, p0, Livf;->i:I

    .line 150
    invoke-static {v0, v2}, Liva;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    :cond_0
    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Livf;->i:I

    return v0
.end method
