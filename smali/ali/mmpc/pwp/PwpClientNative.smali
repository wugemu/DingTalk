.class public Lali/mmpc/pwp/PwpClientNative;
.super Ljava/lang/Object;
.source "PwpClientNative.java"


# instance fields
.field private nativeAddress:J


# direct methods
.method public constructor <init>(Lali/mmpc/pwp/PwpClientCallback;Lali/mmpc/pwp/PwpClient;II)V
    .locals 2
    .param p1, "pwpClientCallback"    # Lali/mmpc/pwp/PwpClientCallback;
    .param p2, "pwpClient"    # Lali/mmpc/pwp/PwpClient;
    .param p3, "capWidth"    # I
    .param p4, "capHeight"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lali/mmpc/pwp/PwpClientNative;->nativeAddress:J

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lali/mmpc/pwp/PwpClientNative;->create(Lali/mmpc/pwp/PwpClientCallback;Lali/mmpc/pwp/PwpClient;II)Z

    .line 18
    return-void
.end method

.method private native changePeerRenderLayout(JI)I
.end method

.method private create(Lali/mmpc/pwp/PwpClientCallback;Lali/mmpc/pwp/PwpClient;II)Z
    .locals 4
    .param p1, "pwpClientCallback"    # Lali/mmpc/pwp/PwpClientCallback;
    .param p2, "pwpClient"    # Lali/mmpc/pwp/PwpClient;
    .param p3, "capWidth"    # I
    .param p4, "capHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 41
    iget-wide v0, p0, Lali/mmpc/pwp/PwpClientNative;->nativeAddress:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0}, Lali/mmpc/pwp/PwpClientNative;->destroy()V

    .line 44
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lali/mmpc/pwp/PwpClientNative;->createNativePwpClient(Lali/mmpc/pwp/PwpClientCallback;Lali/mmpc/pwp/PwpClient;II)J

    move-result-wide v0

    iput-wide v0, p0, Lali/mmpc/pwp/PwpClientNative;->nativeAddress:J

    .line 45
    iget-wide v0, p0, Lali/mmpc/pwp/PwpClientNative;->nativeAddress:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native createNativePwpClient(Lali/mmpc/pwp/PwpClientCallback;Lali/mmpc/pwp/PwpClient;II)J
.end method

.method private destroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 49
    iget-wide v0, p0, Lali/mmpc/pwp/PwpClientNative;->nativeAddress:J

    .line 50
    .local v0, "nativeVoeAddressTemp":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lali/mmpc/pwp/PwpClientNative;->nativeAddress:J

    .line 51
    invoke-static {v0, v1}, Lali/mmpc/pwp/PwpClientNative;->destroyNativePwpClient(J)I

    .line 52
    return-void
.end method

.method private static native destroyNativePwpClient(J)I
.end method

.method public static native enableMmpcNativeLog(Ljava/lang/String;)Z
.end method

.method private native onCapturedScreenEncodedFrame(JLjava/nio/ByteBuffer;IZ)V
.end method

.method private native onCapturedScreenFrame(J[BIIII)V
.end method

.method private native startScreenCapture(JLjava/lang/String;IIIIII)I
.end method

.method private native stopScreenCapture(J)I
.end method


# virtual methods
.method public changePeerRenderLayout(Lali/mmpc/pwp/RenderLayout;)I
    .locals 3
    .param p1, "peerRenderLayout"    # Lali/mmpc/pwp/RenderLayout;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 21
    iget-wide v0, p0, Lali/mmpc/pwp/PwpClientNative;->nativeAddress:J

    invoke-virtual {p1}, Lali/mmpc/pwp/RenderLayout;->ordinal()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lali/mmpc/pwp/PwpClientNative;->changePeerRenderLayout(JI)I

    move-result v0

    return v0
.end method

.method public onCapturedScreenEncodedFrame(Ljava/nio/ByteBuffer;IZ)V
    .locals 7
    .param p1, "dataBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "dataLen"    # I
    .param p3, "isKeyFrame"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 37
    iget-wide v2, p0, Lali/mmpc/pwp/PwpClientNative;->nativeAddress:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lali/mmpc/pwp/PwpClientNative;->onCapturedScreenEncodedFrame(JLjava/nio/ByteBuffer;IZ)V

    .line 38
    return-void
.end method

.method public onCapturedScreenFrame([BIIII)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "len"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "frameFormat"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 33
    iget-wide v2, p0, Lali/mmpc/pwp/PwpClientNative;->nativeAddress:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lali/mmpc/pwp/PwpClientNative;->onCapturedScreenFrame(J[BIIII)V

    .line 34
    return-void
.end method

.method public startScreenCapture(Ljava/lang/String;IIIIII)I
    .locals 11
    .param p1, "verfCode"    # Ljava/lang/String;
    .param p2, "adaptionStrategy"    # I
    .param p3, "codecType"    # I
    .param p4, "minBitRate"    # I
    .param p5, "startBitRate"    # I
    .param p6, "maxBitRate"    # I
    .param p7, "maxFrameRate"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 25
    iget-wide v2, p0, Lali/mmpc/pwp/PwpClientNative;->nativeAddress:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lali/mmpc/pwp/PwpClientNative;->startScreenCapture(JLjava/lang/String;IIIIII)I

    move-result v0

    return v0
.end method

.method public stopScreenCapture()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 29
    iget-wide v0, p0, Lali/mmpc/pwp/PwpClientNative;->nativeAddress:J

    invoke-direct {p0, v0, v1}, Lali/mmpc/pwp/PwpClientNative;->stopScreenCapture(J)I

    move-result v0

    return v0
.end method
