.class public Lcom/sina/weibo/sdk/api/ImageObject;
.super Lcom/sina/weibo/sdk/api/BaseMediaObject;
.source "ImageObject.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/api/ImageObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_SIZE:I = 0x200000


# instance fields
.field public imageData:[B

.field public imagePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/ImageObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 96
    const-string/jumbo v2, "Weibo.ImageObject"

    const-string/jumbo v3, "imageData and imagePath are null"

    invoke-static {v2, v3}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return v1

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    array-length v2, v2

    const/high16 v3, 0x200000

    if-le v2, v3, :cond_1

    .line 100
    const-string/jumbo v2, "Weibo.ImageObject"

    const-string/jumbo v3, "imageData is too large"

    invoke-static {v2, v3}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x200

    if-le v2, v3, :cond_2

    .line 104
    const-string/jumbo v2, "Weibo.ImageObject"

    const-string/jumbo v3, "imagePath is too length"

    invoke-static {v2, v3}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 108
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xa00000

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 111
    :cond_3
    const-string/jumbo v2, "Weibo.ImageObject"

    .line 112
    const-string/jumbo v3, "checkArgs fail, image content is too large or not exists"

    .line 111
    invoke-static {v2, v3}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Weibo.ImageObject"

    .line 117
    const-string/jumbo v3, "checkArgs fail, image content is too large or not exists"

    .line 116
    invoke-static {v2, v3}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v0    # "file":Ljava/io/File;
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getObjType()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x2

    return v0
.end method

.method public final setImageObject(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 68
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v2

    .line 81
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    const-string/jumbo v3, "Weibo.ImageObject"

    const-string/jumbo v4, "put thumb failed"

    invoke-static {v3, v4}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    if-eqz v1, :cond_0

    .line 75
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 74
    :goto_2
    if-eqz v1, :cond_1

    .line 75
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 80
    :cond_1
    :goto_3
    throw v3

    .line 77
    :catch_2
    move-exception v0

    .line 78
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 77
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v0

    .line 78
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "os":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 69
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method protected toExtraMediaObject(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 131
    return-object p0
.end method

.method public toExtraMediaString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 91
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return-void
.end method
