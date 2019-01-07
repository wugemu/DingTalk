.class Lorg/webrtc/SurfaceTextureHelper$7;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/SurfaceTextureHelper;->textureToYUV(Ljava/nio/ByteBuffer;IIII[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/SurfaceTextureHelper;

.field final synthetic val$buf:Ljava/nio/ByteBuffer;

.field final synthetic val$height:I

.field final synthetic val$stride:I

.field final synthetic val$textureId:I

.field final synthetic val$transformMatrix:[F

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lorg/webrtc/SurfaceTextureHelper;Ljava/nio/ByteBuffer;IIII[F)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/SurfaceTextureHelper;

    .prologue
    .line 229
    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper$7;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    iput-object p2, p0, Lorg/webrtc/SurfaceTextureHelper$7;->val$buf:Ljava/nio/ByteBuffer;

    iput p3, p0, Lorg/webrtc/SurfaceTextureHelper$7;->val$width:I

    iput p4, p0, Lorg/webrtc/SurfaceTextureHelper$7;->val$height:I

    iput p5, p0, Lorg/webrtc/SurfaceTextureHelper$7;->val$stride:I

    iput p6, p0, Lorg/webrtc/SurfaceTextureHelper$7;->val$textureId:I

    iput-object p7, p0, Lorg/webrtc/SurfaceTextureHelper$7;->val$transformMatrix:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 232
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$7;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lorg/webrtc/SurfaceTextureHelper;->access$900(Lorg/webrtc/SurfaceTextureHelper;)Lorg/webrtc/YuvConverter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$7;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    new-instance v1, Lorg/webrtc/YuvConverter;

    invoke-direct {v1}, Lorg/webrtc/YuvConverter;-><init>()V

    invoke-static {v0, v1}, Lorg/webrtc/SurfaceTextureHelper;->access$902(Lorg/webrtc/SurfaceTextureHelper;Lorg/webrtc/YuvConverter;)Lorg/webrtc/YuvConverter;

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$7;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lorg/webrtc/SurfaceTextureHelper;->access$900(Lorg/webrtc/SurfaceTextureHelper;)Lorg/webrtc/YuvConverter;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/SurfaceTextureHelper$7;->val$buf:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/webrtc/SurfaceTextureHelper$7;->val$width:I

    iget v3, p0, Lorg/webrtc/SurfaceTextureHelper$7;->val$height:I

    iget v4, p0, Lorg/webrtc/SurfaceTextureHelper$7;->val$stride:I

    iget v5, p0, Lorg/webrtc/SurfaceTextureHelper$7;->val$textureId:I

    iget-object v6, p0, Lorg/webrtc/SurfaceTextureHelper$7;->val$transformMatrix:[F

    invoke-virtual/range {v0 .. v6}, Lorg/webrtc/YuvConverter;->convert(Ljava/nio/ByteBuffer;IIII[F)V

    .line 236
    return-void
.end method
