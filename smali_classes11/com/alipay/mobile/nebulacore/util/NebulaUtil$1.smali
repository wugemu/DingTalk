.class final Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;
.super Ljava/lang/Object;
.source "NebulaUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->whiteScreenSnapshotUpload(Liop;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$h5Page:Liop;

.field final synthetic val$matchRatio:F

.field final synthetic val$pixelNum:I


# direct methods
.method constructor <init>(Liop;IF)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->val$h5Page:Liop;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->val$pixelNum:I

    iput p3, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->val$matchRatio:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->val$h5Page:Liop;

    invoke-static {v13}, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->takeScreenShot(Liop;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 163
    .local v11, "snapshot":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-lez v13, :cond_1

    .line 164
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-lez v13, :cond_1

    .line 165
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 166
    .local v12, "width":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 168
    .local v1, "height":I
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 169
    .local v6, "pixelArray":Landroid/util/SparseIntArray;
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 170
    .local v7, "random":Ljava/util/Random;
    const/4 v4, 0x0

    .line 171
    .local v4, "isWhiteScreen":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->val$pixelNum:I

    if-ge v2, v13, :cond_0

    .line 172
    add-int/lit8 v13, v12, -0x1

    invoke-virtual {v7, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 173
    .local v10, "randomWidth":I
    add-int/lit8 v13, v1, -0x1

    invoke-virtual {v7, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 174
    .local v8, "randomHeight":I
    invoke-virtual {v11, v10, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    .line 177
    .local v9, "randomPixel":I
    invoke-virtual {v6, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v13

    if-ltz v13, :cond_2

    .line 178
    invoke-virtual {v6, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    add-int/lit8 v5, v13, 0x1

    .line 179
    .local v5, "number":I
    invoke-virtual {v6, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    int-to-float v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->val$pixelNum:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->val$matchRatio:F

    mul-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_3

    .line 181
    const/4 v4, 0x1

    .line 182
    const-string/jumbo v13, "H5NebulaUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "isWhiteScreen = true, number : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " pixelNum * matchRatio : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->val$pixelNum:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->val$matchRatio:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v5    # "number":I
    .end local v8    # "randomHeight":I
    .end local v9    # "randomPixel":I
    .end local v10    # "randomWidth":I
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v13

    const-class v14, Lcom/alipay/mobile/nebula/provider/H5ImageUploadProvider;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ImageUploadProvider;

    .line 192
    .local v3, "imageUploadProvider":Lcom/alipay/mobile/nebula/provider/H5ImageUploadProvider;
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 193
    new-instance v13, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1$1;-><init>(Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;)V

    invoke-interface {v3, v11, v13}, Lcom/alipay/mobile/nebula/provider/H5ImageUploadProvider;->uploadImage(Landroid/graphics/Bitmap;Liok;)V

    .line 207
    .end local v1    # "height":I
    .end local v2    # "i":I
    .end local v3    # "imageUploadProvider":Lcom/alipay/mobile/nebula/provider/H5ImageUploadProvider;
    .end local v4    # "isWhiteScreen":Z
    .end local v6    # "pixelArray":Landroid/util/SparseIntArray;
    .end local v7    # "random":Ljava/util/Random;
    .end local v12    # "width":I
    :cond_1
    return-void

    .line 187
    .restart local v1    # "height":I
    .restart local v2    # "i":I
    .restart local v4    # "isWhiteScreen":Z
    .restart local v6    # "pixelArray":Landroid/util/SparseIntArray;
    .restart local v7    # "random":Ljava/util/Random;
    .restart local v8    # "randomHeight":I
    .restart local v9    # "randomPixel":I
    .restart local v10    # "randomWidth":I
    .restart local v12    # "width":I
    :cond_2
    const/4 v13, 0x1

    invoke-virtual {v6, v9, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
