.class public Lcom/alibaba/laiwang/photokit/nativecode/JpegTranscoder;
.super Ljava/lang/Object;
.source "JpegTranscoder.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 24
    invoke-static {}, Lhbj;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "rotationAngle"    # I
    .param p3, "scaleNumerator"    # I
    .param p4, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 56
    if-lez p3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 57
    const/16 v0, 0x10

    if-gt p3, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 58
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 59
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 1038
    if-ltz p2, :cond_2

    const/16 v0, 0x10e

    if-gt p2, v0, :cond_2

    rem-int/lit8 v0, p2, 0x5a

    if-nez v0, :cond_2

    .line 60
    :goto_2
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 62
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 63
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    const/16 v2, 0x64

    .line 61
    invoke-static {v0, v1, p2, p3, v2}, Lcom/alibaba/laiwang/photokit/nativecode/JpegTranscoder;->nativeTranscodeJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;III)V

    .line 67
    return-void

    :cond_0
    move v0, v2

    .line 56
    goto :goto_0

    :cond_1
    move v0, v2

    .line 57
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1038
    goto :goto_2
.end method

.method private static native nativeTranscodeJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
