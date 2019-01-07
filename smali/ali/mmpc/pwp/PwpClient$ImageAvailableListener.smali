.class Lali/mmpc/pwp/PwpClient$ImageAvailableListener;
.super Ljava/lang/Object;
.source "PwpClient.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lali/mmpc/pwp/PwpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageAvailableListener"
.end annotation


# instance fields
.field final synthetic this$0:Lali/mmpc/pwp/PwpClient;


# direct methods
.method private constructor <init>(Lali/mmpc/pwp/PwpClient;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lali/mmpc/pwp/PwpClient$ImageAvailableListener;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lali/mmpc/pwp/PwpClient;Lali/mmpc/pwp/PwpClient$1;)V
    .locals 0
    .param p1, "x0"    # Lali/mmpc/pwp/PwpClient;
    .param p2, "x1"    # Lali/mmpc/pwp/PwpClient$1;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lali/mmpc/pwp/PwpClient$ImageAvailableListener;-><init>(Lali/mmpc/pwp/PwpClient;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 13
    .param p1, "reader"    # Landroid/media/ImageReader;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 237
    monitor-enter p0

    .line 238
    const/4 v8, 0x0

    .line 240
    .local v8, "image":Landroid/media/Image;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v8

    .line 241
    if-eqz v8, :cond_1

    .line 242
    invoke-virtual {v8}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v10

    .line 243
    .local v10, "planes":[Landroid/media/Image$Plane;
    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 244
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$ImageAvailableListener;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v0}, Lali/mmpc/pwp/PwpClient;->access$000(Lali/mmpc/pwp/PwpClient;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$ImageAvailableListener;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lali/mmpc/pwp/PwpClient;->access$002(Lali/mmpc/pwp/PwpClient;[B)[B

    .line 247
    :cond_0
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$ImageAvailableListener;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v0}, Lali/mmpc/pwp/PwpClient;->access$000(Lali/mmpc/pwp/PwpClient;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 249
    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    .line 250
    .local v9, "pixelStride":I
    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    .line 251
    .local v12, "rowStride":I
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$ImageAvailableListener;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v0}, Lali/mmpc/pwp/PwpClient;->access$100(Lali/mmpc/pwp/PwpClient;)I

    move-result v0

    mul-int/2addr v0, v9

    sub-int v11, v12, v0

    .line 253
    .local v11, "rowPadding":I
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$ImageAvailableListener;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v0}, Lali/mmpc/pwp/PwpClient;->access$100(Lali/mmpc/pwp/PwpClient;)I

    move-result v0

    div-int v1, v11, v9

    add-int v3, v0, v1

    .line 256
    .local v3, "actualWidth":I
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$ImageAvailableListener;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v0}, Lali/mmpc/pwp/PwpClient;->access$300(Lali/mmpc/pwp/PwpClient;)Lali/mmpc/pwp/PwpClientNative;

    move-result-object v0

    iget-object v1, p0, Lali/mmpc/pwp/PwpClient$ImageAvailableListener;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v1}, Lali/mmpc/pwp/PwpClient;->access$000(Lali/mmpc/pwp/PwpClient;)[B

    move-result-object v1

    iget-object v2, p0, Lali/mmpc/pwp/PwpClient$ImageAvailableListener;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v2}, Lali/mmpc/pwp/PwpClient;->access$000(Lali/mmpc/pwp/PwpClient;)[B

    move-result-object v2

    array-length v2, v2

    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$ImageAvailableListener;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v4}, Lali/mmpc/pwp/PwpClient;->access$200(Lali/mmpc/pwp/PwpClient;)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lali/mmpc/pwp/PwpClientNative;->onCapturedScreenFrame([BIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 266
    .end local v3    # "actualWidth":I
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "pixelStride":I
    .end local v10    # "planes":[Landroid/media/Image$Plane;
    .end local v11    # "rowPadding":I
    .end local v12    # "rowStride":I
    :cond_1
    if-eqz v8, :cond_2

    .line 267
    :try_start_1
    invoke-virtual {v8}, Landroid/media/Image;->close()V

    .line 270
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 263
    :catch_0
    move-exception v7

    .line 264
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 266
    if-eqz v8, :cond_2

    .line 267
    :try_start_3
    invoke-virtual {v8}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 270
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 266
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_3

    .line 267
    :try_start_4
    invoke-virtual {v8}, Landroid/media/Image;->close()V

    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
