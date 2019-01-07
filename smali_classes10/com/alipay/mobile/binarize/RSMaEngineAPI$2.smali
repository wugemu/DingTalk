.class Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;
.super Ljava/lang/Object;
.source "RSMaEngineAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/binarize/RSMaEngineAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/hardware/Camera;

.field final synthetic b:Landroid/graphics/Rect;

.field final synthetic c:Landroid/hardware/Camera$Size;

.field final synthetic d:I

.field final synthetic e:Lcom/alipay/mobile/binarize/RSMaEngineAPI;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/binarize/RSMaEngineAPI;Landroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->e:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    iput-object p2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->a:Landroid/hardware/Camera;

    iput-object p3, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->b:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->c:Landroid/hardware/Camera$Size;

    iput p5, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x1

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->e:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    invoke-static {v0, v1}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->b(Lcom/alipay/mobile/binarize/RSMaEngineAPI;Z)Z

    .line 169
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->e:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    invoke-static {v0}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->d(Lcom/alipay/mobile/binarize/RSMaEngineAPI;)Lcom/alipay/mobile/binarize/BinarizeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/binarize/BinarizeHandler;->isBinarizePoolEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    const-string/jumbo v0, "RSMaEngineAPI"

    const-string/jumbo v0, "rs start recognize"

    .line 1029
    sget-object v0, Liir;->a:Liir$a;

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->e:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    invoke-static {v0}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->d(Lcom/alipay/mobile/binarize/RSMaEngineAPI;)Lcom/alipay/mobile/binarize/BinarizeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/binarize/BinarizeHandler;->popFirstBinarizeResult()Lcom/alipay/mobile/binarize/BinarizeResult;

    move-result-object v8

    .line 172
    .local v8, "binarizeResult":Lcom/alipay/mobile/binarize/BinarizeResult;
    if-eqz v8, :cond_1

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->e:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    iget v1, v0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsFrameCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsFrameCount:I

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->e:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    iget-object v1, v8, Lcom/alipay/mobile/binarize/BinarizeResult;->bitMatrixData:[B

    iget-object v2, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->a:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->b:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->c:Landroid/hardware/Camera$Size;

    iget v5, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->d:I

    const/4 v6, 0x1

    iget v7, v8, Lcom/alipay/mobile/binarize/BinarizeResult;->methodId:I

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a(Lcom/alipay/mobile/binarize/RSMaEngineAPI;[BLandroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;IZI)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v10

    .line 179
    .local v10, "result":[Lcom/alipay/ma/decode/DecodeResult;
    if-eqz v10, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->e:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    invoke-static {v0, v10}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->a(Lcom/alipay/mobile/binarize/RSMaEngineAPI;[Lcom/alipay/ma/decode/DecodeResult;)[Lcom/alipay/ma/decode/DecodeResult;

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->e:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsBinarized:Z

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->e:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->b(Lcom/alipay/mobile/binarize/RSMaEngineAPI;Z)Z

    .line 183
    const-string/jumbo v0, "RSMaEngineAPI"

    const-string/jumbo v0, "recognize rs binarize code"

    .line 2029
    sget-object v0, Liir;->a:Liir$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v8    # "binarizeResult":Lcom/alipay/mobile/binarize/BinarizeResult;
    .end local v10    # "result":[Lcom/alipay/ma/decode/DecodeResult;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/binarize/RSMaEngineAPI$2;->e:Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    invoke-static {v0, v11}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->b(Lcom/alipay/mobile/binarize/RSMaEngineAPI;Z)Z

    .line 191
    return-void

    .line 186
    .restart local v8    # "binarizeResult":Lcom/alipay/mobile/binarize/BinarizeResult;
    :catch_0
    move-exception v9

    .line 187
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "RSMaEngineAPI"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "doProcessBinary exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2041
    sget-object v0, Liir;->a:Liir$a;

    goto :goto_0
.end method
