.class public final Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;
.super Ljava/lang/Object;
.source "CameraGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III[I)V
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "textureId"    # [I

    .prologue
    const v4, 0x812f

    const/16 v2, 0x1909

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 202
    const/4 v3, 0x1

    invoke-static {v3, p3, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 204
    aget v3, p3, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 206
    const/16 v3, 0x2802

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 207
    const/16 v3, 0x2803

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 208
    const/16 v3, 0x2801

    const/16 v4, 0x2600

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 209
    const/16 v3, 0x2800

    const/16 v4, 0x2601

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 210
    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p0

    move v4, p1

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 211
    return-void
.end method


# virtual methods
.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x1909

    const/16 v7, 0x1401

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 215
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 217
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->n(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 220
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 221
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->c(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)[I

    move-result-object v2

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 222
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    .line 226
    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->a(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v4

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    .line 227
    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->b(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v5

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    .line 230
    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->n(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)Ljava/nio/ByteBuffer;

    move-result-object v8

    move v2, v1

    move v3, v1

    .line 222
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 233
    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 234
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->d(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)[I

    move-result-object v2

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 235
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    .line 239
    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->a(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v2

    shr-int/lit8 v4, v2, 0x1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    .line 240
    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->b(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v2

    shr-int/lit8 v5, v2, 0x1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    .line 243
    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->o(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)Ljava/nio/ByteBuffer;

    move-result-object v8

    move v2, v1

    move v3, v1

    .line 235
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 246
    const v2, 0x84c2

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 247
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->e(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)[I

    move-result-object v2

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 248
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    .line 252
    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->a(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v2

    shr-int/lit8 v4, v2, 0x1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    .line 253
    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->b(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v2

    shr-int/lit8 v5, v2, 0x1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    .line 256
    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->p(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)Ljava/nio/ByteBuffer;

    move-result-object v8

    move v2, v1

    move v3, v1

    .line 248
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->q(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v0

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->r(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v2

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 268
    const/4 v0, 0x5

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 269
    return-void
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0, p2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->g(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;I)I

    .line 274
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0, p3}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->h(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;I)I

    .line 275
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->q(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->r(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v1

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 276
    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x1909

    const/4 v1, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 144
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0, v3}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->a(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;Z)Z

    .line 146
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 148
    const/16 v0, 0xde1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 149
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 150
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 151
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 152
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1167
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {}, Lhbu;->a()I

    move-result v2

    invoke-static {v0, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->a(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;I)I

    .line 1168
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->f(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->f(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v2

    const-string/jumbo v4, "vPosition"

    invoke-static {v2, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->a(ILjava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->b(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;I)I

    .line 1172
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->f(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v2

    const-string/jumbo v4, "a_texCoord"

    invoke-static {v2, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->a(ILjava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->c(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;I)I

    .line 1174
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->f(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v2

    const-string/jumbo v4, "SamplerY"

    invoke-static {v2, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->a(ILjava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->d(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;I)I

    .line 1175
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->f(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v2

    const-string/jumbo v4, "SamplerU"

    invoke-static {v2, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->a(ILjava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->e(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;I)I

    .line 1176
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->f(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v2

    const-string/jumbo v4, "SamplerV"

    invoke-static {v2, v4}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->a(ILjava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->f(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;I)I

    .line 1180
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->f(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1183
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->g(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1184
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->h(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v0

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1185
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->i(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1187
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->j(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1188
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->k(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1191
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->l(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1192
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->j(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v0

    const/16 v2, 0x1406

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->l(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)Ljava/nio/FloatBuffer;

    move-result-object v5

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1193
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->m(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1194
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->k(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v0

    const/16 v2, 0x1406

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->m(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)Ljava/nio/FloatBuffer;

    move-result-object v5

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->a(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->b(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->c(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)[I

    move-result-object v2

    invoke-static {v0, v1, v6, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a(III[I)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->a(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->b(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->d(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)[I

    move-result-object v2

    invoke-static {v0, v1, v6, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a(III[I)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->a(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->b(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->e(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;)[I

    move-result-object v2

    invoke-static {v0, v1, v6, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a(III[I)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;

    invoke-static {v0, v7}, Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;->a(Lcom/alibaba/laiwang/photokit/picker/edit/glsurface/CameraGLSurfaceView;Z)Z

    .line 163
    return-void
.end method
