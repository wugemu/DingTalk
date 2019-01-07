.class public Lcom/alibaba/laiwang/photokit/nativecode/WebpTranscoder;
.super Ljava/lang/Object;
.source "WebpTranscoder.java"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v3, 0x11

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 29
    invoke-static {}, Lhbj;->a()V

    .line 1046
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_1

    .line 37
    :cond_0
    :goto_0
    sput-boolean v0, Lcom/alibaba/laiwang/photokit/nativecode/WebpTranscoder;->a:Z

    return-void

    .line 1050
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v2, v3, :cond_2

    .line 1053
    const-string/jumbo v2, "UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA=="

    invoke-static {v2, v0}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1054
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1055
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1056
    array-length v4, v2

    invoke-static {v2, v0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1062
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v1, :cond_0

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v2, v1, :cond_0

    :cond_2
    move v0, v1

    .line 1067
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    .line 122
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 123
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    .line 121
    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/nativecode/WebpTranscoder;->nativeTranscodeWebpToPng(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 124
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    .line 110
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 111
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    const/16 v2, 0x64

    .line 109
    invoke-static {v0, v1, v2}, Lcom/alibaba/laiwang/photokit/nativecode/WebpTranscoder;->nativeTranscodeWebpToJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 113
    return-void
.end method

.method private static native nativeTranscodeWebpToJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeTranscodeWebpToPng(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
