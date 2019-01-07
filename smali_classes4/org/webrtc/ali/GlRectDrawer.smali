.class public Lorg/webrtc/ali/GlRectDrawer;
.super Ljava/lang/Object;
.source "GlRectDrawer.java"

# interfaces
.implements Lorg/webrtc/ali/RendererCommon$GlDrawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/GlRectDrawer$Shader;
    }
.end annotation


# static fields
.field private static final FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final OES_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

.field private static final RGB_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

.field private static final VERTEX_SHADER_STRING:Ljava/lang/String; = "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n"

.field private static final YUV_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"


# instance fields
.field private final shaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/ali/GlRectDrawer$Shader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 83
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/webrtc/ali/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lorg/webrtc/ali/GlRectDrawer;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 91
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Lorg/webrtc/ali/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lorg/webrtc/ali/GlRectDrawer;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    return-void

    .line 83
    .line 91
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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/GlRectDrawer;->shaders:Ljava/util/Map;

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
    .line 165
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 166
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 167
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

    .line 171
    iget-object v1, p0, Lorg/webrtc/ali/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lorg/webrtc/ali/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/GlRectDrawer$Shader;

    .line 195
    .local v0, "shader":Lorg/webrtc/ali/GlRectDrawer$Shader;
    :goto_0
    iget-object v1, v0, Lorg/webrtc/ali/GlRectDrawer$Shader;->glShader:Lorg/webrtc/ali/GlShader;

    invoke-virtual {v1}, Lorg/webrtc/ali/GlShader;->useProgram()V

    .line 197
    iget v1, v0, Lorg/webrtc/ali/GlRectDrawer$Shader;->texMatrixLocation:I

    invoke-static {v1, v6, v4, p2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 198
    return-void

    .line 175
    .end local v0    # "shader":Lorg/webrtc/ali/GlRectDrawer$Shader;
    :cond_0
    new-instance v0, Lorg/webrtc/ali/GlRectDrawer$Shader;

    invoke-direct {v0, p1}, Lorg/webrtc/ali/GlRectDrawer$Shader;-><init>(Ljava/lang/String;)V

    .line 176
    .restart local v0    # "shader":Lorg/webrtc/ali/GlRectDrawer$Shader;
    iget-object v1, p0, Lorg/webrtc/ali/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, v0, Lorg/webrtc/ali/GlRectDrawer$Shader;->glShader:Lorg/webrtc/ali/GlShader;

    invoke-virtual {v1}, Lorg/webrtc/ali/GlShader;->useProgram()V

    .line 179
    const-string/jumbo v1, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    if-ne p1, v1, :cond_1

    .line 180
    iget-object v1, v0, Lorg/webrtc/ali/GlRectDrawer$Shader;->glShader:Lorg/webrtc/ali/GlShader;

    const-string/jumbo v2, "y_tex"

    invoke-virtual {v1, v2}, Lorg/webrtc/ali/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 181
    iget-object v1, v0, Lorg/webrtc/ali/GlRectDrawer$Shader;->glShader:Lorg/webrtc/ali/GlShader;

    const-string/jumbo v2, "u_tex"

    invoke-virtual {v1, v2}, Lorg/webrtc/ali/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 182
    iget-object v1, v0, Lorg/webrtc/ali/GlRectDrawer$Shader;->glShader:Lorg/webrtc/ali/GlShader;

    const-string/jumbo v2, "v_tex"

    invoke-virtual {v1, v2}, Lorg/webrtc/ali/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 190
    :goto_1
    const-string/jumbo v1, "Initialize fragment shader uniform values."

    invoke-static {v1}, Lorg/webrtc/ali/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 192
    iget-object v1, v0, Lorg/webrtc/ali/GlRectDrawer$Shader;->glShader:Lorg/webrtc/ali/GlShader;

    const-string/jumbo v2, "in_pos"

    sget-object v3, Lorg/webrtc/ali/GlRectDrawer;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v5, v3}, Lorg/webrtc/ali/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 193
    iget-object v1, v0, Lorg/webrtc/ali/GlRectDrawer$Shader;->glShader:Lorg/webrtc/ali/GlShader;

    const-string/jumbo v2, "in_tc"

    sget-object v3, Lorg/webrtc/ali/GlRectDrawer;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v5, v3}, Lorg/webrtc/ali/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    goto :goto_0

    .line 183
    :cond_1
    const-string/jumbo v1, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    if-ne p1, v1, :cond_2

    .line 184
    iget-object v1, v0, Lorg/webrtc/ali/GlRectDrawer$Shader;->glShader:Lorg/webrtc/ali/GlShader;

    const-string/jumbo v2, "rgb_tex"

    invoke-virtual {v1, v2}, Lorg/webrtc/ali/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_1

    .line 185
    :cond_2
    const-string/jumbo v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    if-ne p1, v1, :cond_3

    .line 186
    iget-object v1, v0, Lorg/webrtc/ali/GlRectDrawer$Shader;->glShader:Lorg/webrtc/ali/GlShader;

    const-string/jumbo v2, "oes_tex"

    invoke-virtual {v1, v2}, Lorg/webrtc/ali/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_1

    .line 188
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

    .line 118
    const-string/jumbo v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    invoke-direct {p0, v0, p2}, Lorg/webrtc/ali/GlRectDrawer;->prepareShader(Ljava/lang/String;[F)V

    .line 119
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 122
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 123
    invoke-direct {p0, p5, p6, p7, p8}, Lorg/webrtc/ali/GlRectDrawer;->drawRectangle(IIII)V

    .line 124
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 125
    return-void
.end method

.method public drawRgb(I[FIIIIII)V
    .locals 2
    .param p1, "textureId"    # I
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
    const/16 v1, 0xde1

    .line 134
    const-string/jumbo v0, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    invoke-direct {p0, v0, p2}, Lorg/webrtc/ali/GlRectDrawer;->prepareShader(Ljava/lang/String;[F)V

    .line 135
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 136
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 137
    invoke-direct {p0, p5, p6, p7, p8}, Lorg/webrtc/ali/GlRectDrawer;->drawRectangle(IIII)V

    .line 139
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 140
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

    .line 149
    const-string/jumbo v1, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    invoke-direct {p0, v1, p2}, Lorg/webrtc/ali/GlRectDrawer;->prepareShader(Ljava/lang/String;[F)V

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 152
    add-int v1, v4, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 153
    aget v1, p1, v0

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-direct {p0, p5, p6, p7, p8}, Lorg/webrtc/ali/GlRectDrawer;->drawRectangle(IIII)V

    .line 157
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 158
    add-int v1, v4, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 159
    const/4 v1, 0x0

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 205
    iget-object v1, p0, Lorg/webrtc/ali/GlRectDrawer;->shaders:Ljava/util/Map;

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

    check-cast v0, Lorg/webrtc/ali/GlRectDrawer$Shader;

    .line 206
    .local v0, "shader":Lorg/webrtc/ali/GlRectDrawer$Shader;
    iget-object v2, v0, Lorg/webrtc/ali/GlRectDrawer$Shader;->glShader:Lorg/webrtc/ali/GlShader;

    invoke-virtual {v2}, Lorg/webrtc/ali/GlShader;->release()V

    goto :goto_0

    .line 208
    .end local v0    # "shader":Lorg/webrtc/ali/GlRectDrawer$Shader;
    :cond_0
    iget-object v1, p0, Lorg/webrtc/ali/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 209
    return-void
.end method
