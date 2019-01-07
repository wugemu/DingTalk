.class Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;
.super Ljava/lang/Object;
.source "FileVideoCapturer.java"

# interfaces
.implements Lorg/webrtc/FileVideoCapturer$VideoReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/FileVideoCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoReaderY4M"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoReaderY4M"

.field private static final Y4M_FRAME_DELIMETER:Ljava/lang/String; = "FRAME"


# instance fields
.field private ReallyY4M:Z

.field private final frameHeight:I

.field private final frameSize:I

.field private final frameWidth:I

.field private final mediaFileStream:Ljava/io/RandomAccessFile;

.field private final videoStart:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 13
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v9, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->ReallyY4M:Z

    .line 60
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v10, "r"

    invoke-direct {v8, p1, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileStream:Ljava/io/RandomAccessFile;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-boolean v8, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->ReallyY4M:Z

    if-eqz v8, :cond_1

    .line 64
    :goto_0
    iget-object v8, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 65
    .local v1, "c":I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_0

    .line 67
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Found end of file before end of header for file: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 69
    :cond_0
    const/16 v8, 0xa

    if-eq v1, v8, :cond_1

    .line 73
    int-to-char v8, v1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 76
    .end local v1    # "c":I
    :cond_1
    iget-object v8, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    iput-wide v10, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->videoStart:J

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "header":Ljava/lang/String;
    iget-boolean v8, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->ReallyY4M:Z

    if-nez v8, :cond_2

    .line 79
    move-object v4, p1

    .line 82
    :cond_2
    iget-boolean v8, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->ReallyY4M:Z

    if-eqz v8, :cond_3

    .line 83
    const-string/jumbo v8, "[ ]"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "headerTokens":[Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    .line 89
    .local v7, "w":I
    const/4 v3, 0x0

    .line 90
    .local v3, "h":I
    const-string/jumbo v2, ""

    .line 91
    .local v2, "colorSpace":Ljava/lang/String;
    array-length v10, v5

    move v8, v9

    :goto_2
    if-ge v8, v10, :cond_4

    aget-object v6, v5, v8

    .line 92
    .local v6, "tok":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 93
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 91
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 86
    .end local v1    # "c":C
    .end local v2    # "colorSpace":Ljava/lang/String;
    .end local v3    # "h":I
    .end local v5    # "headerTokens":[Ljava/lang/String;
    .end local v6    # "tok":Ljava/lang/String;
    .end local v7    # "w":I
    :cond_3
    const-string/jumbo v8, "_"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "headerTokens":[Ljava/lang/String;
    goto :goto_1

    .line 95
    .restart local v1    # "c":C
    .restart local v2    # "colorSpace":Ljava/lang/String;
    .restart local v3    # "h":I
    .restart local v6    # "tok":Ljava/lang/String;
    .restart local v7    # "w":I
    :sswitch_0
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 96
    goto :goto_3

    .line 98
    :sswitch_1
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 99
    goto :goto_3

    .line 101
    :sswitch_2
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 105
    .end local v1    # "c":C
    .end local v6    # "tok":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Color space: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v8, "420"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "420mpeg2"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 107
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Does not support any other color space than I420 or I420mpeg2"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 110
    :cond_5
    rem-int/lit8 v8, v7, 0x2

    if-eq v8, v12, :cond_6

    rem-int/lit8 v8, v3, 0x2

    if-ne v8, v12, :cond_7

    .line 111
    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Does not support odd width or height"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 113
    :cond_7
    iput v7, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->frameWidth:I

    .line 114
    iput v3, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->frameHeight:I

    .line 115
    mul-int v8, v7, v3

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->frameSize:I

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "frame dim: ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") frameSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->frameSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    return-void

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_2
        0x48 -> :sswitch_1
        0x57 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "VideoReaderY4M"

    const-string/jumbo v2, "Problem closing file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFrameHeight()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->frameHeight:I

    return v0
.end method

.method public getFrameWidth()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->frameWidth:I

    return v0
.end method

.method public getNextFrame()[B
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 120
    iget v5, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->frameSize:I

    new-array v1, v5, [B

    .line 122
    .local v1, "frame":[B
    :try_start_0
    iget-boolean v5, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->ReallyY4M:Z

    if-eqz v5, :cond_3

    .line 123
    const/4 v5, 0x6

    new-array v2, v5, [B

    .line 124
    .local v2, "frameDelim":[B
    iget-object v5, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 126
    iget-object v5, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileStream:Ljava/io/RandomAccessFile;

    iget-wide v6, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->videoStart:J

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 127
    iget-object v5, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 128
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Error looping video"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v2    # "frameDelim":[B
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "frameDelim":[B
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 132
    .local v3, "frameDelimStr":Ljava/lang/String;
    const-string/jumbo v5, "FRAME\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Frames should be delimited by FRAME plus newline, found delimter was: \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 137
    :cond_1
    iget-object v5, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 149
    .end local v2    # "frameDelim":[B
    .end local v3    # "frameDelimStr":Ljava/lang/String;
    :cond_2
    iget v5, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->frameSize:I

    new-array v4, v5, [B

    .line 150
    .local v4, "nv21Frame":[B
    iget v5, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->frameWidth:I

    iget v6, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->frameHeight:I

    invoke-static {v1, v5, v6, v4}, Lorg/webrtc/FileVideoCapturer;->nativeI420ToNV21([BII[B)V

    .line 151
    return-object v4

    .line 139
    .end local v4    # "nv21Frame":[B
    :cond_3
    iget-object v5, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 142
    iget-object v5, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileStream:Ljava/io/RandomAccessFile;

    iget-wide v6, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->videoStart:J

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 143
    iget-object v5, p0, Lorg/webrtc/FileVideoCapturer$VideoReaderY4M;->mediaFileStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 144
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Error looping video"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method
