.class public Lcom/alivc/component/encoder/MediaCodecData;
.super Ljava/lang/Object;
.source "MediaCodecData.java"


# annotations
.annotation runtime Lcom/alivc/component/encoder/NativeUsed;
.end annotation


# static fields
.field public static final DATA_KEY_FRAME:I = 0x3

.field public static final DATA_NORMAL_FRAME:I = 0x2

.field public static final DATA_TYPE_SPECIFIC:I = 0x1

.field public static final ERROR_CODE_OK:I = 0x0

.field public static final ERROR_CODE_TRY_AGAIN:I = 0x1

.field public static final ERROR_UNKNOWN:I = -0x1


# instance fields
.field private isEos:Z

.field private mCode:I

.field private mCodecData:Ljava/nio/ByteBuffer;

.field private mDataType:I

.field private mDts:J

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mOutputBufferId:I

.field private mPts:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    .prologue
    .line 45
    iget v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mCode:I

    return v0
.end method

.method public getCodecData()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mCodecData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDataType()I
    .locals 1
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    .prologue
    .line 36
    iget v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mDataType:I

    return v0
.end method

.method public getDts()J
    .locals 2
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mDts:J

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mCodecData:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mCodecData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    goto :goto_0
.end method

.method public getPts()J
    .locals 2
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mPts:J

    return-wide v0
.end method

.method public isEOS()Z
    .locals 1
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->isEos:Z

    return v0
.end method

.method public release()V
    .locals 4
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mOutputBufferId:I

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alivc/component/encoder/MediaCodecData;->mMediaCodec:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mOutputBufferId:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 91
    iput-object v3, p0, Lcom/alivc/component/encoder/MediaCodecData;->mMediaCodec:Landroid/media/MediaCodec;

    .line 92
    iput v2, p0, Lcom/alivc/component/encoder/MediaCodecData;->mOutputBufferId:I

    .line 94
    :cond_0
    iput-object v3, p0, Lcom/alivc/component/encoder/MediaCodecData;->mCodecData:Ljava/nio/ByteBuffer;

    .line 95
    return-void
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mCode:I

    .line 50
    return-void
.end method

.method public setCodecData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec;I)V
    .locals 0
    .param p1, "codecData"    # Ljava/nio/ByteBuffer;
    .param p2, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p3, "outputBufferId"    # I

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mCodecData:Ljava/nio/ByteBuffer;

    .line 78
    iput-object p2, p0, Lcom/alivc/component/encoder/MediaCodecData;->mMediaCodec:Landroid/media/MediaCodec;

    .line 79
    iput p3, p0, Lcom/alivc/component/encoder/MediaCodecData;->mOutputBufferId:I

    .line 80
    return-void
.end method

.method public setDataType(I)V
    .locals 0
    .param p1, "dataType"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mDataType:I

    .line 41
    return-void
.end method

.method public setDts(J)V
    .locals 1
    .param p1, "dts"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mDts:J

    .line 69
    return-void
.end method

.method public setEos(Z)V
    .locals 0
    .param p1, "eos"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/alivc/component/encoder/MediaCodecData;->isEos:Z

    .line 104
    return-void
.end method

.method public setPts(J)V
    .locals 1
    .param p1, "pts"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mPts:J

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MediaCodecData{mDataType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alivc/component/encoder/MediaCodecData;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alivc/component/encoder/MediaCodecData;->mPts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alivc/component/encoder/MediaCodecData;->mDts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
