.class public Lorg/webrtc/GlRectDrawer;
.super Ljava/lang/Object;
.source "GlRectDrawer.java"

# interfaces
.implements Lorg/webrtc/RendererCommon$GlDrawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/GlRectDrawer$Shader;
    }
.end annotation


# static fields
.field private static final FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final OES_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

.field private static final RGB_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

.field private static final TAG:Ljava/lang/String; = "GlRectDrawer"

.field private static final VERTEX_SHADER_STRING:Ljava/lang/String; = "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n"

.field private static final YUV_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"


# instance fields
.field private final shaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/GlRectDrawer$Shader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 87
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/webrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lorg/webrtc/GlRectDrawer;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 95
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Lorg/webrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lorg/webrtc/GlRectDrawer;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    return-void

    .line 87
    .line 95
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/webrtc/GlRectDrawer;->shaders:Ljava/util/Map;

    return-void
.end method

.method private drawRectangle(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 174
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 175
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 176
    return-void
.end method

.method private prepareShader(Ljava/lang/String;[F)V
    .locals 7
    .param p1, "fragmentShader"    # Ljava/lang/String;
    .param p2, "texMatrix"    # [F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 180
    iget-object v1, p0, Lorg/webrtc/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lorg/webrtc/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/GlRectDrawer$Shader;

    .line 204
    .local v0, "shader":Lorg/webrtc/GlRectDrawer$Shader;
    :goto_0
    iget-object v1, v0, Lorg/webrtc/GlRectDrawer$Shader;->glShader:Lorg/webrtc/GlShader;

    invoke-virtual {v1}, Lorg/webrtc/GlShader;->useProgram()V

    .line 206
    iget v1, v0, Lorg/webrtc/GlRectDrawer$Shader;->texMatrixLocation:I

    invoke-static {v1, v6, v4, p2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 207
    return-void

    .line 184
    .end local v0    # "shader":Lorg/webrtc/GlRectDrawer$Shader;
    :cond_0
    new-instance v0, Lorg/webrtc/GlRectDrawer$Shader;

    invoke-direct {v0, p1}, Lorg/webrtc/GlRectDrawer$Shader;-><init>(Ljava/lang/String;)V

    .line 185
    .restart local v0    # "shader":Lorg/webrtc/GlRectDrawer$Shader;
    iget-object v1, p0, Lorg/webrtc/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v1, v0, Lorg/webrtc/GlRectDrawer$Shader;->glShader:Lorg/webrtc/GlShader;

    invoke-virtual {v1}, Lorg/webrtc/GlShader;->useProgram()V

    .line 188
    const-string/jumbo v1, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    if-ne p1, v1, :cond_1

    .line 189
    iget-object v1, v0, Lorg/webrtc/GlRectDrawer$Shader;->glShader:Lorg/webrtc/GlShader;

    const-string/jumbo v2, "y_tex"

    invoke-virtual {v1, v2}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 190
    iget-object v1, v0, Lorg/webrtc/GlRectDrawer$Shader;->glShader:Lorg/webrtc/GlShader;

    const-string/jumbo v2, "u_tex"

    invoke-virtual {v1, v2}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 191
    iget-object v1, v0, Lorg/webrtc/GlRectDrawer$Shader;->glShader:Lorg/webrtc/GlShader;

    const-string/jumbo v2, "v_tex"

    invoke-virtual {v1, v2}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 199
    :goto_1
    const-string/jumbo v1, "Initialize fragment shader uniform values."

    invoke-static {v1}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 201
    iget-object v1, v0, Lorg/webrtc/GlRectDrawer$Shader;->glShader:Lorg/webrtc/GlShader;

    const-string/jumbo v2, "in_pos"

    sget-object v3, Lorg/webrtc/GlRectDrawer;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v5, v3}, Lorg/webrtc/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 202
    iget-object v1, v0, Lorg/webrtc/GlRectDrawer$Shader;->glShader:Lorg/webrtc/GlShader;

    const-string/jumbo v2, "in_tc"

    sget-object v3, Lorg/webrtc/GlRectDrawer;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v5, v3}, Lorg/webrtc/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    goto :goto_0

    .line 192
    :cond_1
    const-string/jumbo v1, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    if-ne p1, v1, :cond_2

    .line 193
    iget-object v1, v0, Lorg/webrtc/GlRectDrawer$Shader;->glShader:Lorg/webrtc/GlShader;

    const-string/jumbo v2, "rgb_tex"

    invoke-virtual {v1, v2}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_1

    .line 194
    :cond_2
    const-string/jumbo v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    if-ne p1, v1, :cond_3

    .line 195
    iget-object v1, v0, Lorg/webrtc/GlRectDrawer$Shader;->glShader:Lorg/webrtc/GlShader;

    const-string/jumbo v2, "oes_tex"

    invoke-virtual {v1, v2}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_1

    .line 197
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown fragment shader: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public drawOes(I[FIIIIII)V
    .locals 2
    .param p1, "oesTextureId"    # I
    .param p2, "texMatrix"    # [F
    .param p3, "frameWidth"    # I
    .param p4, "frameHeight"    # I
    .param p5, "viewportX"    # I
    .param p6, "viewportY"    # I
    .param p7, "viewportWidth"    # I
    .param p8, "viewportHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const v1, 0x8d65

    .line 122
    const-string/jumbo v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    invoke-direct {p0, v0, p2}, Lorg/webrtc/GlRectDrawer;->prepareShader(Ljava/lang/String;[F)V

    .line 123
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 126
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 127
    invoke-direct {p0, p5, p6, p7, p8}, Lorg/webrtc/GlRectDrawer;->drawRectangle(IIII)V

    .line 128
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 129
    return-void
.end method

.method public drawRgb(I[FIIIIII)V
    .locals 7
    .param p1, "textureId"    # I
    .param p2, "texMatrix"    # [F
    .param p3, "frameWidth"    # I
    .param p4, "frameHeight"    # I
    .param p5, "viewportX"    # I
    .param p6, "viewportY"    # I
    .param p7, "viewportWidth"    # I
    .param p8, "viewportHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v6, 0xde1

    const/4 v5, 0x0

    .line 138
    const-string/jumbo v1, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    invoke-direct {p0, v1, p2}, Lorg/webrtc/GlRectDrawer;->prepareShader(Ljava/lang/String;[F)V

    .line 139
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 140
    invoke-static {v6, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 141
    invoke-direct {p0, p5, p6, p7, p8}, Lorg/webrtc/GlRectDrawer;->drawRectangle(IIII)V

    .line 142
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 143
    .local v0, "res":I
    if-eqz v0, :cond_0

    .line 145
    const-string/jumbo v1, "GlRectDrawer"

    const-string/jumbo v2, "drawRectangle error:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :cond_0
    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 149
    return-void
.end method

.method public drawYuv([I[FIIIIII)V
    .locals 5
    .param p1, "yuvTextures"    # [I
    .param p2, "texMatrix"    # [F
    .param p3, "frameWidth"    # I
    .param p4, "frameHeight"    # I
    .param p5, "viewportX"    # I
    .param p6, "viewportY"    # I
    .param p7, "viewportWidth"    # I
    .param p8, "viewportHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const v4, 0x84c0

    const/16 v3, 0xde1

    const/4 v2, 0x3

    .line 158
    const-string/jumbo v1, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    invoke-direct {p0, v1, p2}, Lorg/webrtc/GlRectDrawer;->prepareShader(Ljava/lang/String;[F)V

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 161
    add-int v1, v4, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 162
    aget v1, p1, v0

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0, p5, p6, p7, p8}, Lorg/webrtc/GlRectDrawer;->drawRectangle(IIII)V

    .line 166
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 167
    add-int v1, v4, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 168
    const/4 v1, 0x0

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 214
    iget-object v1, p0, Lorg/webrtc/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/GlRectDrawer$Shader;

    .line 215
    .local v0, "shader":Lorg/webrtc/GlRectDrawer$Shader;
    iget-object v2, v0, Lorg/webrtc/GlRectDrawer$Shader;->glShader:Lorg/webrtc/GlShader;

    invoke-virtual {v2}, Lorg/webrtc/GlShader;->release()V

    goto :goto_0

    .line 217
    .end local v0    # "shader":Lorg/webrtc/GlRectDrawer$Shader;
    :cond_0
    iget-object v1, p0, Lorg/webrtc/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 218
    return-void
.end method
