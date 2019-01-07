.class public Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;
.super Ljava/lang/Object;
.source "FaceDetecteFrame.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public faceQuality:F

.field public faceSize:Landroid/graphics/Rect;

.field public imaegFormat:I

.field public imageAngle:I

.field public imageData:[B

.field public imageHeight:I

.field public imageWidth:I

.field public isMirror:Z

.field public landmarkScore:F

.field private mImageDataMemoryFile:Landroid/os/MemoryFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->faceQuality:F

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->landmarkScore:F

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageWidth:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageHeight:I

    .line 125
    const/4 v2, 0x0

    .line 127
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .local v0, "dataLength":I
    if-lez v0, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 130
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 131
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-array v7, v0, [B

    iput-object v7, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageData:[B

    .line 133
    iget-object v7, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageData:[B

    invoke-virtual {v3, v7}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 139
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 141
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    .end local v0    # "dataLength":I
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imaegFormat:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageAngle:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    iput-boolean v5, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->isMirror:Z

    .line 151
    const-class v5, Landroid/graphics/Rect;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iput-object v5, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->faceSize:Landroid/graphics/Rect;

    .line 152
    return-void

    .line 142
    .restart local v0    # "dataLength":I
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v0    # "dataLength":I
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "facebox"

    const-string/jumbo v8, "FaceDetecteFrame"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "Error unpack image data:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    if-eqz v2, :cond_1

    .line 141
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 142
    :catch_2
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_2

    .line 141
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 144
    :cond_2
    :goto_4
    throw v5

    .line 142
    :catch_3
    move-exception v1

    .line 143
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    move v5, v6

    .line 150
    goto :goto_1

    .line 139
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "dataLength":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 136
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->mImageDataMemoryFile:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->mImageDataMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->mImageDataMemoryFile:Landroid/os/MemoryFile;

    .line 80
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 11
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 84
    iget v6, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->faceQuality:F

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 85
    iget v6, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->landmarkScore:F

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 86
    iget v6, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageWidth:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v6, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageHeight:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageData:[B

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageData:[B

    array-length v6, v6

    if-lez v6, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->recycle()V

    .line 93
    new-instance v6, Landroid/os/MemoryFile;

    const-string/jumbo v7, ""

    iget-object v8, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageData:[B

    array-length v8, v8

    invoke-direct {v6, v7, v8}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->mImageDataMemoryFile:Landroid/os/MemoryFile;

    .line 94
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->mImageDataMemoryFile:Landroid/os/MemoryFile;

    iget-object v7, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageData:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageData:[B

    array-length v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 95
    const-class v6, Landroid/os/MemoryFile;

    const-string/jumbo v7, "getFileDescriptor"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 96
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->mImageDataMemoryFile:Landroid/os/MemoryFile;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileDescriptor;

    .line 97
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 99
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageData:[B

    array-length v6, v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    iget v6, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imaegFormat:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v6, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageAngle:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean v6, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->isMirror:Z

    if-eqz v6, :cond_1

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 112
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->faceSize:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 113
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const-string/jumbo v6, "facebox"

    const-string/jumbo v7, "FaceDetecteFrame"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "Error pack image data:"

    aput-object v9, v8, v5

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v4, v5

    .line 111
    goto :goto_1
.end method
